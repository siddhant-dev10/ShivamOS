# ShivamOS - Financial & Billing Engine Rules

**Document:** Billing Rules & Financial Specifications  
**Client:** Hotel New Shivam Inn  
**Currency:** Indian Rupee (INR / ₹)  
**Precision Standard:** Integer Minor Units (Paise, where ₹1.00 = 100 paise)  
**Rounding Rule:** Round Half-Up (`Math.round` / Banker's integer rounding)  

---

## 1. Core Principle: Zero Floating-Point Arithmetic

In software handling hospitality accounting, IEEE 754 floating-point numbers (`double`, `float`) introduce catastrophic accumulation errors (e.g., `0.1 + 0.2 = 0.30000000000000004`). 

**Rule:** Throughout ShivamOS—in the database, domain logic, Drift models, and UI presentation controllers—**all monetary amounts are strictly held as 64-bit integers (`int` / `BIGINT`) representing paise**. Formatted string rendering (e.g. `₹ 2,190.00`) only occurs at the terminal presentation boundary.

---

## 2. Room Inventory & Tariff Schedule

The baseline tariffs for Hotel New Shivam Inn across all four categories:

| Category | Single Occupancy | Double Occupancy | Extra Bed / Adult |
| :--- | :--- | :--- | :--- |
| **Elegant Class** | ₹ 1,890.00 (`189000` paise) | ₹ 2,190.00 (`219000` paise) | ₹ 500.00 (`50000` paise) |
| **Royal Class** | ₹ 2,200.00 (`220000` paise) | ₹ 2,490.00 (`249000` paise) | ₹ 500.00 (`50000` paise) |
| **Corporate Class** | ₹ 2,700.00 (`270000` paise) | ₹ 3,390.00 (`339000` paise) | ₹ 600.00 (`60000` paise) |
| **Suite Room** | ₹ 4,500.00 (`450000` paise) | ₹ 5,500.00 (`550000` paise) | ₹ 800.00 (`80000` paise) |

---

## 3. Stay Duration & Billable Nights Calculation

The number of billable nights is computed based on calendar dates in the hotel's local timezone (`Asia/Kolkata`):

$$\text{Billable Nights} = \max(1, \text{checkoutDate} - \text{checkinDate})$$

### Specific Edge Policies:
1. **Same-Day Day-Use:** If a guest checks in at 10:00 AM and departs at 6:00 PM on the same date ($\text{days} = 0$), the billable nights count is clamped to **1 night minimum**.
2. **Standard Hotel Check-In / Check-Out Window:**
   - Standard Check-In: `12:00 PM`
   - Standard Check-Out: `11:00 AM`
3. **Late Check-Out Policy:**
   - Departure up to 1:00 PM: Complimentary grace period.
   - Departure between 1:00 PM and 6:00 PM: Half-day charge (50% of single occupancy tariff) added as an incidental line item.
   - Departure after 6:00 PM: Full additional night tariff applies.

---

## 4. Discounts & Approvals

Discounts can be applied as a percentage or fixed amount on gross room charges.

### Worked Example:
- **Room:** Elegant Class (Double Occupancy) = ₹ 2,190.00 (`219000` paise)
- **Discount:** 10.00%
- **Discount Amount:**
  $$\text{discountPaise} = \left\lfloor \frac{219000 \times 1000}{10000} + 0.5 \right\rfloor = 21900\text{ paise (₹ 219.00)}$$
- **Discounted Charges:**
  $$219000 - 21900 = 197100\text{ paise (₹ 1,971.00)}$$

### Authorization Safeguard:
- Receptionists may grant discounts up to **10.00%**.
- Any discount exceeding **10.00%** requires Manager or Administrator approval recorded with an audit trail entry.

---

## 5. Goods & Services Tax (GST) Calculations

### Taxable Value:
$$\text{Taxable Value} = (\text{Room Charges} + \text{Extra Beds} + \text{Incidentals}) - \text{Total Discounts}$$

### Tax Rates (Configurable Defaults):
- **Intrastate (Bihar within India):**
  - CGST: $2.50\%$ ($250$ basis points)
  - SGST: $2.50\%$ ($250$ basis points)
  - Combined Intrastate: $5.00\%$
- **Interstate (Outside Bihar):**
  - IGST: $5.00\%$ ($500$ basis points)

### Exact Integer Calculation Formula:
$$\text{cgstPaise} = \left\lfloor \frac{\text{taxablePaise} \times 250 + 5000}{10000} \right\rfloor$$
$$\text{sgstPaise} = \left\lfloor \frac{\text{taxablePaise} \times 250 + 5000}{10000} \right\rfloor$$
$$\text{totalTaxPaise} = \text{cgstPaise} + \text{sgstPaise}$$
$$\text{grandTotalPaise} = \text{taxablePaise} + \text{totalTaxPaise}$$

---

## 6. Payment Settlement & Balances

$$\text{outstandingBalancePaise} = \text{grandTotalPaise} - \sum \text{paymentsReceivedPaise} + \sum \text{refundsIssuedPaise}$$

### Rules:
1. **Advance Payments:** Recorded during reservation or check-in are linked to the guest's stay and automatically credited against the final checkout invoice.
2. **Partial Payments:** Any remaining balance is logged with an outstanding status (`partially_paid` or `unpaid`).
3. **Refunds:** Can only be processed against existing payments and cannot exceed the total amount previously paid on that invoice.

---

## 7. Indian Currency Amount in Words Engine

Every invoice must print the total payable amount in standard Indian legal format (Lakhs, Thousands, Hundreds, Rupees, and Paise).

**Algorithm:**
- Decompose paise into Rupees (`paise ~/ 100`) and Paise (`paise % 100`).
- Parse Rupee digits into Crores ($10^7$), Lakhs ($10^5$), Thousands ($10^3$), Hundreds ($10^2$), and Units.
- Example: `₹ 2,190.00` $\rightarrow$ **"Rupees Two Thousand One Hundred Ninety and Paise Zero Only"**.
- Example: `₹ 1,25,400.50` $\rightarrow$ **"Rupees One Lakh Twenty Five Thousand Four Hundred and Paise Fifty Only"**.

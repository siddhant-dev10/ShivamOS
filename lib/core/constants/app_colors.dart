import 'package:flutter/material.dart';

class AppColors {
  // Brand Foundation (Deep Navy & Midnight)
  static const Color primaryNavy = Color(0xFF0A1128);       // Foundation background / sidebar
  static const Color midnightNavy = Color(0xFF0F1E36);      // Elevated dark surfaces / headers
  static const Color surfaceNavy = Color(0xFF162544);       // Dark cards / dropdowns
  static const Color borderNavy = Color(0xFF1E3A6E);        // Subtle dark borders

  // Primary Accent (Electric Blue & Indigo)
  static const Color electricBlue = Color(0xFF2563EB);      // Primary actions / active highlights
  static const Color electricBlueHover = Color(0xFF1D4ED8); // Active hover
  static const Color electricBlueLight = Color(0xFF3B82F6); // Lighter accent / icons
  static const Color cyanAccent = Color(0xFF06B6D4);        // Trend indicators / secondary tags
  static const Color indigoAccent = Color(0xFF4F46E5);      // Deep accent

  // Light Foundation (Content Area)
  static const Color backgroundLight = Color(0xFFF8FAFC);   // Ultra-clean light surface
  static const Color backgroundSubtle = Color(0xFFF1F5F9);  // Subtle section background
  static const Color surfaceLight = Color(0xFFFFFFFF);      // Pure white cards
  static const Color surfaceDark = Color(0xFF0B132B);       // Pure dark surface

  // Room & Operational Statuses
  static const Color availableGreen = Color(0xFF10B981);    // Available (Emerald)
  static const Color availableBg = Color(0xFFECFDF5);       // Soft pill background
  
  static const Color occupiedIndigo = Color(0xFF4F46E5);    // Occupied (Indigo)
  static const Color occupiedBg = Color(0xFFEEF2FF);

  static const Color reservedAmber = Color(0xFFF59E0B);     // Reserved (Amber)
  static const Color reservedBg = Color(0xFFFFFBEB);

  static const Color cleaningOrange = Color(0xFFF97316);    // Cleaning / Dirty (Orange)
  static const Color cleaningBg = Color(0xFFFFF7ED);

  static const Color outOfServiceRed = Color(0xFFEF4444);   // Out of service (Rose Red)
  static const Color outOfServiceBg = Color(0xFFFEF2F2);

  // Status & Financial Indicators
  static const Color successEmerald = Color(0xFF059669);    // Clean / Paid / Available
  static const Color accentAmber = Color(0xFFD97706);       // Reserved / Pending Action
  static const Color dangerCrimson = Color(0xFFDC2626);     // Occupied / Overdue / Out of Service
  static const Color warningOrange = Color(0xFFEA580C);     // Cleaning Required / Partially Paid
  static const Color infoBlue = Color(0xFF2563EB);          // In Progress / Inspection
  static const Color neutralGray = Color(0xFF64748B);       // Labels / Subtle details

  // Borders & Dividers
  static const Color borderLight = Color(0xFFE2E8F0);       // Crisp light border
  static const Color borderSubtle = Color(0xFFCBD5E1);      // Focus border
  static const Color borderDark = Color(0xFF334155);

  // Text Hierarchy
  static const Color textPrimary = Color(0xFF0F172A);       // Charcoal primary text
  static const Color textSecondary = Color(0xFF475569);     // Slate secondary text
  static const Color textMuted = Color(0xFF94A3B8);         // Soft muted caption
  static const Color textLight = Color(0xFFF8FAFC);         // High contrast on dark
  static const Color textOnNavy = Color(0xFFCBD5E1);        // Sidebar secondary text

  // Glass & Shadows
  static const Color glassWhite = Color(0xCCFFFFFF);
  static const Color glassNavy = Color(0xCC0F1E36);
  static List<BoxShadow> get cardShadow => [
    const BoxShadow(
      color: Color(0x080F172A),
      blurRadius: 16,
      offset: Offset(0, 4),
      spreadRadius: 0,
    ),
    const BoxShadow(
      color: Color(0x050F172A),
      blurRadius: 4,
      offset: Offset(0, 1),
      spreadRadius: 0,
    ),
  ];

  static List<BoxShadow> get elevatedShadow => [
    const BoxShadow(
      color: Color(0x120F172A),
      blurRadius: 24,
      offset: Offset(0, 8),
      spreadRadius: -2,
    ),
  ];
}

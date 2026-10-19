class ShivamException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  ShivamException(this.message, {this.code, this.details});

  @override
  String toString() => 'ShivamException: $message (code: $code)';
}

class RoomUnavailableException extends ShivamException {
  RoomUnavailableException(super.message, {super.details})
      : super(code: 'ROOM_UNAVAILABLE');
}

class DuplicateStayException extends ShivamException {
  DuplicateStayException(super.message, {super.details})
      : super(code: 'DUPLICATE_STAY');
}

class OverlappingReservationException extends ShivamException {
  OverlappingReservationException(super.message, {super.details})
      : super(code: 'OVERLAPPING_RESERVATION');
}

class AdvanceOverRecoveryException extends ShivamException {
  AdvanceOverRecoveryException(super.message, {super.details})
      : super(code: 'ADVANCE_OVER_RECOVERY');
}

class InvoiceAlreadyLockedException extends ShivamException {
  InvoiceAlreadyLockedException(super.message, {super.details})
      : super(code: 'INVOICE_ALREADY_LOCKED');
}

class UnauthorizedDiscountException extends ShivamException {
  UnauthorizedDiscountException(super.message, {super.details})
      : super(code: 'UNAUTHORIZED_DISCOUNT');
}

class NegativeAmountException extends ShivamException {
  NegativeAmountException(super.message, {super.details})
      : super(code: 'NEGATIVE_AMOUNT');
}

class DuplicateBookingReferenceException extends ShivamException {
  DuplicateBookingReferenceException(super.message, {super.details})
      : super(code: 'DUPLICATE_BOOKING_REF');
}

class SyncException extends ShivamException {
  SyncException(super.message, {super.details})
      : super(code: 'SYNC_ERROR');
}

import 'package:flutter_test/flutter_test.dart';
import 'package:shivamos/core/errors/exceptions.dart';
import 'package:shivamos/core/services/room_service.dart';

void main() {
  group('RoomInventory and RoomService Unit Tests', () {
    test('TC-ROOM-01: Confirmed 9 Elegant Class Rooms Initialized with Correct Details', () {
      final rooms = RoomService.getConfirmedInitialRooms();
      expect(rooms.length, 9);

      final roomNumbers = rooms.map((r) => r.roomNumber).toList();
      expect(roomNumbers, containsAll(['201', '204', '205', '301', '304', '305', '401', '404', '405']));

      for (final r in rooms) {
        expect(r.categoryName, 'Elegant Class');
        expect(r.occupancyStatus, 'available');
        expect(r.housekeepingStatus, 'clean');
        expect(r.maintenanceStatus, 'normal');
        expect(r.isActive, true);
      }
    });

    test('TC-ROOM-02: Check-In Allowed Only When Clean, Available, and Normal', () {
      const readyRoom = RoomModel(
        id: '1',
        roomNumber: '201',
        floorNumber: 2,
        categoryName: 'Elegant Class',
        occupancyStatus: 'available',
        housekeepingStatus: 'clean',
        maintenanceStatus: 'normal',
      );

      expect(RoomService.canCheckIn(readyRoom), true);
      expect(() => RoomService.validateCheckInEligibility(readyRoom), returnsNormally);
    });

    test('TC-ROOM-03: Dirty Room Throws RoomUnavailableException on Check-In Attempt', () {
      const dirtyRoom = RoomModel(
        id: '2',
        roomNumber: '204',
        floorNumber: 2,
        categoryName: 'Elegant Class',
        occupancyStatus: 'available',
        housekeepingStatus: 'cleaning_required', // Needs cleaning
        maintenanceStatus: 'normal',
      );

      expect(RoomService.canCheckIn(dirtyRoom), false);
      expect(
        () => RoomService.validateCheckInEligibility(dirtyRoom),
        throwsA(isA<RoomUnavailableException>()),
      );
    });

    test('TC-ROOM-04: Out of Service Room Throws RoomUnavailableException', () {
      const outOfServiceRoom = RoomModel(
        id: '3',
        roomNumber: '205',
        floorNumber: 2,
        categoryName: 'Elegant Class',
        occupancyStatus: 'available',
        housekeepingStatus: 'clean',
        maintenanceStatus: 'out_of_service',
      );

      expect(RoomService.canCheckIn(outOfServiceRoom), false);
      expect(
        () => RoomService.validateCheckInEligibility(outOfServiceRoom),
        throwsA(isA<RoomUnavailableException>()),
      );
    });

    test('TC-ROOM-05: Checkout Transitions Occupancy to Available and Housekeeping to Cleaning Required', () {
      const occupiedRoom = RoomModel(
        id: '4',
        roomNumber: '301',
        floorNumber: 3,
        categoryName: 'Elegant Class',
        occupancyStatus: 'occupied',
        housekeepingStatus: 'clean',
        maintenanceStatus: 'normal',
      );

      final checkedOut = RoomService.transitionCheckout(occupiedRoom);
      expect(checkedOut.occupancyStatus, 'available');
      expect(checkedOut.housekeepingStatus, 'cleaning_required');
    });

    test('TC-ROOM-06: Date Overlap Detection Logic', () {
      final stayAStart = DateTime(2026, 10, 20);
      final stayAEnd = DateTime(2026, 10, 25);

      // Overlapping scenario 1: Oct 22 to Oct 27
      expect(
        RoomService.hasDateOverlap(
          startA: stayAStart,
          endA: stayAEnd,
          startB: DateTime(2026, 10, 22),
          endB: DateTime(2026, 10, 27),
        ),
        true,
      );

      // Non-overlapping scenario: Oct 25 to Oct 30 (Checkout date equals Check-in date)
      expect(
        RoomService.hasDateOverlap(
          startA: stayAStart,
          endA: stayAEnd,
          startB: DateTime(2026, 10, 25),
          endB: DateTime(2026, 10, 30),
        ),
        false,
      );

      // Non-overlapping scenario: Oct 15 to Oct 20
      expect(
        RoomService.hasDateOverlap(
          startA: stayAStart,
          endA: stayAEnd,
          startB: DateTime(2026, 10, 15),
          endB: DateTime(2026, 10, 20),
        ),
        false,
      );
    });
  });
}

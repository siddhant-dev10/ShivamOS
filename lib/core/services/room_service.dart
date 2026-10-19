import 'package:flutter/foundation.dart';
import '../constants/hotel_defaults.dart';
import '../errors/exceptions.dart';

@immutable
class RoomModel {
  final String id;
  final String roomNumber;
  final int floorNumber;
  final String categoryName;
  final String occupancyStatus; // 'available', 'reserved', 'occupied'
  final String housekeepingStatus; // 'clean', 'cleaning_required', 'cleaning_in_progress', 'inspection_required', 'ready'
  final String maintenanceStatus; // 'normal', 'maintenance_required', 'out_of_service'
  final bool isActive;
  final String? notes;

  const RoomModel({
    required this.id,
    required this.roomNumber,
    required this.floorNumber,
    required this.categoryName,
    this.occupancyStatus = 'available',
    this.housekeepingStatus = 'clean',
    this.maintenanceStatus = 'normal',
    this.isActive = true,
    this.notes,
  });

  RoomModel copyWith({
    String? id,
    String? roomNumber,
    int? floorNumber,
    String? categoryName,
    String? occupancyStatus,
    String? housekeepingStatus,
    String? maintenanceStatus,
    bool? isActive,
    String? notes,
  }) {
    return RoomModel(
      id: id ?? this.id,
      roomNumber: roomNumber ?? this.roomNumber,
      floorNumber: floorNumber ?? this.floorNumber,
      categoryName: categoryName ?? this.categoryName,
      occupancyStatus: occupancyStatus ?? this.occupancyStatus,
      housekeepingStatus: housekeepingStatus ?? this.housekeepingStatus,
      maintenanceStatus: maintenanceStatus ?? this.maintenanceStatus,
      isActive: isActive ?? this.isActive,
      notes: notes ?? this.notes,
    );
  }
}

class RoomService {
  /// Evaluates whether a room is legally and operationally ready to accept a guest check-in
  static bool canCheckIn(RoomModel room) {
    if (!room.isActive) return false;
    if (room.occupancyStatus != 'available') return false;
    if (room.maintenanceStatus != 'normal') return false;
    if (room.housekeepingStatus != 'clean' && room.housekeepingStatus != 'ready') {
      return false;
    }
    return true;
  }

  /// Asserts that a room is ready for check-in or throws a descriptive RoomUnavailableException
  static void validateCheckInEligibility(RoomModel room) {
    if (!room.isActive) {
      throw RoomUnavailableException('Room ${room.roomNumber} is deactivated.');
    }
    if (room.occupancyStatus != 'available') {
      throw RoomUnavailableException(
        'Room ${room.roomNumber} cannot be checked in because it is currently ${room.occupancyStatus.toUpperCase()}.',
      );
    }
    if (room.maintenanceStatus == 'out_of_service') {
      throw RoomUnavailableException('Room ${room.roomNumber} is OUT OF SERVICE for maintenance.');
    }
    if (room.maintenanceStatus == 'maintenance_required') {
      throw RoomUnavailableException('Room ${room.roomNumber} requires pending maintenance inspection.');
    }
    if (room.housekeepingStatus != 'clean' && room.housekeepingStatus != 'ready') {
      throw RoomUnavailableException(
        'Room ${room.roomNumber} is not ready for guest occupancy (Housekeeping Status: ${room.housekeepingStatus.toUpperCase()}). Please complete cleaning first.',
      );
    }
  }

  /// Determine if two date spans overlap: [startA, endA) and [startB, endB)
  static bool hasDateOverlap({
    required DateTime startA,
    required DateTime endA,
    required DateTime startB,
    required DateTime endB,
  }) {
    final sA = DateTime(startA.year, startA.month, startA.day);
    final eA = DateTime(endA.year, endA.month, endA.day);
    final sB = DateTime(startB.year, startB.month, startB.day);
    final eB = DateTime(endB.year, endB.month, endB.day);

    return sA.isBefore(eB) && sB.isBefore(eA);
  }

  /// Transitions a room upon successful checkout:
  /// Occupancy becomes 'available', Housekeeping becomes 'cleaning_required'
  static RoomModel transitionCheckout(RoomModel current) {
    return current.copyWith(
      occupancyStatus: 'available',
      housekeepingStatus: 'cleaning_required',
    );
  }

  /// Transitions a room upon successful check-in
  static RoomModel transitionCheckIn(RoomModel current) {
    validateCheckInEligibility(current);
    return current.copyWith(
      occupancyStatus: 'occupied',
    );
  }

  /// Generate the 9 confirmed initial Elegant Class rooms
  static List<RoomModel> getConfirmedInitialRooms() {
    return HotelDefaults.confirmedElegantRooms.map((r) {
      return RoomModel(
        id: 'room_${r['roomNumber']}',
        roomNumber: r['roomNumber'] as String,
        floorNumber: r['floor'] as int,
        categoryName: HotelDefaults.catElegant,
        occupancyStatus: 'available',
        housekeepingStatus: 'clean',
        maintenanceStatus: 'normal',
        isActive: true,
        notes: 'Confirmed Elegant Class room',
      );
    }).toList();
  }
}

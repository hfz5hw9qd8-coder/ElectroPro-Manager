// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electrician.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ElectricianAdapter extends TypeAdapter<Electrician> {
  @override
  final int typeId = 10;

  @override
  Electrician read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Electrician(
      id: fields[0] as String,
      name: fields[1] as String,
      email: fields[2] as String,
      phone: fields[3] as String,
      certificationNumber: fields[4] as String?,
      specializations: (fields[5] as List?)?.cast<String>(),
      isAvailable: fields[6] as bool,
      currentLocation: fields[7] as String?,
      latitude: fields[8] as double?,
      longitude: fields[9] as double?,
      createdAt: fields[10] as DateTime,
      totalJobsCompleted: fields[11] as int,
      averageRating: fields[12] as double,
      notes: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Electrician obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.certificationNumber)
      ..writeByte(5)
      ..write(obj.specializations)
      ..writeByte(6)
      ..write(obj.isAvailable)
      ..writeByte(7)
      ..write(obj.currentLocation)
      ..writeByte(8)
      ..write(obj.latitude)
      ..writeByte(9)
      ..write(obj.longitude)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.totalJobsCompleted)
      ..writeByte(12)
      ..write(obj.averageRating)
      ..writeByte(13)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ElectricianAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

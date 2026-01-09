// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClientAdapter extends TypeAdapter<Client> {
  @override
  final int typeId = 5;

  @override
  Client read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Client(
      id: fields[0] as String,
      name: fields[1] as String,
      company: fields[2] as String?,
      clientType: fields[3] as ClientType,
      email: fields[4] as String,
      phone: fields[5] as String,
      secondaryPhone: fields[6] as String?,
      address: fields[7] as String,
      city: fields[8] as String?,
      postalCode: fields[9] as String?,
      siret: fields[10] as String?,
      tva: fields[11] as String?,
      createdAt: fields[12] as DateTime,
      totalJobs: fields[13] as int,
      totalRevenue: fields[14] as double,
      isActive: fields[15] as bool,
      hasServiceContract: fields[16] as bool,
      contractExpiryDate: fields[17] as DateTime?,
      notes: fields[18] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Client obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.company)
      ..writeByte(3)
      ..write(obj.clientType)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.phone)
      ..writeByte(6)
      ..write(obj.secondaryPhone)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.city)
      ..writeByte(9)
      ..write(obj.postalCode)
      ..writeByte(10)
      ..write(obj.siret)
      ..writeByte(11)
      ..write(obj.tva)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.totalJobs)
      ..writeByte(14)
      ..write(obj.totalRevenue)
      ..writeByte(15)
      ..write(obj.isActive)
      ..writeByte(16)
      ..write(obj.hasServiceContract)
      ..writeByte(17)
      ..write(obj.contractExpiryDate)
      ..writeByte(18)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClientTypeAdapter extends TypeAdapter<ClientType> {
  @override
  final int typeId = 4;

  @override
  ClientType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ClientType.residential;
      case 1:
        return ClientType.commercial;
      case 2:
        return ClientType.industrial;
      default:
        return ClientType.residential;
    }
  }

  @override
  void write(BinaryWriter writer, ClientType obj) {
    switch (obj) {
      case ClientType.residential:
        writer.writeByte(0);
        break;
      case ClientType.commercial:
        writer.writeByte(1);
        break;
      case ClientType.industrial:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

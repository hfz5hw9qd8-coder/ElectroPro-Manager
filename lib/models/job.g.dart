// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JobAdapter extends TypeAdapter<Job> {
  @override
  final int typeId = 3;

  @override
  Job read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Job(
      id: fields[0] as String,
      clientId: fields[1] as String,
      title: fields[2] as String,
      description: fields[3] as String,
      serviceType: fields[4] as ServiceType,
      status: fields[5] as JobStatus,
      priority: fields[6] as JobPriority,
      scheduledDate: fields[7] as DateTime,
      startTime: fields[8] as DateTime?,
      endTime: fields[9] as DateTime?,
      address: fields[10] as String,
      city: fields[11] as String?,
      postalCode: fields[12] as String?,
      latitude: fields[13] as double?,
      longitude: fields[14] as double?,
      estimatedDuration: fields[15] as double,
      estimatedCost: fields[16] as double?,
      actualCost: fields[17] as double?,
      assignedElectricianId: fields[18] as String?,
      materials: (fields[19] as List?)?.cast<String>(),
      checklistItems: (fields[20] as List?)?.cast<String>(),
      isPaid: fields[21] as bool,
      invoiceId: fields[22] as String?,
      quoteId: fields[23] as String?,
      notes: fields[24] as String?,
      createdAt: fields[25] as DateTime,
      completedAt: fields[26] as DateTime?,
      requiresCertificate: fields[27] as bool,
      certificateNumber: fields[28] as String?,
      photos: (fields[29] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Job obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.clientId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.serviceType)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.priority)
      ..writeByte(7)
      ..write(obj.scheduledDate)
      ..writeByte(8)
      ..write(obj.startTime)
      ..writeByte(9)
      ..write(obj.endTime)
      ..writeByte(10)
      ..write(obj.address)
      ..writeByte(11)
      ..write(obj.city)
      ..writeByte(12)
      ..write(obj.postalCode)
      ..writeByte(13)
      ..write(obj.latitude)
      ..writeByte(14)
      ..write(obj.longitude)
      ..writeByte(15)
      ..write(obj.estimatedDuration)
      ..writeByte(16)
      ..write(obj.estimatedCost)
      ..writeByte(17)
      ..write(obj.actualCost)
      ..writeByte(18)
      ..write(obj.assignedElectricianId)
      ..writeByte(19)
      ..write(obj.materials)
      ..writeByte(20)
      ..write(obj.checklistItems)
      ..writeByte(21)
      ..write(obj.isPaid)
      ..writeByte(22)
      ..write(obj.invoiceId)
      ..writeByte(23)
      ..write(obj.quoteId)
      ..writeByte(24)
      ..write(obj.notes)
      ..writeByte(25)
      ..write(obj.createdAt)
      ..writeByte(26)
      ..write(obj.completedAt)
      ..writeByte(27)
      ..write(obj.requiresCertificate)
      ..writeByte(28)
      ..write(obj.certificateNumber)
      ..writeByte(29)
      ..write(obj.photos);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class JobStatusAdapter extends TypeAdapter<JobStatus> {
  @override
  final int typeId = 0;

  @override
  JobStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return JobStatus.scheduled;
      case 1:
        return JobStatus.inProgress;
      case 2:
        return JobStatus.completed;
      case 3:
        return JobStatus.cancelled;
      case 4:
        return JobStatus.onHold;
      case 5:
        return JobStatus.urgent;
      default:
        return JobStatus.scheduled;
    }
  }

  @override
  void write(BinaryWriter writer, JobStatus obj) {
    switch (obj) {
      case JobStatus.scheduled:
        writer.writeByte(0);
        break;
      case JobStatus.inProgress:
        writer.writeByte(1);
        break;
      case JobStatus.completed:
        writer.writeByte(2);
        break;
      case JobStatus.cancelled:
        writer.writeByte(3);
        break;
      case JobStatus.onHold:
        writer.writeByte(4);
        break;
      case JobStatus.urgent:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class JobPriorityAdapter extends TypeAdapter<JobPriority> {
  @override
  final int typeId = 1;

  @override
  JobPriority read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return JobPriority.low;
      case 1:
        return JobPriority.medium;
      case 2:
        return JobPriority.high;
      case 3:
        return JobPriority.urgent;
      default:
        return JobPriority.low;
    }
  }

  @override
  void write(BinaryWriter writer, JobPriority obj) {
    switch (obj) {
      case JobPriority.low:
        writer.writeByte(0);
        break;
      case JobPriority.medium:
        writer.writeByte(1);
        break;
      case JobPriority.high:
        writer.writeByte(2);
        break;
      case JobPriority.urgent:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobPriorityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ServiceTypeAdapter extends TypeAdapter<ServiceType> {
  @override
  final int typeId = 2;

  @override
  ServiceType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ServiceType.installation;
      case 1:
        return ServiceType.repair;
      case 2:
        return ServiceType.maintenance;
      case 3:
        return ServiceType.inspection;
      case 4:
        return ServiceType.upgrade;
      case 5:
        return ServiceType.panelUpgrade;
      case 6:
        return ServiceType.lighting;
      case 7:
        return ServiceType.outlet;
      case 8:
        return ServiceType.evCharger;
      case 9:
        return ServiceType.automation;
      case 10:
        return ServiceType.emergency;
      default:
        return ServiceType.installation;
    }
  }

  @override
  void write(BinaryWriter writer, ServiceType obj) {
    switch (obj) {
      case ServiceType.installation:
        writer.writeByte(0);
        break;
      case ServiceType.repair:
        writer.writeByte(1);
        break;
      case ServiceType.maintenance:
        writer.writeByte(2);
        break;
      case ServiceType.inspection:
        writer.writeByte(3);
        break;
      case ServiceType.upgrade:
        writer.writeByte(4);
        break;
      case ServiceType.panelUpgrade:
        writer.writeByte(5);
        break;
      case ServiceType.lighting:
        writer.writeByte(6);
        break;
      case ServiceType.outlet:
        writer.writeByte(7);
        break;
      case ServiceType.evCharger:
        writer.writeByte(8);
        break;
      case ServiceType.automation:
        writer.writeByte(9);
        break;
      case ServiceType.emergency:
        writer.writeByte(10);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

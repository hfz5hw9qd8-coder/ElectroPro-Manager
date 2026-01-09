// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuoteItemAdapter extends TypeAdapter<QuoteItem> {
  @override
  final int typeId = 6;

  @override
  QuoteItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuoteItem(
      description: fields[0] as String,
      quantity: fields[1] as double,
      unit: fields[2] as String,
      unitPrice: fields[3] as double,
      discount: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, QuoteItem obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.description)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.unit)
      ..writeByte(3)
      ..write(obj.unitPrice)
      ..writeByte(4)
      ..write(obj.discount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuoteItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class QuoteAdapter extends TypeAdapter<Quote> {
  @override
  final int typeId = 7;

  @override
  Quote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Quote(
      id: fields[0] as String,
      clientId: fields[1] as String,
      quoteNumber: fields[2] as String,
      createdAt: fields[3] as DateTime,
      validUntil: fields[4] as DateTime,
      items: (fields[5] as List).cast<QuoteItem>(),
      subtotal: fields[6] as double,
      tvaRate: fields[7] as double,
      tvaAmount: fields[8] as double,
      total: fields[9] as double,
      notes: fields[10] as String?,
      isAccepted: fields[11] as bool,
      acceptedAt: fields[12] as DateTime?,
      jobId: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Quote obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.clientId)
      ..writeByte(2)
      ..write(obj.quoteNumber)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.validUntil)
      ..writeByte(5)
      ..write(obj.items)
      ..writeByte(6)
      ..write(obj.subtotal)
      ..writeByte(7)
      ..write(obj.tvaRate)
      ..writeByte(8)
      ..write(obj.tvaAmount)
      ..writeByte(9)
      ..write(obj.total)
      ..writeByte(10)
      ..write(obj.notes)
      ..writeByte(11)
      ..write(obj.isAccepted)
      ..writeByte(12)
      ..write(obj.acceptedAt)
      ..writeByte(13)
      ..write(obj.jobId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

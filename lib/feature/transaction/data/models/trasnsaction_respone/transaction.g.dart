// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionAdapter extends TypeAdapter<Transaction> {
  @override
  final int typeId = 7;

  @override
  Transaction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Transaction(
      status: fields[0] as String?,
      phone: fields[1] as String?,
      amount: fields[2] as int?,
      fee: fields[3] as int?,
      total: fields[4] as int?,
      receiverName: fields[5] as String?,
      reference: fields[6] as String?,
      date: fields[7] as String?,
      type: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Transaction obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.phone)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.fee)
      ..writeByte(4)
      ..write(obj.total)
      ..writeByte(5)
      ..write(obj.receiverName)
      ..writeByte(6)
      ..write(obj.reference)
      ..writeByte(7)
      ..write(obj.date)
      ..writeByte(8)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

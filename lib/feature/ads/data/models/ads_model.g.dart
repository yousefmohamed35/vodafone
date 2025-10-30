// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdsModelAdapter extends TypeAdapter<AdsModel> {
  @override
  final int typeId = 3;

  @override
  AdsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdsModel(adsPath: fields[0] as String);
  }

  @override
  void write(BinaryWriter writer, AdsModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.adsPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extracted_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExtractedDataModelAdapter extends TypeAdapter<ExtractedDataModel> {
  @override
  final int typeId = 2;

  @override
  ExtractedDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExtractedDataModel(
      keyEn: fields[0] as String,
      keyAr: fields[1] as String,
      value: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExtractedDataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.keyEn)
      ..writeByte(1)
      ..write(obj.keyAr)
      ..writeByte(2)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExtractedDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

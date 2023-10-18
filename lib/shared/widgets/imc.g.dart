// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImcAdapter extends TypeAdapter<Imc> {
  @override
  final int typeId = 0;

  @override
  Imc read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Imc()
      .._altura = fields[1] as double
      .._peso = fields[2] as double;
  }

  @override
  void write(BinaryWriter writer, Imc obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj._id)
      ..writeByte(1)
      ..write(obj._altura)
      ..writeByte(2)
      ..write(obj._peso)
      ..writeByte(3)
      ..write(obj._data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImcAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

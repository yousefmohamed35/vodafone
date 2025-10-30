part of 'addtransactionstatic_cubit.dart';

abstract class AddtransactionstaticState {}

class AddtransactionstaticInitial extends AddtransactionstaticState {}

class Addtransactionstaticloading extends AddtransactionstaticState {}

class AddtransactionstaticSuccess extends AddtransactionstaticState {
  final String message;

  AddtransactionstaticSuccess({required this.message});
}

class AddtransactionstaticError extends AddtransactionstaticState {
  final String message;
  AddtransactionstaticError(this.message);
}

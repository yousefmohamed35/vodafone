part of 'transaction_data_cubit.dart';

abstract class TransactionDataState {}

class TransactionDataInitial extends TransactionDataState {}

class TransactionDataLoading extends TransactionDataState {}

class TransactionDataLoaded extends TransactionDataState {
  final TransactionApiModel transactions;
  TransactionDataLoaded({required this.transactions});
}

class TransactionDataError extends TransactionDataState {
  final String message;
  TransactionDataError({required this.message});
}



class TransactionNameUpdated extends TransactionDataState {
  final String message;
  TransactionNameUpdated({this.message = 'تم تحديث الاسم بنجاح'});
}
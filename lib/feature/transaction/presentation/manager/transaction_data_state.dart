part of 'transaction_data_cubit.dart';

abstract class TransactionDataState {}

class TransactionDataInitial extends TransactionDataState {}

class TransactionDataLoading extends TransactionDataState {}

class TransactionDataLoaded extends TransactionDataState {
  final List<TransactionModel> transactions;
  TransactionDataLoaded({required this.transactions});
}

class TransactionDataError extends TransactionDataState {
  final String message;
  TransactionDataError({required this.message});
}

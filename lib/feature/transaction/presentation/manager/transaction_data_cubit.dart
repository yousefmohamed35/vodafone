import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import '../../data/models/transaction_api_model/transaction_api_model.dart';
import '../../data/repos/transaction_repo.dart';

part 'transaction_data_state.dart';

class TransactionDataCubit extends Cubit<TransactionDataState> {
  final TransactionRepo transactionRepo;
  TransactionDataCubit(this.transactionRepo) : super(TransactionDataInitial());

  Future<void> getAllTransaction() async {
    emit(TransactionDataLoading());

    final transactions = await transactionRepo.getTransactionFromApi();
    transactions.fold(
      (failure) => emit(TransactionDataError(message: failure.toString())),
      (data) async {
        await SharedPrefHelper.saveAmount(double.parse(data.data!.balance!));
        emit(TransactionDataLoaded(transactions: data));
      },
    );
  }

  Future<void> updateTransactionName({
    required int transactionId,
    required String newName,
  }) async {
    emit(TransactionDataLoading());

    final result = await transactionRepo.updateTransactionName(
      transactionId: transactionId,
      newName: newName,
    );
    result.fold(
      (failure) => emit(TransactionDataError(message: failure.toString())),
      (success) => emit(TransactionNameUpdated()),
    );
  }
}

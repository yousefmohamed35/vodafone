import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/transaction.dart';

import '../../data/repos/transaction_repo.dart';

part 'transaction_data_state.dart';

class TransactionDataCubit extends Cubit<TransactionDataState> {
  final TransactionRepo transactionRepo;
  TransactionDataCubit(this.transactionRepo) : super(TransactionDataInitial());

  Future<void> getAllTransaction() async {
    emit(TransactionDataLoading());
    try {
      final transactions = transactionRepo.getAllTransaction();
      emit(TransactionDataLoaded(transactions: transactions));
    } catch (e) {
      emit(TransactionDataError(message: e.toString()));
    }
  }
}

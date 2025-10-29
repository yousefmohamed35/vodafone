import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../transaction/data/models/transaction_model.dart';
import '../../data/repo/add_transaction_repo.dart';

part 'addtransactionstatic_state.dart';

class AddtransactionstaticCubit extends Cubit<AddtransactionstaticState> {
  AddtransactionstaticCubit(this.addTransactionRepo)
    : super(AddtransactionstaticInitial());
  final AddTransactionRepo addTransactionRepo;

  Future<void> addTransaction({
    required TransactionModel transactionModel,
    required double amount,
  }) async {
    emit(Addtransactionstaticloading());
    try {
      await addTransactionRepo.addTransaction(
        transactionModel: transactionModel,
        amount: amount,
      );
      emit(AddtransactionstaticSuccess(message: 'تم الاضافة بنجاح'));
    } catch (e) {
      emit(AddtransactionstaticError(e.toString()));
    }
  }
}

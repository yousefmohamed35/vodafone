import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';
import '../../data/repo/add_transaction_repo.dart';

part 'addtransactionstatic_state.dart';

class AddtransactionstaticCubit extends Cubit<AddtransactionstaticState> {
  AddtransactionstaticCubit(this.addTransactionRepo)
    : super(AddtransactionstaticInitial());
  final AddTransactionRepo addTransactionRepo;

  Future<void> addTransaction({
    required TransactionResponse transaction,
    required double amount,
  }) async {
    emit(Addtransactionstaticloading());
    try {
      await addTransactionRepo.addTransaction(
        transaction: transaction,
        amount: amount,
      );
      emit(AddtransactionstaticSuccess(message: 'تم الاضافة بنجاح'));
    } catch (e) {
      emit(AddtransactionstaticError(e.toString()));
    }
  }
}

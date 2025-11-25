import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/add_transaction_model.dart';
import '../../data/repo/add_transaction_repo.dart';

part 'addtransactionstatic_state.dart';

class AddtransactionstaticCubit extends Cubit<AddtransactionstaticState> {
  AddtransactionstaticCubit(this.addTransactionRepo)
    : super(AddtransactionstaticInitial());
  final AddTransactionRepo addTransactionRepo;

  Future<void> addTransaction({
    required AddTransactionModel transaction,
  }) async {
    emit(Addtransactionstaticloading());
    
    final result=  await addTransactionRepo.addTransaction(
        transaction: transaction,
      );
      result.fold(
        (failure) => emit(AddtransactionstaticError(failure.message)),
        (success) => emit(AddtransactionstaticSuccess(message: 'تم الاضافة بنجاح')),
      );

  }
}

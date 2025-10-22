import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/transaction/data/repos/transaction_repo_impl.dart';
import 'package:vodafon/feature/transaction/presentation/manager/transaction_data_cubit.dart';
import 'widgets/transaction_view_body.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key, required this.amount});
  final double amount;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TransactionDataCubit(TransactionRepoImpl())..getAllTransaction(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<TransactionDataCubit, TransactionDataState>(
          builder: (context, state) {
            if (state is TransactionDataLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is TransactionDataLoaded) {
              return TransactionViewBody(
                transactions: state.transactions.reversed.toList(),
                amount: amount,
              );
            }
            if (state is TransactionDataError) {
              return Center(child: Text(state.message));
            }
            return const Center(child: Text('حدث شئ خاطئ'));
          },
        ),
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:money_manager/Features/transaction/Presentation/bloc/transaction_event.dart';
import 'package:money_manager/Features/transaction/Presentation/bloc/transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(IndexInitial());
}

// void _onIndexClicked(IndexClicked event, Emitter<IndexLoaded> emit) {}

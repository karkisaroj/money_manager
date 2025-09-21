sealed class TransactionState {}

class IndexInitial extends TransactionState {}

class IndexLoading extends TransactionState {}

class IndexLoaded extends TransactionState {}

class IndexError extends TransactionState {}

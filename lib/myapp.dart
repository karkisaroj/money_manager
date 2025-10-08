import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/Main/home_screen.dart';
import 'Features/Accounts/Presentation/bloc/accounts_bloc.dart';
import 'Features/Stats/Presentation/bloc/stats_bloc.dart';
import 'Features/transaction/Presentation/bloc/transaction_bloc.dart';
import 'Features/Configuration/Presentation/bloc/configuration_bloc.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AccountsBloc()),
        BlocProvider(create: (_) => StatsBloc()),
        BlocProvider(create: (_) => TransactionBloc()),
        BlocProvider(create: (_) => ConfigurationBloc()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

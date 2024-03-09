import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/ui/navigation/cubit/router_manager.dart';
import 'package:pragma/my_app.dart';

class ProviderBloc extends StatelessWidget {
  const ProviderBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RouterManager(),
      child: const MyApp(),
    );
  }
}

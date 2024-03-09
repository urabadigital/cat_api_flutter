import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/ui/home/view/home_view.dart';
import 'package:pragma/ui/navigation/cubit/router_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const String path = '/splash';
  static const String name = 'splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<void> _waitAndPush() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      context.read<RouterManager>().go(HomeView.path);
    }
  }

  @override
  void initState() {
    _waitAndPush();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 140),
            const Text(
              'Catbreeds',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(),
            const SizedBox(height: 100),
            Image.asset(
              'assets/img/cat.png',
              width: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

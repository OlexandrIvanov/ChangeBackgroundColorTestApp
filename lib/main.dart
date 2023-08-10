import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test/config/theme/app_themes.dart';
import 'package:solid_software_test/features/background_changes/presentation/bloc/change_background_color_bloc.dart';
import 'package:solid_software_test/features/background_changes/presentation/pages/change_background_color_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myAppTheme(),
      home: BlocProvider(
        create: (context) => ChangeBackgroundColorBloc(),
        child: const ChangeBackgroundColorPage(),
      ),
    );
  }
}

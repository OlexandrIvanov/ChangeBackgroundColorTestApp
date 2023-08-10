import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test/features/background_changes/presentation/bloc/change_background_color_bloc.dart';

class ChangeBackgroundColorPage extends StatelessWidget {
  const ChangeBackgroundColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeBackgroundColorBloc, ChangeBackgroundColorState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          backgroundColor: state is BackgroundColorChangedState ? state.color: Colors.white,
          body: InkWell(
              onTap: () => context.read<ChangeBackgroundColorBloc>().add(BackgroundColorChangeEvent()),
              child: const Center(
                child: Text("Hello there"),
              )),
        );
      },
    );
  }
}

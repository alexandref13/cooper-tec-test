import 'package:flutter/material.dart';

import '../themes/default/default_pallete.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: PalleteColor.mainColor),
      ),
    );
  }
}

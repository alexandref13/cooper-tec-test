import 'package:cooper_tec_test/app/shared/themes/default/default_pallete.dart';
import 'package:flutter/material.dart';

class BoxSearchWidget extends StatelessWidget {
  final TextEditingController textController;
  final VoidCallback onPressed;

  const BoxSearchWidget({
    super.key,
    required this.textController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Nome do livro',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 50,
          height: 40,
          decoration: BoxDecoration(
            color: PalleteColor.sucess,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.search,
              color: PalleteColor.white,
            ),
          ),
        )
      ],
    );
  }
}

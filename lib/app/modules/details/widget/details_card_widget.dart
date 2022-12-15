import 'package:cooper_tec_test/app/shared/themes/default/default_fonts_style.dart';
import 'package:flutter/cupertino.dart';

class DetailsCardWidget extends StatelessWidget {
  final String authors;
  final String publishedDate;
  final String categories;
  const DetailsCardWidget(
      {super.key,
      required this.authors,
      required this.publishedDate,
      required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Autores: ',
              style: DefaultFontStyle.headingXSmall.getText,
            ),
            Flexible(child: Text(authors))
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Data de publicação: ',
              style: DefaultFontStyle.headingXSmall.getText,
            ),
            Text(publishedDate)
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Categoria: ',
              style: DefaultFontStyle.headingXSmall.getText,
            ),
            Text(categories)
          ],
        ),
      ],
    );
  }
}

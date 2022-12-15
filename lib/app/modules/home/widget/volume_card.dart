import 'package:cooper_tec_test/app/shared/themes/default/default_fonts_style.dart';
import 'package:cooper_tec_test/app/shared/themes/default/default_pallete.dart';
import 'package:flutter/material.dart';

import '../../../shared/helpers/cached_image_widget.dart';

class VolumeCardWidget extends StatefulWidget {
  final String title;
  final String? description;
  final String? imageUrl;
  final VoidCallback onTap;

  const VolumeCardWidget({
    super.key,
    required this.title,
    this.description = "Não há descrição",
    required this.imageUrl,
    required this.onTap,
  });

  @override
  State<VolumeCardWidget> createState() => _VolumeCardWidgetState();
}

class _VolumeCardWidgetState extends State<VolumeCardWidget> {
  var isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        onTap: widget.onTap,
        leading: CachedNetworkImageWidget(
          image: widget.imageUrl!,
        ),

        // NOTE -> Não consegui visualizar um layout onde eu poderia colocar o nome do autor sem ficar feio

        title: Text(
          widget.title,
          style: DefaultFontStyle.headingXSmall.getText,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          widget.description!,
          style: widget.description == "Não há descrição"
              ? DefaultFontStyle.paragraphSmall.getText.copyWith(
                  color: PalleteColor.warning,
                )
              : DefaultFontStyle.paragraphSmall.getText,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: Icon(
            isFavorite ? Icons.star : Icons.star_border_outlined,
            color: isFavorite ? PalleteColor.info : PalleteColor.grayPrimary,
          ),
        ),
      ),
    );
  }
}

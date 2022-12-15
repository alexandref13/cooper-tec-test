import 'package:cooper_tec_test/app/modules/details/widget/details_card_widget.dart';
import 'package:cooper_tec_test/app/modules/home/models/volume_info_model.dart';
import 'package:flutter/material.dart';

import '../../shared/helpers/cached_image_widget.dart';

class DetailsPage extends StatelessWidget {
  final VolumeInfoModel detailsVolume;
  const DetailsPage({super.key, required this.detailsVolume});

  @override
  Widget build(BuildContext context) {
    // NOTE -> Como são arrays eu uso o Join para juntar e separar por virgulas
    final authors = detailsVolume.authors?.join(', ');
    final categories = detailsVolume.categories?.join(', ');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImageWidget(
              image: detailsVolume.imageLinks!.thumbnail!,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * .4,
              width: double.infinity,
              borderRadius: 0,
            ),
            DetailsCardWidget(
              authors: authors ?? "",
              publishedDate: detailsVolume.publishedDate ?? "",
              categories: categories ?? "",
            )
          ],
        ),
      ),
    );
  }
}

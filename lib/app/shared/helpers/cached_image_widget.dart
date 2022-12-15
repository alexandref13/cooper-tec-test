import 'package:cached_network_image/cached_network_image.dart';
import 'package:cooper_tec_test/app/shared/widget/loading_widget.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String image;
  final BoxFit? fit;
  const CachedNetworkImageWidget({
    Key? key,
    required this.image,
    this.width = 60,
    this.height = 65,
    this.borderRadius = 10,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      placeholder: (context, url) => const LoadingWidget(),
      errorWidget: (context, url, error) => Container(
        alignment: Alignment.center,
        child: const Text('erro'),
      ),
    );
  }
}

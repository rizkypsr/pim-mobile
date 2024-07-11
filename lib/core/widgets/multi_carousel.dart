import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:pim_mobile/core/commons/ui_colors.dart';

class MultiCarousel extends StatelessWidget {
  const MultiCarousel({
    super.key,
    required this.link,
    required this.images,
    this.player,
  });

  final String link;
  final List<String> images;
  final Widget? player;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (var image in images)
          Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FullScreenWidget(
                  disposeLevel: DisposeLevel.Low,
                  child: Center(
                    child: Hero(
                      tag: image,
                      child: CachedNetworkImage(
                        imageUrl: image,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                            color: UIColor.blue,
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        height: 280,
                        width: double.infinity,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        player != null
            ? Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: player,
              )
            : const SizedBox(),
      ],
      options: CarouselOptions(
        height: 280,
        enableInfiniteScroll: true,
        viewportFraction: 1,
        enlargeCenterPage: true,
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pim_mobile/core/commons/ui_colors.dart';
import 'package:pim_mobile/core/extensions/locale_phone.dart';
import 'package:pim_mobile/core/widgets/main_app_bar.dart';
import 'package:pim_mobile/core/widgets/multi_carousel.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';
import 'package:pim_mobile/features/showrooms/presentations/widgets/car_list_section.dart';
import 'package:pim_mobile/features/showrooms/presentations/widgets/showroom_description_section.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShowroomDetailScreen extends ConsumerStatefulWidget {
  const ShowroomDetailScreen({super.key, required this.showroom});

  final ShowroomEntity showroom;

  @override
  ConsumerState<ShowroomDetailScreen> createState() =>
      _ShowroomDetailScreenState();
}

class _ShowroomDetailScreenState extends ConsumerState<ShowroomDetailScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    if (widget.showroom.video != null) {
      _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.showroom.video!)!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          disableDragSeek: true,
        ),
      );
    }
  }

  Future<void> _launchUrl(String? phone) async {
    if (phone != null) {
      String localePhone = phone.toLocale();

      String text = 'Halo, saya ingin bertanya tentang showroom ini.';
      String url = "https://wa.me/$localePhone?text=${Uri.parse(text)}";

      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // final carsRef = ref.watch(carByShowroomProvider(widget.showroom.id));

    if (widget.showroom.video == null) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: UIColor.black,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              _launchUrl(widget.showroom.whatsappNumber);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: UIColor.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.message_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Whatsapp',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 280,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                ),
                items: widget.showroom.images.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl: image,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                value: downloadProgress.progress,
                                color: UIColor.blue,
                              ),
                            ),
                            errorWidget: (context, url, error) => const Center(
                              child: Icon(Icons.error),
                            ),
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
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),
              ShowroomDescriptionSection(
                showroom: widget.showroom,
              ),
              const SizedBox(height: 24),
              Container(
                height: 300,
                color: Colors.white,
                child: CarListSection(
                  showroomId: widget.showroom.id,
                  cars: widget.showroom.cars,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: const MainAppBar.light(title: "Detail Showroom"),
            bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              elevation: 0,
              height: 70,
              child: PrimaryButton(
                onPressed: () {
                  _launchUrl(widget.showroom.whatsappNumber);
                },
                icon: Icons.message_rounded,
                label: 'Whatsapp',
              ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MultiCarousel(
                    link: widget.showroom.video!,
                    images: widget.showroom.images,
                    player: player,
                  ),
                  const SizedBox(height: 24),
                  ShowroomDescriptionSection(
                    showroom: widget.showroom,
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 300,
                    color: Colors.white,
                    child: CarListSection(
                      showroomId: widget.showroom.id,
                      cars: widget.showroom.cars,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

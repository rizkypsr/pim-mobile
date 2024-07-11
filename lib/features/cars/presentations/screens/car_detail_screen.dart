import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/widgets/main_app_bar.dart';
import 'package:pim_mobile/core/widgets/multi_carousel.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/cars/presentations/widgets/car_description_section.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CarDetailScreen extends StatefulWidget {
  const CarDetailScreen({super.key, required this.car});

  final CarEntity car;

  @override
  State<CarDetailScreen> createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends State<CarDetailScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    if (widget.car.video != null) {
      _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.car.video!)!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          disableDragSeek: true,
        ),
      );
    }
  }

  Future<void> _launchUrl(String? phone) async {
    String text = 'Halo, saya tertarik dengan mobil ini.';
    String androidUrl = "whatsapp://send?phone=$phone&text=$text";
    String iosUrl = "https://wa.me/$phone?text=${Uri.parse(text)}";
    String webUrl = 'https://api.whatsapp.com/send/?phone=$phone&text=$text';

    try {
      if (Platform.isIOS) {
        if (await canLaunchUrl(Uri.parse(iosUrl))) {
          await launchUrl(Uri.parse(iosUrl));
        }
      } else {
        if (await canLaunchUrl(Uri.parse(androidUrl))) {
          await launchUrl(Uri.parse(androidUrl));
        }
      }
    } catch (e) {
      await launchUrl(Uri.parse(webUrl), mode: LaunchMode.externalApplication);
    }
  }

  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    if (widget.car.video == null) {
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
                _launchUrl(widget.car.whatsappNumber);
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
              )),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MultiCarousel(
                link: widget.car.video!,
                images: widget.car.images,
              ),
              const SizedBox(height: 24),
              CarDescriptionSection(
                car: widget.car,
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
          appBar: const MainAppBar.light(title: "Detail Mobil"),
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            elevation: 0,
            height: 70,
            child: PrimaryButton(
              onPressed: () {
                _launchUrl(widget.car.whatsappNumber);
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
                  link: widget.car.video!,
                  images: widget.car.images,
                  player: player,
                ),
                const SizedBox(height: 24),
                CarDescriptionSection(
                  car: widget.car,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

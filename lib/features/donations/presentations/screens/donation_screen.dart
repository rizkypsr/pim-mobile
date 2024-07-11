import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/widgets/error_box.dart';
import 'package:pim_mobile/core/widgets/main_app_bar.dart';
import 'package:pim_mobile/core/widgets/multi_carousel.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';
import 'package:pim_mobile/features/donations/presentations/donations_notifier.dart';
import 'package:pim_mobile/features/donations/presentations/widgets/donation_description_section.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DonationScreen extends ConsumerWidget {
  DonationScreen({super.key});

  late YoutubePlayerController _controller;

  Future<void> _launchUrl(String? phone) async {
    String text = 'Halo, saya tertarik dengan donasi ini';
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donationRef = ref.watch(donationsProvider);

    // initialize youtube player controller when donation get loaded
    return donationRef.when(
      data: (donation) {
        _controller = YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(donation.video!)!,
          flags: const YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
            disableDragSeek: true,
          ),
        );

        return YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
          ),
          builder: (context, player) {
            return Scaffold(
              appBar: const MainAppBar.light(title: "Yuk Donasi"),
              bottomNavigationBar: BottomAppBar(
                color: Colors.white,
                elevation: 0,
                height: 70,
                child: PrimaryButton(
                  onPressed: () {
                    _launchUrl(donation.whatsappNumber);
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
                      link: donation.video!,
                      images: donation.images!,
                      player: player,
                    ),
                    const SizedBox(height: 24),
                    DonationDescriptionSection(
                      donation: donation,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      loading: () {
        return const Scaffold(
          appBar: MainAppBar.light(title: "Yuk Donasi"),
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          appBar: const MainAppBar.light(title: "Yuk Donasi"),
          body: ErrorBox(message: (error as Failure).message),
        );
      },
    );
  }
}

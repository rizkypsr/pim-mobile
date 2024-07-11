import 'package:flutter/material.dart';
import 'package:pim_mobile/features/home/domain/entities/service_entity.dart';
import 'package:pim_mobile/features/home/presentations/widgets/service_button.dart';

class ServiceMenu extends StatelessWidget {
  ServiceMenu({super.key});

  final List<ServiceEntity> services = [
    const ServiceEntity(
      title: 'Layanan Cari Mobil',
      description: 'Mobil Murah, Dekat, dan Terpercaya: Temukan di Sini! Jual ',
      image: 'carimobil.png',
    ),
    const ServiceEntity(
      title: 'Layanan Service ke Rumah',
      description:
          'Panggilan Servis Mobil: Layanan Praktis di Depan Pintu Anda!',
      image: 'servis.png',
    ),
    const ServiceEntity(
      title: 'Layanan Jual Mobil',
      description: 'Mobil Jadi Mudah: Info kan Mobil Anda, Sisanya Kami Urus!',
      image: 'jualmobil.png',
    ),
    const ServiceEntity(
      title: 'Layanan Inspeksi Mobil',
      description: 'Inspeksi 64 Titik: Jaminan Mobil Impian Anda!',
      image: 'inspeksi.png',
    ),
    const ServiceEntity(
      title: 'Layanan Konsultasi Mobil',
      description:
          'Temukan Jawaban untuk Semua Pertanyaan Mobil Anda: Konsultasi Ahli, Mudah dan Terpercaya!',
      image: 'konsultasi.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ServiceButton(
          service: services[index],
        );
      },
    );
  }
}

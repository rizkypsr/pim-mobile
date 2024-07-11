extension ServiceType on String {
  String get serviceType {
    switch (this) {
      case 'Layanan Cari Mobil':
        return 'find_car';
      case 'Layanan Service ke Rumah':
        return 'service';
      case 'Layanan Jual Mobil':
        return 'sale';
      case 'Layanan Inspeksi Mobil':
        return 'inspection';
      default:
        throw Exception('Service type not found');
    }
  }
}

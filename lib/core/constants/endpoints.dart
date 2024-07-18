class Endpoints {
  // static const String baseUrl = 'http://pim-admin.test/api';
  static const String baseUrl = 'https://pim.koneksiku.my.id/api';
  static const String getCars = '/cars';
  static const String getCarsByShowroomId = '/car/showroom/';
  static const String getShowrooms = '/showrooms';
  static const String getCities = '/cities';
  static const String getDonations = '/donations';
  static const String submitService = '/service';

  static String getPath(String endpoint, {String? query}) =>
      '$baseUrl$endpoint?$query';
}

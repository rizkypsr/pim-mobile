import 'package:go_router/go_router.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/cars/presentations/screens/car_detail_screen.dart';
import 'package:pim_mobile/features/cars/presentations/screens/cars_screen.dart';
import 'package:pim_mobile/features/donations/presentations/screens/donation_screen.dart';
import 'package:pim_mobile/features/home/presentations/home_screen.dart';
import 'package:pim_mobile/features/home/presentations/service_form_screen.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';
import 'package:pim_mobile/features/showrooms/presentations/screens/showroom_car_screen.dart';
import 'package:pim_mobile/features/showrooms/presentations/screens/showroom_detail_screen.dart';
import 'package:pim_mobile/features/showrooms/presentations/screens/showrooms_screen.dart';

class Routes {
  static const String home = '/';
  static const String cars = '/cars';
  static const String carDetail = '/car-detail';
  static const String showrooms = '/showrooms';
  static const String showroomDetail = '/showroom-detail';
  static const String showroomCars = '/showroom-cars';
  static const String serviceForm = '/service-form';
  static const String donations = '/donations';
  static const String notFound = '/not-found';

  static var router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: cars,
        builder: (context, state) => const CarsScreen(),
      ),
      GoRoute(
        path: carDetail,
        builder: (context, state) {
          final car = state.extra as CarEntity;

          return CarDetailScreen(car: car);
        },
      ),
      GoRoute(
        path: showrooms,
        builder: (context, state) => const ShowroomsScreen(),
      ),
      GoRoute(
        path: showroomDetail,
        builder: (context, state) {
          final showroom = state.extra as ShowroomEntity;

          return ShowroomDetailScreen(showroom: showroom);
        },
      ),
      GoRoute(
        path: showroomCars,
        builder: (context, state) {
          final showroomId = state.extra as int;

          return ShowroomCarScreen(showroomId: showroomId);
        },
      ),
      GoRoute(
          path: serviceForm,
          builder: (context, state) {
            final label = state.extra as String;

            return ServiceFormScreen(label: label);
          }),
      GoRoute(
        path: donations,
        builder: (context, state) => DonationScreen(),
      ),
    ],
  );
}

import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';

abstract class ServiceRepository {
  Future<Either<Failure, String>> submitService(
    int cityId,
    String name,
    String address,
    String phone,
    String serviceType,
    String carDescription,
  );
}

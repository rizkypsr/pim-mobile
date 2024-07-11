import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/network/failure.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';

abstract class CarRepository {
  Future<Either<Failure, List<CarEntity>>> getCars(
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId, {
    String? sort,
  });

  Future<Either<Failure, List<CarEntity>>> getCarsByShowroomId(
    int? showroomId,
    int? minPrice,
    int? maxPrice,
    String? brandName,
    String? year,
    int? cityId, {
    String? sort,
  });
}

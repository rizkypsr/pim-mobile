import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';

abstract class ShowroomRepository {
  Future<Either<Failure, List<ShowroomEntity>>> getShowrooms(
    String? showroomName,
  );

  Future<Either<Failure, List<CarEntity>>> getCarsByShowroomId(
    int? showroomId,
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId,
    String? sort,
  );
}

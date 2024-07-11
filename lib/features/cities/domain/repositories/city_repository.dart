import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cities/domain/entities/city_entity.dart';

abstract class CityRepository {
  Future<Either<Failure, List<CityEntity>>> getCities();
}

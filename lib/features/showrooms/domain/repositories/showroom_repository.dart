import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';

abstract class ShowroomRepository {
  Future<Either<Failure, List<ShowroomEntity>>> getShowrooms();
}

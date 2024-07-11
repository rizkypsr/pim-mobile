import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/showrooms/data/repositories/showroom_repository_impl.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';
import 'package:pim_mobile/features/showrooms/domain/repositories/showroom_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_showrooms.g.dart';

class GetShowroomUsecase implements UseCase<ShowroomEntity, NoParams> {
  final ShowroomRepository repository;

  GetShowroomUsecase({required this.repository});

  @override
  Future<Either<Failure, List<ShowroomEntity>>> call(NoParams params) {
    return repository.getShowrooms();
  }
}

@riverpod
GetShowroomUsecase getShowroomUsecase(GetShowroomUsecaseRef ref) {
  return GetShowroomUsecase(
    repository: ref.read(showroomRepositoryProvider),
  );
}

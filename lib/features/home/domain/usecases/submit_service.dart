import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/home/data/repositories/service_repository_impl.dart';
import 'package:pim_mobile/features/home/domain/params/submit_service_params.dart';
import 'package:pim_mobile/features/home/domain/repositories/service_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'submit_service.g.dart';

class SubmitServiceUsecase implements UseCase<String, SubmitServiceParams> {
  final ServiceRepository repository;

  SubmitServiceUsecase({required this.repository});

  @override
  Future<Either<Failure, String>> call(int? id, SubmitServiceParams params) {
    return repository.submitService(
      params.cityId!,
      params.name!,
      params.address!,
      params.phone!,
      params.serviceType!,
      params.carDescription!,
    );
  }
}

@riverpod
SubmitServiceUsecase submitServiceUseCase(SubmitServiceUseCaseRef ref) {
  return SubmitServiceUsecase(
    repository: ref.read(serviceRepositoryProvider),
  );
}

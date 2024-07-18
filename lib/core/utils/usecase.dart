import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pim_mobile/core/core.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, dynamic>> call(int? id, Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/donations/domain/entities/donation_entity.dart';

abstract class DonationRepository {
  Future<Either<Failure, DonationEntity>> getDonations();
}

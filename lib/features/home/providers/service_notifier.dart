import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pim_mobile/features/home/domain/params/submit_service_params.dart';
import 'package:pim_mobile/features/home/domain/usecases/submit_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_notifier.g.dart';

@riverpod
class ServiceNotifier extends _$ServiceNotifier {
  @override
  Future<void> build() async {}

  Future<void> submitService(
    int cityId,
    String name,
    String address,
    String phone,
    String serviceType,
    String carDescription,
  ) async {
    state = const AsyncValue.loading();

    final params = SubmitServiceParams(
      cityId: cityId,
      name: name,
      address: address,
      phone: phone,
      serviceType: serviceType,
      carDescription: carDescription,
    );

    final submitServiceUsecase =
        await ref.read(submitServiceUseCaseProvider).call(null, params);

    submitServiceUsecase.fold((failure) {
      Fluttertoast.showToast(
        msg: 'Gagal mengirimkan data',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
      );
    }, (data) {
      state = AsyncValue.data(data);

      Fluttertoast.showToast(
        msg: data,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    });
  }
}

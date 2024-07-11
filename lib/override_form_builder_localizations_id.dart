import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class OverrideFormBuilderLocalizationsId
    extends FormBuilderLocalizationsImplId {
  OverrideFormBuilderLocalizationsId();

  static const LocalizationsDelegate<FormBuilderLocalizationsImpl> delegate =
      _LocalizationsDelegate();

  static const List<Locale> supportedLocales = [Locale('id')];

  // Override a field and return your translation.
  @override
  String get requiredErrorText => 'Data tidak boleh kosong';

  @override
  String get matchErrorText => 'Format tidak sesuai';
}

class _LocalizationsDelegate
    extends LocalizationsDelegate<FormBuilderLocalizationsImpl> {
  const _LocalizationsDelegate();

  @override
  Future<FormBuilderLocalizationsImpl> load(Locale locale) {
    final instance = OverrideFormBuilderLocalizationsId();
    // IMPORTANT!! must to invoke setCurrentInstance()
    FormBuilderLocalizations.setCurrentInstance(instance);
    return SynchronousFuture<FormBuilderLocalizationsImpl>(instance);
  }

  @override
  bool isSupported(Locale locale) =>
      OverrideFormBuilderLocalizationsId.supportedLocales.contains(locale);

  @override
  bool shouldReload(_LocalizationsDelegate old) => false;
}

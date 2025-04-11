
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en'));

  void switchToEnglish() => emit(const Locale('en'));
  void switchToFrench() => emit(const Locale('fr'));
  void switchLocale(Locale locale) => emit(locale);
}
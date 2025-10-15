import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:football_app/core/helpers/shared_prefs_helper.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState.initial()) {
    on<ChangeLanguageEvent>(_onChangeLanguage);
  }

  Future<void> _onChangeLanguage(
    ChangeLanguageEvent event,
    Emitter<AccountState> emit,
  ) async {
    await SharedPrefsHelper.saveLocale(event.languageCode);    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (event.languageCode == "en") {
        appKey.currentState?.setLocale(const Locale('en'));
      } else {
        appKey.currentState?.setLocale(const Locale('ar'));
      }
    });
    
    emit(AccountState.languageChanged(event.languageCode));
  }
}
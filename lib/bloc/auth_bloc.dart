import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<LoginRequested>(_loginRequested);
    on<LogoutRequested>(_logoutRequested);
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);

    print("$change");
  }
}

FutureOr<void> _loginRequested(LoginRequested event, Emitter<AuthState> emit) {
  if (event.password.length < 4) {
    emit(AuthfailureState(error: "Password length is less than 4"));
  } else {
    emit(AuthsuccessState());
  }
}

FutureOr<void> _logoutRequested(
    LogoutRequested event, Emitter<AuthState> emit) {
  emit(AuthInitialState());
}

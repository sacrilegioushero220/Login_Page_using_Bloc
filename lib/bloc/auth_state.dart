part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthInitialState extends AuthState {}

final class AuthloadingState extends AuthState {}

final class AuthsuccessState extends AuthState {}

final class AuthfailureState extends AuthState {
  final String error;

  AuthfailureState({required this.error});
}

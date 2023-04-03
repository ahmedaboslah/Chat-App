part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoginInitial extends AuthState {}
class LoginSuccess extends AuthState {}
class LoginFailed extends AuthState {
  String errmessage;
  LoginFailed({required this.errmessage});
}
class LoginLoading extends AuthState {}

class RegisterCubitInitial extends AuthState {}
class RegisterCubitSuccess extends AuthState {}
class RegisterCubitFailed extends AuthState {
  String ERRmessage;
  RegisterCubitFailed({required this.ERRmessage});
}
class RegisterCubitLoading extends AuthState {}
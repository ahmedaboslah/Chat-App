part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginSuccess extends LoginState {}
class LoginFailed extends LoginState {
  String errmessage;
  LoginFailed({required this.errmessage});
}
class LoginLoading extends LoginState {}

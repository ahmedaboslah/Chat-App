part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class loginevent extends AuthEvent{
  final String email;
  final String password;
  loginevent({required this.email,required this.password});
}
class registerevent extends AuthEvent{}
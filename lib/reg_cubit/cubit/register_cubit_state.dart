part of 'register_cubit_cubit.dart';

@immutable
abstract class RegisterCubitState {}

class RegisterCubitInitial extends RegisterCubitState {}
class RegisterCubitSuccess extends RegisterCubitState {}
class RegisterCubitFailed extends RegisterCubitState {
  String ERRmessage;
  RegisterCubitFailed({required this.ERRmessage});
}
class RegisterCubitLoading extends RegisterCubitState {}


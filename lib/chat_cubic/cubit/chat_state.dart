part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}
class ChatSuccess extends ChatState {
  List<Message> messages;
  ChatSuccess({required this.messages});
}
class ChatLoading extends ChatState {}
class ChatFailed extends ChatState {}
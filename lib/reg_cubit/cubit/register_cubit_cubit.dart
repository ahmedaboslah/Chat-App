import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_cubit_state.dart';

class RegisterCubitCubit extends Cubit<RegisterCubitState> {
  RegisterCubitCubit() : super(RegisterCubitInitial());

  Future<void> REGISTER(
      {required String email, required String password}) async {
    emit(RegisterCubitLoading());

    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterCubitSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        RegisterCubitFailed(ERRmessage: 'weak password');
      }
      else if(ex.code == 'email-already-in-use'){
        RegisterCubitFailed(ERRmessage: 'email already in use');
      }
    }
    catch (e){
        RegisterCubitFailed(ERRmessage: 'something went wrong');
    }
  }
}

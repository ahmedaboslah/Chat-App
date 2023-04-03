import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> REGISTER(
      {required String Email, required String password}) async {
    emit(LoginLoading());
  
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: Email, password: password);
          emit(LoginSuccess());
    } 
    on FirebaseAuthException catch (ex) {
      if(ex.code=='user-not-found'){
        emit(LoginFailed(errmessage: 'user not found'));
      }
      else if(ex.code=='wrong-password'){
        emit(LoginFailed(errmessage: 'wrong password'));
      }
      
    }
    catch(e){
      emit(LoginFailed(errmessage: 'something went wrong'));
    }
  }
}

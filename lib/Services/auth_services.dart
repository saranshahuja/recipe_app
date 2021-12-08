import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthenticationServices{
  final FirebaseAuth _firebaseAuth ;
  AuthenticationServices(this._firebaseAuth);


  Stream<User?> get authStatechange => _firebaseAuth.authStateChanges();

  Future<String> getCurrentUserID() async {
    return (await _firebaseAuth.currentUser)!.uid;
  }

  Future<String?> SignIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Login successful";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
  User? getcurrentUser(){
    return _firebaseAuth.currentUser;
  }

  Future<String?> signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ).then((value){
        FirebaseFirestore.instance.collection('User data').doc(value.user!.uid).set(
            {"Email" : value.user!.email,
              'Uid' : value.user!.uid,
            }
        );
      });
      return "Login successful";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }



}





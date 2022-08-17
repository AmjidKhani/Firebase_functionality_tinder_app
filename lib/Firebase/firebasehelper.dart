

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class firebaseHelper{
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  //User? user =FirebaseAuth.instance.currentUser;

  Future<String> Login(String email,String password)async
  {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password:password);
      return "Welcome To The Dashboard";
    }catch(e){
      return ('Error=  $e.toString()');
    }
  }
  Future<String> signup(String email,String password)async
  {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return
        "Sign_Up In";
    }catch(e){
      return e.toString();
    }
  }
}
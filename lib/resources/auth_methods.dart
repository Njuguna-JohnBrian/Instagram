import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String res = 'Some error occurred';
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty ||
          file != null) {
        // register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        // Get profile link
        String photoUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', file, false);

        // add user to database
        await _firestore.collection('users').doc(cred.user?.uid).set({
          'username': username,
          'uid': cred.user?.uid,
          'email': email,
          'bio': bio,
          'followers': [],
          'following': [],
          'photoUrl': photoUrl
        });

        // await _firestore.collection('users').add({
        //   'username': username,
        //   'uid': cred.user!.uid,
        //   'email': email,
        //   'bio': bio,
        //   'followers': [],
        //   'following': []
        // });
        res = 'Success';
      } else {
        res = "Please enter all fields";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'weak-password') {
        res = 'Password should be atleast 6 characters';
      } else if (err.code == 'invalid-email') {
        res = 'The email address is badly formatted.';
      } else if (err.code == 'email-already-in-use') {
        res = 'The email address is already in use by another account.';
      }
    }
    return res.toString();
  }

  // Logging In User
  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = "Some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "Success";
      } else {
        res = "Please enter all fields";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'network-request-failed') {
        res = "Network Error";
      } else if (err.code == 'user-not-found') {
        res = 'Wrong credentials.Please retry';
      } else if (err.code == 'wrong-password') {
        res = 'The password is invalid';
      }
    }
    return res.toString();
  }
}

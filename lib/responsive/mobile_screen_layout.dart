import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/providers/user_provider.dart';
import 'package:provider/provider.dart';
import '../models/user.dart' as model;

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final model.User? user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      body: user == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Text(user.username),
            ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/Services/auth_services.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

var authServiesProvider = Provider<AuthenticationServices>((ref) {
  return AuthenticationServices(ref.read(firebaseAuthProvider));
});

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.watch(authServiesProvider).authStatechange;
});

final firebaseFirestoreProvider =
Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_map_exp/src/features/domain/user.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  // State
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                User t = User(id: "1353245324", name: "Tobi", age: 45);
                await FirebaseFirestore.instance
                    .collection("users")
                    .doc("tobi")
                    .set(t.toMap());
              },
              child: const Text('In Firestore speichern'),
            ),
            ElevatedButton(
              onPressed: () async {
                final x = await FirebaseFirestore.instance
                    .collection("users")
                    .doc("tobi")
                    .get();

                User u = User.fromMap(x.data()!);

                setState(() {
                  user = u;
                });
              },
              child: const Text('Aus Firestore laden'),
            ),
            const SizedBox(height: 32),
            Text("Name: ${user?.name}"),
            Text("Alter: ${user?.age}"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:log/views/sign_in.dart';

class page_one extends StatefulWidget {
  const page_one({
    super.key,
  });

  @override
  State<page_one> createState() => _page_oneState();
}

class _page_oneState extends State<page_one> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return sign_in();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                   'https://img.freepik.com/free-vector/bicycle-shop-logo-design-vector_53876-40626.jpg?t=st=1727542215~exp=1727545815~hmac=45eded76bc4ac250a451f16a14ce6501708102cffb7a3d16f250075c69fcfbe1&w=740'),
            )
          ],
        ),
      ),
    );
  }
}

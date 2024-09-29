import 'package:flutter/material.dart';
import 'package:log/views/sign_up.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _nameState();
}

var formKey = GlobalKey<FormState>();

class _nameState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/bicycle-shop-logo-design-vector_53876-40626.jpg?t=st=1727542215~exp=1727545815~hmac=45eded76bc4ac250a451f16a14ce6501708102cffb7a3d16f250075c69fcfbe1&w=740'),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Color(0xFF8D0302),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please entre your email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: Text(
                              'Email',
                              style: TextStyle(
                                color: Color(0xFFCC4233),
                              ),
                            ),
                            prefixIcon:
                                Icon(Icons.email, color: Color(0xFFCC4233)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Color(0xFFCC4233),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Color(0xFFCC4233),
                              ),
                            ),
                                errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                             color: Colors.black,
                            ),
                          ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please entre your password';
                          } else if (value.length < 9) {
                            return 'at least 8 characters';
                          }

                          return null;
                        },
                        obscureText: isobscure,
                        decoration: InputDecoration(
                          label: Text(
                            'Password',
                            style: TextStyle(color: Color(0xFFCC4233)),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isobscure = !isobscure;
                              });
                            },
                            icon: Icon(
                              Icons.remove_red_eye_rounded,
                              color: Color(0xFFCC4233),
                            ),
                          ),
                          prefixIcon:
                              Icon(Icons.lock, color: Color(0xFFCC4233)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color(0xFFCC4233),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color(0xFFCC4233),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                           color: Colors.black,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                             color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              backgroundColor: Color(0xFFCC4233),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Don't have account?",
                          style: TextStyle(
                            color: Color(0xFFCC4233),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                return sign_up();
                              }));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color(0xFF8D0302),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

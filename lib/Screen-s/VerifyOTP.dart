import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/SaveChnagesone.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: const BoxDecoration(color: Colors.black),
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "Verify OTP",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "Please provide your registered e-mail code & verify OTP for login",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextButton(
                        onPressed: () {},
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SaveChangesone(),
                              ),
                            );
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const SaveChanges(),
                        //     ),
                        //   );
                        // },
                        child: const Text(
                          "Haven't received OTP yet?",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Container(
                              child:
                                  Icon(Icons.access_time, color: Colors.grey),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                // onTap: () {
                                //   Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const SaveChanges(),
                                //     ),
                                //   );
                                // },
                                child: const Text(
                                  "Resend code",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

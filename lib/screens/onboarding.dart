import 'package:flutter/material.dart';
import 'package:ydtind/utils/helpers.dart';
import 'signin.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // The avatar
                constraints: BoxConstraints(minHeight: 200),
                margin: EdgeInsets.all(20),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.blue, // Set the color of the block
                        width: 180, // Set the width of the block
                        height: 180, // Set the height of the block
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // The text
                margin: const EdgeInsets.all(20.0),
                constraints: BoxConstraints(minHeight: 100),
                child: Center(
                  child: Text(
                    "Make friends with people like you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                // The 2 buttons
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                          // Continue => Anonymous mode (TODO)
                          onPressed: () {
                            toast(context, "TODO: main screen");
                          },
                          child: Text("Continue")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        // Sign in => SignInPage
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        },
                        child: Text("Sign in"),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
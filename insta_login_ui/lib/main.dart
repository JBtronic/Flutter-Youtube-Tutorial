import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null){
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 130, 20, 10),
          child: Column(
            children: [
              Image.asset("images/insta.jpg", width: 85),
              Padding(padding: EdgeInsets.only(top:30)),
              TextFields(
                data: 'Phone number, username or email',
              ),
              SizedBox(height: 15),
              TextFields(
                data: 'Password',
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forget Password?'),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 400,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/fb.png', width: 20),
                  SizedBox(width: 10),
                  Text(
                    'Continue as Jawwad Bilgrami',
                    style:
                        TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 20),
                  Text(
                    'OR',
                    style:
                        TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up.",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 5),
                    GradientText(
                      'FACEBOOK',
                      style: const TextStyle(
                          fontSize: 22,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange.shade400,
                          Colors.red.shade900,
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class TextFields extends StatelessWidget {
  String data = "";
  TextFields({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[50],
          hintText: '$data',
          hintStyle: TextStyle(fontSize: 13),
          contentPadding: EdgeInsets.all(8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(this.text, {required this.gradient, this.style});

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

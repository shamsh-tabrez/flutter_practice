import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: width,
              height: 450,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Image.asset(
                  'assets/delhi.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 30.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 30.0),
       Column(
  children: [
    const SizedBox(
      height: 30,
    ),
    
    const SizedBox(
      height: 10,
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(251, 235, 115, 60),
        minimumSize: const Size.fromHeight(50), // NEW
      ),
      onPressed: () {},
      child: const Text(
        'LogIn',
        style: TextStyle(fontSize: 24),
      ),
    ),
  ],
)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

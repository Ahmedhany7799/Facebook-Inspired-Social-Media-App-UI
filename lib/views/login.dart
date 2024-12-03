import 'package:facebook/views/homepage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              const Center(
                child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/face.png")),
              ),
              const Spacer(
                flex: 1,
              ),
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  filled: true, // Enables background color

                  fillColor: const Color.fromARGB(255, 236, 236, 239),
                  hintText: 'Mobile Number or Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF898F9C),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent, // Border color when focused
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF898F9C),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.trim().isEmpty || value.contains("@") == false) {
                    return 'invalid email or phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 236, 236, 239),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF898F9C),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.trim().isEmpty || value.length <= 8) {
                    return 'invalid password';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff1877F2)),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homepage()));
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Forgotten Password ?',
                  style: TextStyle(
                    color: Color(0XFF898F9C),
                    fontSize: 16,
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                        color: Color(0xff1877F2),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: Image.asset("assets/images/Meta Logo.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

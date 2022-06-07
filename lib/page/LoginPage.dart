// ignore: file_names
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomLoginPage();
  }
}

// ignore: camel_case_types
class CustomLoginPage extends StatefulWidget {
  const CustomLoginPage({Key? key}) : super(key: key);

  @override
  State<CustomLoginPage> createState() => _CustomLoginPageState();
}

class _CustomLoginPageState extends State<CustomLoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

 movieHome(){
   if(_formKey.currentState!.validate()){

   Navigator.pushNamed(context, '/');
  //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));

   }
 }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const Image(
                  image: AssetImage(
                    "assets/images/login.png",
                  ),
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: "Welcome ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                  TextSpan(
                      text: name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green,
                      ))
                ])),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Enter username",
                          labelText: "username",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "username connot is a empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Enter password",
                          labelText: "password",
                        ),
                        validator: (value){
                          if(value==null || value.isEmpty){
                           return "password connot is a empty";
                          }else if(value.length <= 6){
                             return "Password lenght should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: ()=>movieHome(), 
                        child: const Text("Login")
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

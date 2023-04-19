import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DefaultTabController(
        length: 2,
        child: Scaffold(

        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Welcome to my app"),
          actions: const [
            Icon(Icons.more_vert)
          ],
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.login),),
              Tab(child: Icon(Icons.app_registration),)
            ],
          ),

        ),
          body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 200,
                    width: 200,
                    child:Image.network("https://yt3.googleusercontent.com/ytc/AGIKgqM8zh66fZqGKeTkopHaU9GM4zvyuFnQhXThr37u=s900-c-k-c0x00ffffff-no-rj")),
              Column(
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.black),
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                        hintText: "Email",
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),

                  const SizedBox(height: 30,),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.key),
                  ),
                ),
                ],
              ),
                ElevatedButton(
                    onPressed: (){if (kDebugMode) {
                      print("loggedin");
                    }},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 32 , vertical: 10)
                  ),

                    child: const Text("Login"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account?",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                    TextButton(
                         onPressed:(){},

                        child: const Text("Sign up",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),))
                  ],
                )
              ],
            ),
          ),
      ),
      ),
    );
  }


}


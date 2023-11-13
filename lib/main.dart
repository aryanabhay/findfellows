import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SignUp(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {

}

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(children: [
              TextField(decoration: InputDecoration(hintText: 'E-mail'),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(hintText: 'Password'),),
            ],) 
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()));}, child: Text("Sign Up")),
          SizedBox(height: 20,),
          Text('Already have an account?'),
          TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn()));}, child: Text('Login')),
        ],
      ),
    );
  }
}

class Welcome extends StatelessWidget{
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome page")
          ]),
      ),
    );
  }
}

class LogIn extends StatelessWidget{
  const LogIn({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Log In', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(children: [
              TextField(decoration: InputDecoration(hintText: 'E-mail'),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(hintText: 'Password'),),
            ],) 
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()));}, child: Text("Log In")),
          SizedBox(height: 20,),
          Text('Don\'t have an account?'),
          TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));}, child: Text('Sign Up')),
        ],
      ),
    );
  }
}
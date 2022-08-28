import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'modelUser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLogin(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  int number = 0;
  List<modelUser> rUser = [];
  @override
  Widget build(BuildContext context) {
    rUser.add(modelUser("peerapong", 28));
    rUser.add(modelUser("chanita", 26));
    return Scaffold(
        appBar: AppBar(title: Text("LOGIN PAGE")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'username',
            )),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password", border: OutlineInputBorder()),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {},
              child: const Text('Enabled'),
            ),
          ],
        ));
  }
}

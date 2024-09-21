import 'package:dashboard/screen/app_color.dart';
import 'package:dashboard/screen/siginform/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart'; 


void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
       enabled: true,
       tools:const [
          ...DevicePreview.defaultTools,
       ],
      ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,fontSize: 25,fontFamily: appFlavor),
            
          ),
          backgroundColor: AppColor.green,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 77, 17, 67),
          ),
        ),
        body: const Login(),
      ),
    );
  }
}


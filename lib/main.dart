import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key ? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key ? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff535FF7),
          title: const Text('FLUTTER GUYS'),
            centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              fillColor: const Color(0xffEEF2F7), 
              hintText: 'Email',
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff535FF7), width: 2),
                borderRadius: BorderRadius.circular(10.0),
               ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink[400] !, width: 2),
                borderRadius: BorderRadius.circular(10.0),
               ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
               ),                                                                                                                        
              ),
              validator: (value) {
                if (!GetUtils.isEmail(value!)) {
                  return "Invalid email";
                } else {
                  return null;
                }                
              },
            ),            
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              fillColor: const Color(0xffEEF2F7), 
              hintText: 'Username',
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff535FF7), width: 2),
                borderRadius: BorderRadius.circular(10.0),
               ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink[400] !, width: 2),
                borderRadius: BorderRadius.circular(10.0),
               ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
               ),                                                                                                                        
              ),
              validator: (value) {
                if (!GetUtils.isLengthGreaterThan(value, 5)) {
                  return "Min 5 chars";
                } else {
                  return null;
                }                
              },
            ),            
          ),          
        ],        
      )
    );
  }
}

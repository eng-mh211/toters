import 'package:flutter/material.dart';
import 'package:toters/App/Rigester.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await new Future.delayed(const Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(builder:  (context)=>Rig()));
  }
  @override
  void initState()
  {
  super.initState();
  Delay();
}
@override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",height: 200,width: 200,),
            SizedBox(height: 30,),
            SpinKitFoldingCube(
              size: 60,
              color: Color(0Xff10b492),
            )
          ],
        ),
      ),
      );
  }
}

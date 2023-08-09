import 'package:flutter/material.dart';
class image_text_wid extends StatelessWidget {
  const image_text_wid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 277,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 300,
                height: 200,

                child: Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: Image.asset('assets/images/1.png'),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue[700]),),
            )
          ],

        ),
      ),
    );
  }
}

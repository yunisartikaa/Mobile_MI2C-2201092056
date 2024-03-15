import 'package:cobaflutter/screen_page/page_mi.dart';
import 'package:cobaflutter/screen_page/page_tekom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageLatihan1 extends StatelessWidget {
  const PageLatihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Latihan | Yuni Sartika'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('gambar/poli.png',
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
              SizedBox(height: 8,),

              Text('Selamat Datang di Politeknik Negeri Padang',
                  style: TextStyle(
                      color: Colors.orange
                  )),
              Text('Limau Manis, Padang, Sumbar'),
              SizedBox(height: 10,),
              MaterialButton(onPressed: (){
                showToast('MI2c',
                    context: context,
                    animation: StyledToastAnimation.slideFromTop,
                    reverseAnimation: StyledToastAnimation.slideToTop,
                    position: StyledToastPosition.top,
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn,
                );
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageMI()
                ));
              },
                child: Text('Manajemen Informatika',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.orange,
                textColor: Colors.white,
              ),
              SizedBox(height: 8,),
              MaterialButton(onPressed: (){
                showToast(
                  'Tekom',
                  context: context,
                  animation: StyledToastAnimation.slideFromTop,
                  reverseAnimation: StyledToastAnimation.slideToTop,
                  position: StyledToastPosition.top,
                  startOffset: Offset(0.0, -3.0),
                  reverseEndOffset: Offset(0.0, -3.0),
                  duration: Duration(seconds: 4),
                  //Animation duration   animDuration * 2 <= duration
                  animDuration: Duration(seconds: 1),
                  curve: Curves.elasticOut,
                  reverseCurve: Curves.fastOutSlowIn,
                );
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageTekom()
                ));
              },
                child: Text('Teknik Komputer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),
                ),
                color: Colors.orange,
                textColor: Colors.white,
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
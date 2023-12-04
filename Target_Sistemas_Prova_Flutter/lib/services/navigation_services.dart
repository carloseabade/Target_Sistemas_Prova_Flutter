import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto_flutter_target_sistemas/services/mob_x.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  final NextScreenStore store = NextScreenStore();
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF1F5466), //rgba(31,84,102,255)
                Color(0xFF2D958E), // rgba(45,149,142,255)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: 370,
                child: Card(
                  margin: const EdgeInsets.fromLTRB(30, 0, 50, 0),
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: ListView(
                    children:[
                  Column(
                    children: [
                       Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0,
                          ),
                          child: Observer(
                              builder: (_) => TextFormField(
                                controller: textController,
                                //onChanged: store.setInformation(textController.text),
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  hintText: 'Texto Digitado 1',
                                  hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0,
                                  ),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        size: 35,
                                      ),
                                      SizedBox(width: 8.0),
                                      CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 15.0,
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFDCDCDC),),
                                  ),
                                ),
                              ),
                          ),
                        ),
                       ],
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 70,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 50, 0),
                  child: Form(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Digite seu texto',
                        hintStyle: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    'Política de Privacidade',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> urlLink(String url) async {
  await canLaunchUrlString(url)
      ? await launchUrlString(url)
      : throw "It is now allowed to open $url";
} /* Services - Navigation Services */
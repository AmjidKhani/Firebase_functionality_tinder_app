import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  File? ImageFile;
  void _getFromcamera()async{
    XFile? pickedFile =(await ImagePicker().
    pickImage(source: ImageSource.camera,
      maxHeight: 1000,
      maxWidth: 1000,
    )) ;
    setState(() {
      ImageFile=File(pickedFile!.path);
    });
    //Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,

          ),
          ImageFile!=null?
          Container(
            child:
            Image.file(ImageFile!),

          ):Container(
            child: Icon(Icons.camera,
              color: Colors.green,
              size: MediaQuery.of(context).size.width*.6,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(30.0),
              child:ElevatedButton(
                onPressed: () {
                  _getFromcamera();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12),),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16))
                ),
                child: Text("Capture Image With Camera"),
              )
          ),
        ],
      ),
    );
  }
}

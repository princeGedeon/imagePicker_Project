import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends StatefulWidget{

  ImagePageState createState()=>ImagePageState();
}

class ImagePageState extends State<ImagePage>
{
  File? imageFile;
  ImagePicker picker=ImagePicker();
  @override
  void initState()
  {
    super.initState();
  }

  @override
  void dispose()
  {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Image | By Princeg"),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            (imageFile==null)?Text("Aucune image"):
                Image.file(imageFile!,height: MediaQuery.of(context).size.height/2,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){
                  getpickImage(ImageSource.gallery);    
                }, child: Icon(Icons.library_add)),
                FloatingActionButton(onPressed: (){
                  getpickImage(ImageSource.camera);
                }, child: Icon(Icons.camera_enhance))


              ],
            )
           ,
          ],

        ),
      ),

    );
  }

  Future getpickImage(ImageSource source) async{
  PickedFile? chosenImage=await picker.getImage(source: source);
  setState((){
    if (chosenImage==null)
    {
      print("Pas d'image recupéré");
    }
    else{
      imageFile=File(chosenImage.path);
    }

  });

  }



}
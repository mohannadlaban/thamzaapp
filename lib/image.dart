import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_downloader/image_downloader.dart';



class image extends StatefulWidget {
  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<image> {
  late File _image;
  late String _url;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: _image == null ? null : FileImage(_image),
                  radius: 80,
                ),
                GestureDetector(onTap: pickImage, child: Icon(Icons.camera_alt))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Builder(
                  builder: (context) => RaisedButton(
                    onPressed: () {
                      uploadImage(context);
                    },
                    child: Text('Upload Image'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  onPressed: loadImage,
                  child: Text('Load Image'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void pickImage() async {
    var image = await ImagePicker.platform;

    setState(() {
      _image = image as File;
    });
  }

  void uploadImage(context) async {
    try {
      FirebaseStorage storage =  FirebaseStorage(storageBucket: 'gs://mystyle-364017.appspot.com/test');
      StorageReference ref = storage.ref().child(_image.path);
      StorageUploadTask storageUploadTask = ref.putFile(_image);
      StorageTaskSnapshot taskSnapshot = await storageUploadTask.onComplete;
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('success'),
      ));
      String url = await taskSnapshot.ref.getDownloadURL();
      print('url $url');
      setState(() {
        _url = url;
      });
    } catch (ex) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("message"),
      ));
    }
  }

  void loadImage() async {
    var imageId = await ImageDownloader.downloadImage(_url);
    var path = await ImageDownloader.findPath(imageId!);
    File image = File(path!);
    setState(() {
      _image = image;
    });
  }
}
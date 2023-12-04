import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../shared/design/app_image.dart';


class MixView extends StatefulWidget {
  const MixView({super.key});

  @override
  State<MixView> createState() => _MixViewState();
}

class _MixViewState extends State<MixView> {
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          if(imagePath !=null)
            AppImage(imagePath!),


          ElevatedButton(
            onPressed: () async{
             var file = await ImagePicker.platform.getImageFromSource(source: ImageSource.camera);
             if(file != null)
             {
               imagePath = file.path;
               setState(() {

               });
             }
            },
            child: const Text(
              "Show",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

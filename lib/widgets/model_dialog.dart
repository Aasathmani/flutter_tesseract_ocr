import 'package:flutter/material.dart';

void imagePickerModel(BuildContext context,
    {VoidCallback? onCameraOnTap, VoidCallback? onGalleryOnTap}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 220,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  onTap: onCameraOnTap,
                  child: Card(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20.0),
                      child: const Text("Cemara"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: onGalleryOnTap,
                  child: Card(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20.0),
                      child: Text("Gallary"),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

import 'package:flutter/material.dart';
import 'package:parlo/Model/Data_Cass.dart';

class CoustemListtile extends StatelessWidget {
  final String? image;
  final String? textenglish;
  final String? texItliano;
  final String? audio;

  CoustemListtile({
    super.key,
    this.image,
    this.textenglish,
    this.texItliano,
    this.audio,
  });


  @override
  Widget build(BuildContext context) {
        final Model = model(image:image,textenglish:textenglish ,texItliano:texItliano ,audio: audio );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),

          leading: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                image ?? '',
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              ),
            ),
          ),

          title: Text(
            textenglish ?? 'textenglish',
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Text(
            texItliano ?? 'texItliano',
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black54, fontSize: 20),
          ),

          trailing: IconButton(
            onPressed: () {
              Model.addAudio();
            },
            icon: Icon(Icons.play_arrow, color: Colors.black, size: 40),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String imagePath;
  final String albumName;
  final String year;

  const AlbumCard({Key? key, required this.imagePath, required this.albumName, required this.year}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(albumName),
                  SizedBox(height: 5),
                  Text(year),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
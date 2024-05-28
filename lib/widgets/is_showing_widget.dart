import 'package:aplikasi_nonton_id/data/is_showing_data.dart';
import 'package:aplikasi_nonton_id/model/is_showing_model.dart';
import 'package:flutter/material.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class IsShowingWidget extends StatelessWidget {
  const IsShowingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: imageData.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final image = imageData[index];
          return GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                  ),
                  child: Image.network(
                    image.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  clipBehavior: Clip.hardEdge,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        image.description,
                        style: TextStyle(color: Colors.white),
                      ),
                      RatingStars(
                        rating: image.rating,
                        editable: false,
                        color: Colors.amber,
                        iconSize: 15.0,
                      )
                    ],
                  ),
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMovies(detail: image),
                  settings: RouteSettings(arguments: image.id),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailMovies extends StatelessWidget {
  const DetailMovies({
    super.key,
    required this.detail,
  });

  final IsShowingModel detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail.description),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(detail.description),
      ),
    );
  }
}

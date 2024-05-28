import 'package:flutter/material.dart';

List<int> count =[1,2,3];

class VoucherDeals extends StatelessWidget {
  const VoucherDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: count.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20.0);
        },
        itemBuilder: (context, index) {
          // return Image.network(
          //   imgList[index],
          //   fit: BoxFit.cover,
          //   width: 200,
          //   height: double.infinity,
          // ) ;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.deepPurpleAccent
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

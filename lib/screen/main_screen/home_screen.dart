import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 26, 41, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          "assets/images/profile.jpeg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        Text(
                          "Medan",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const CarouselWidget(),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sedang Tayang",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lihat Semua >",
                      style: TextStyle(color: Colors.white24),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IsShowingWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(28, 26, 41, 1),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(50.0),
//                         child: Image.asset(
//                           "assets/images/profile.jpeg",
//                           width: 50,
//                           height: 50,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.location_on_outlined,
//                           size: 40.0,
//                           color: Colors.white,
//                         ),
//                         Text(
//                           "Medan",
//                           style: TextStyle(fontSize: 20.0, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     Icon(
//                       Icons.notifications_outlined,
//                       size: 40.0,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//               const CarouselWidget(),
//               const SizedBox(height: 20.0),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Sedang Tayang",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 30.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Lihat Semua >",
//                       style: TextStyle(color: Colors.white24),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: IsShowingWidget(),
//               ),
//
//               Container(
//                 width: double.infinity,
//                 height: 1,
//                 color: Colors.white,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Voucher Deals",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 30.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 10),
//                     VoucherDeals(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DetailMovies extends StatelessWidget {
//   const DetailMovies({
//     super.key,
//     required this.detail,
//   });
//
//   final IsShowingModel detail;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(detail.description),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Text(detail.description),
//       ),
//     );
//   }
// }

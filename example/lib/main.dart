import 'package:animated_infinite_list/animated_infinite_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// App widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DemoScreen(),
    );
  }
}

/// Screen for demonstration sliver.
class DemoScreen extends StatelessWidget {
  static const urls = <String>[
    'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
    'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
    'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
    'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
    'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
    'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
    'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
    'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
    'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
    'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
    'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
    'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
  ];

  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InfiniteScrollView(
        // physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          ...urls.map((url) {
            // if (urls.last == url) {
            //   return Spinner(
            //     child: Center(
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(50),
            //         child: Image.network(
            //           url,
            //           fit: BoxFit.cover,
            //           height: 20,
            //           width: 20,
            //         ),
            //       ),
            //     ),
            //   );
            // }
            return SliverToBoxAdapter(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  height: 300,
                ),
              ),
            );
          }).toList(),
          // SliverFillRemaining(
          //   hasScrollBody: false,
          //   fillOverscroll: true,
          //   child: Align(
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(50),
          //       child: Image.network(
          //         'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
          //         fit: BoxFit.cover,
          //         height: 20,
          //         width: 20,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

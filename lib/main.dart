import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait; // Correct the method to MediaQuery.of(context).

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flex(
            mainAxisSize: MainAxisSize.min,
            direction: isPortrait ? Axis.vertical : Axis.horizontal,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.33,
                    backgroundImage: const NetworkImage(
                        'https://i.redd.it/eyqaeli5m5ab1.jpg'),
                    backgroundColor: Colors.transparent,
                    onBackgroundImageError: (_, __) => Icon(Icons.image),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Column(
                      crossAxisAlignment: isPortrait ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Gohan',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            " The power is unlocked when Gohan witnesses Piccolo seemingly die and becomes enraged, unlocking the deepest part of his energy and transforms into Beast mode.In this form, Gohan withstood a full power punch from Cell Max and annihilated his energy sphere, proving to be the strongest in the galaxy.",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(height: 5.0,),
                        GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 10.0
                            ),
                            itemCount: 9,
                            itemBuilder: (context, index) {
                              return CircleAvatar(
                                // radius: MediaQuery.of(context).size.width * 0.33,
                                backgroundImage: const NetworkImage(
                                    'https://w0.peakpx.com/wallpaper/134/728/HD-wallpaper-gohan-s-new-form-gohan-beast-thumbnail.jpg'),
                                backgroundColor: Colors.brown,
                                onBackgroundImageError: (_, __) => Icon(Icons.image),
                              );
                            }
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

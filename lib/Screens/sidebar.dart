import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class sidebar extends StatelessWidget {
  const sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 0.85,
          child: Drawer(
                child: SafeArea(
                  child: FractionallySizedBox(

                    child: Column(
                      children: [
                        Container(
                          child: Image(
                            fit: BoxFit.fill,

                      image: AssetImage(
                        'assets/pasta.jpg',
                          ),
                          )
                        )
                      ],

                    ),
                  ),
                ),
          ),
    );
  }
}

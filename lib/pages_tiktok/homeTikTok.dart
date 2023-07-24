import 'package:flutter/material.dart';

class UserHomeTikTok extends StatelessWidget {
  UserHomeTikTok({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Text('Following ')),
                  Text(' | '),
                  Text('For You'),
                ],
              ),
            ),

            //Reaction buttons
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: height - 200,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 15.0,
                      top: 200,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 40,
                            ),
                            Text('1.3M')
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.comment_outlined,
                              size: 40,
                            ),
                            Text('10,7M')
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.forward,
                              size: 40,
                            ),
                            Text('10,7M')
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.ios_share_outlined,
                              size: 40,
                            ),
                            Text('30,9K')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

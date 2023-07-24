import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[500], shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        //below the post-> buttons and comments
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              const Text('Liked by '),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and '),
              const Text(
                ' others ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 8),
            child: RichText(
              text: TextSpan(style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                    text: name, style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(
                    text:
                        ' “Tình yêu này như bầu trời vậy, nhìn thấy được nhưng không chạm vào được, lưu giữ được nhưng không thể là của riêng mình được.”')
              ]),
            )),

        //comments
      ],
    );
  }
}

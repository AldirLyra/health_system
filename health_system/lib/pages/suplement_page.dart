import 'package:flutter/material.dart';
import 'package:health_system/mocks/suplements_list_mock.dart';

class SuplementPage extends StatelessWidget {
  final SuplementsListMock suplementsListMock;
  const SuplementPage({Key? key, required this.suplementsListMock})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameSplited = splitStringByLength(suplementsListMock.text, 2);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: nameSplited.first,
                    children: [
                      TextSpan(
                        text: nameSplited.last,
                        style: TextStyle(
                          color: suplementsListMock.color,
                        ),
                      )
                    ],
                  ),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox.shrink(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(suplementsListMock.image),
          const SizedBox(
            height: 20,
          ),
          Text(
            suplementsListMock.description,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

List<String> splitStringByLength(String str, int length) => [
      str.substring(0, length),
      str.substring(length),
    ];

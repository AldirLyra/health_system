import 'package:flutter/material.dart';

class SuplementCard extends StatelessWidget {
  final String text;
  final String description;
  final String image;
  final Color color;
  const SuplementCard(
      {Key? key,
      required this.text,
      required this.description,
      required this.image,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Image.asset(
              image,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}

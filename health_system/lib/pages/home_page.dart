import 'package:flutter/material.dart';
import 'package:health_system/mocks/suplements_list_mock.dart';
import 'package:health_system/pages/suplement_page.dart';

import '../widgets/suplement_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.menu_open_rounded,
                    size: 40,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.miscellaneous_services,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Discover',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Se nem planta cresce natural porque você deveria?',
            style: TextStyle(fontSize: 20),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: suplementMock.length,
            separatorBuilder: (_, __) {
              return const SizedBox(
                height: 16,
              );
            },
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SuplementPage(
                        suplementsListMock: suplementMock[index],
                      ),
                    ),
                  );
                },
                child: SuplementCard(
                  text: suplementMock[index].text,
                  description: suplementMock[index].description,
                  image: suplementMock[index].image,
                  color: suplementMock[index].color,
                ),
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

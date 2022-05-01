import 'package:codelab_3/widgets/attraction_card.dart';
import 'package:flutter/material.dart';

import '../models/attraction.dart';
import '../widgets/bottom_bar_widget.dart';
import '../colors.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainThemeColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Center(
          child: Icon(
            Icons.pool,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: attractionsList.length,
                itemBuilder: (context, index) {
                  Attraction attr = attractionsList[index];

                  return AttractionCard(
                    attraction: attr,
                  );
                },
              )),
              BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

//Done by myself

import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:air_ticket_app/base/utils/all_routes.dart';
import 'package:flutter/material.dart';

import '../../base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyle.bgColor,
        title: const Center(child: Text('All Hotels')),
      ),
      body: GestureDetector(
        onTap: () {
          int index = 0; // Replace 0 with the actual index value
          Navigator.pushNamed(context, AllRoutes.hotelDetail,
              arguments: {'index': index});
        },
        child: Container(
          margin: const EdgeInsets.only(left: 12),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 17,
                mainAxisSpacing: 16.0,
                childAspectRatio: 1,
              ),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelList[index];
                return GridViewHotel(
                  hotel: singleHotel,
                  index: index,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class GridViewHotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const GridViewHotel({
    super.key,
    required this.hotel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppStyle.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppStyle.primaryColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/${hotel['image']}"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style:
                  AppStyle.headlineStyle3.copyWith(color: AppStyle.kakiColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(hotel['destination'],
                    style: AppStyle.textStyle.copyWith(
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("\$${hotel['price']}/night",
                    style: AppStyle.headlineStyle3
                        .copyWith(color: AppStyle.kakiColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

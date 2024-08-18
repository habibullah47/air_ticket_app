import 'package:air_ticket_app/base/utils/all_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args['index'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            expandedHeight: 600,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(hotelList[index]['place']),
              background: Text(
                "asset/images/${hotelList[index]['image']}",
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(lorem(paragraphs: 15, words: 150)),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'More Images',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(16),
                          child: const Image(
                              image: NetworkImage(
                                  'https://picsum.photos/200/200')),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

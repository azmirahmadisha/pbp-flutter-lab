import 'package:counter_7/model/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class MyWatchListDetail extends StatelessWidget {
  const MyWatchListDetail({super.key, required this.myWatchList});

  final WatchList myWatchList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: buildDrawer(context),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Column(
                children: [
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          myWatchList.fields.title,
                          style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ]),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Release Date: ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                              myWatchList.fields.releaseDate
                                  .toString()
                                  .substring(0, 10),
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Rating: ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(myWatchList.fields.rating.toString(),
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Status: ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                              myWatchList.fields.watched
                                  ? "watched"
                                  : "not watched",
                              style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Review: ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(children: [
                        Flexible(
                          child: Text(myWatchList.fields.review.toString(),
                              style: TextStyle(fontSize: 16)),
                        )
                      ])
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                  )
                ],
              ),
            ]),
          )),
    );
  }
}
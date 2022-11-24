import 'package:counter_7/fetch_data.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/detail.dart';


class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchListPage> {
  bool is_checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: buildDrawer(context),
      body: FutureBuilder(
        future: fetchMyWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Kamu ga punya watchlist :(",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, i) => Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 8),
                    padding: const EdgeInsets.all(20.0),
                    decoration:
                    BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: listMyWatchListTotal[i].fields.watched
                              ? Colors.green
                              : Colors.red,
                          blurRadius: 2.0)
                    ]),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyWatchListDetail(
                                  myWatchList: listMyWatchListTotal[i])),
                        );
                      },
                      child: Row(
                        children: [
                          Checkbox(
                              value: listMyWatchListTotal[i].fields.watched,
                              onChanged: (bool? value) {
                                setState(() {
                                  listMyWatchListTotal[i].fields.watched =
                                  value!;
                                });
                              }),
                          Text(
                            "${snapshot.data![i].fields.title}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            }
          }
        },
      ),
    );
  }
}

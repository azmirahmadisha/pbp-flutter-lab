import 'package:counter_7/model/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watchlist.dart';

List<WatchList> listMyWatchListTotal = [];

Future<List<WatchList>> fetchMyWatchList() async {
  var url =
  Uri.parse('http://katalog-tugas2.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<WatchList> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchList.add(WatchList.fromJson(d));
      listMyWatchListTotal.add(WatchList.fromJson(d));
    }
  }
  return listMyWatchList;
}
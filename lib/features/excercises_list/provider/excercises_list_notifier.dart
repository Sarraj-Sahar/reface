// import 'package:flutter/material.dart';

// class ExcercisesListNotifier extends ChangeNotifier {
//   var _favorites = <String>[];

//   void setFavorites() async {
//     prefs.setStringList('favoritesList', []);
//   }

//   List<String> getFavorites() {
//     void getFavorites() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       _favorites = prefs.getStringList('favoritesList')!;
//     }

//     // notifyListeners();
//     return _favorites;
//   }

//   // int getSize() => getFavorites().length;

//   int getSize() {
//     int size = _favorites.length;
//     Future<int> getSizeFromPref() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();

//       var size = prefs.getStringList('favoritesList')?.length ?? 0;
//       return size;
//     }

//     return size;
//   }

//   void addItem(String todo) {
//     // _favorites = getFavorites();
//     if (_favorites.contains(todo)) {
//       return;
//     } else {
//       _favorites.add(todo);
//       void setFavorites() async {
//         SharedPreferences prefs = await SharedPreferences.getInstance();
//         prefs.setStringList('favoritesList', _favorites);
//       }
//     }

//     print("printing list: $_favorites");

//     notifyListeners();
//   }

//   void remove(String todo) {
//     _favorites.remove(todo);
//     void setFavorites() async {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       prefs.setStringList('favoritesList', _favorites);
//     }

//     notifyListeners();
//   }
// }

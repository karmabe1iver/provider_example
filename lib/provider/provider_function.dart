import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:provider_exampless/provider/model_class.dart';

class ItemData with ChangeNotifier {
  List<Item> _item = [];

  UnmodifiableListView<Item> get item => UnmodifiableListView(_item);

  get size => _item.length;

  void add(Item item) {
    _item.add(item);
    notifyListeners();
  }
  void removeItem(Item item){
    _item.remove(item);
    notifyListeners();
  }
  void toggleItem(Item item){
    item.toggle();
    notifyListeners();
 }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimatedListSample extends StatefulWidget {
  @override
  _AnimatedListSampleState createState() => _AnimatedListSampleState();
}


class _AnimatedListSampleState extends State<AnimatedListSample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListSample>();
  ListModel<int> _list;
  int _selectedItem;
  int _nextItem;

  @override
  void initState(){
    super.initState();
    _list = ListModel<int>(
      listKey:_listKey,
      initialItems: <int>[0,1,2],
      removedItemBuilder: _buildRemovedItem,
    );
    _nextItem = 3;
  }

  Widget _buildItem (BuildContext context, int index, Animation<double> animation) {
    return CardItem (
      animation: animation,
      item: _list[index],
      selected: _selectedItem == _list[index],
      onTap: () {
        setState(() {
          _selectedItem = _selectedItem == _list[index] ? null : _list[index];
        });
      }
    );
  }


  // TODO - INCOMPLETE
  // www.flutter.dev/docs/catalog/samples/animated-list
}



void main() {
  runApp(AnimatedListSample());
}


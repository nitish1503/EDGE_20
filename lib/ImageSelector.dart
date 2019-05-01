import 'package:flutter/material.dart';

class ImageSelector extends StatelessWidget {
  const ImageSelector({this.cover});

  final List<String> cover;

  void _handleArrowButtonPress(BuildContext context, int delta) {
    final TabController controller = DefaultTabController.of(context);
    if (!controller.indexIsChanging)
      controller
          .animateTo((controller.index + delta).clamp(0, cover.length - 1));
  }

  @override
  Widget build(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    _handleArrowButtonPress(context, -1);
                  },
                  color: Color(0xFFB71C1C),
                ),
                TabPageSelector(
                  controller: controller,
                  //color: Color(0xFFB71C1C),
                  //selectedColor: Color(0xFFB71C1C),
                  selectedColor: Color(0xFFB71C1C),
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {
                    _handleArrowButtonPress(context, 1);
                  },
                  color: Color(0xFFB71C1C),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
            //decoration: BoxDecoration(border: Border.all(color: Colors.redAccent), borderRadius: BorderRadius.all(Radius.circular(10.0))),
            height: 135,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              children: cover.map<Widget>((String cover) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(cover, fit: BoxFit.contain),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
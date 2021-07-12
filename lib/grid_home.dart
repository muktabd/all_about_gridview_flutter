import 'dart:math';

import 'package:flutter/material.dart';

class GridHome extends StatefulWidget {
  GridHome({Key? key}) : super(key: key);

  @override
  _GridHomeState createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Samples"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text("GridView"),
            //scrolling horizontal
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.amberAccent,
                      child: Column(
                        children: [Text(index.toString())],
                      ),
                    );
                  }),
            ),
            //scrolling vertical
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: (2 / 1),
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.amberAccent,
                      child: Column(
                        children: [Text(index.toString())],
                      ),
                    );
                  }),
            ),

            Expanded(
              child: GridView.custom(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  //crossAxisCount: 6,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: (2 / 1),
                ),
                childrenDelegate: SliverChildListDelegate(
                  [
                    Container(color: Colors.red, height: 150.0),
                    Container(color: Colors.purple, height: 150.0),
                    Container(color: Colors.green, height: 150.0),
                  ],
                ),
              ),
            ),

            //
            Expanded(
              child: GridView.custom(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  //crossAxisCount: 6,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: (2 / 1),
                ),
                childrenDelegate: SliverChildListDelegate(
                  [
                    Container(color: Colors.red, height: 150.0),
                    Container(color: Colors.purple, height: 150.0),
                    Container(color: Colors.green, height: 150.0),
                    Container(color: Colors.red, height: 150.0),
                    Container(color: Colors.purple, height: 150.0),
                    Container(color: Colors.green, height: 150.0),
                    Container(color: Colors.red, height: 150.0),
                    Container(color: Colors.purple, height: 150.0),
                    Container(color: Colors.green, height: 150.0),
                    Container(color: Colors.red, height: 150.0),
                    Container(color: Colors.purple, height: 150.0),
                    Container(color: Colors.green, height: 150.0),
                  ],
                ),
              ),
            ),

            //
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                children: new List<Widget>.generate(
                  4,
                  (index) {
                    return new GridTile(
                      child: new Card(
                        color: Colors.blue.shade200,
                        child: new Center(
                          child: new Text('tile $index'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            //
           /*  Expanded(
              child: GridView.extent(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                maxCrossAxisExtent: 12,
                // crossAxisCount: 2,
                children: new List.generate(
                  8,
                  (index) {
                    return new GridTile(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: new Card(
                            color: Colors.blue.shade200,
                            child: new Center(
                              child: new Text('tile $index'),
                            )),
                      ),
                    );
                  },
                ),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}

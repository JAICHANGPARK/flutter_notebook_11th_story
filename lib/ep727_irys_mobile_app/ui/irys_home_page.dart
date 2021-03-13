import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IrysHomePage extends StatefulWidget {
  @override
  _IrysHomePageState createState() => _IrysHomePageState();
}

class _IrysHomePageState extends State<IrysHomePage> with SingleTickerProviderStateMixin{
  int _viewTabIdx = 0;
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2, );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 84),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _viewTabIdx = 0;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.list,
                                color: _viewTabIdx == 0 ? Colors.black : Colors.grey,
                              ),
                              Text(
                                "List View",
                                style: TextStyle(
                                  color: _viewTabIdx == 0 ? Colors.black : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _viewTabIdx = 1;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.map,
                                color: _viewTabIdx == 1 ? Colors.black : Colors.grey,
                              ),
                              Text(
                                "Map View",
                                style: TextStyle(
                                  color: _viewTabIdx == 1 ? Colors.black : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                        Expanded(child: Placeholder()),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: TabBar(
                      controller: _tabController,
                      tabs: [

                      ],
                    )),
                Expanded(
                    flex: 6,
                    child: TabBarView(
                      controller: _tabController,
                      children: [],
                    )),
              ],
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.chat),
        foregroundColor: Colors.black,
      ),
    );
  }
}

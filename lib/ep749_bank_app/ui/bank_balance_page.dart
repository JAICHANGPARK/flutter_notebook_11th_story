import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankBalancePage extends StatefulWidget {
  @override
  _BankBalancePageState createState() => _BankBalancePageState();
}

class _BankBalancePageState extends State<BankBalancePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int _tabIndex = 0;

  final Color barBackgroundColor = const Color(0xff72d8bf);
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = 0;
  bool isPlaying = false;

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.teal,
    double width = 8,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: isTouched ? [Colors.grey] : [barColor],
          width: width,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 20,
            colors: [Colors.grey[300]!],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          default:
            return makeGroupData(0, 6.5, isTouched: i == touchedIndex);
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.red[50]!,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          color: Colors.grey,
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(Icons.menu)),
                      CircleAvatar(
                        radius: 26,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 15,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Reports",
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            "July 2021",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                                        decoration:
                                            BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                                      )),
                                      Expanded(
                                          child: Padding(
                                        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Balance"),
                                            Text(
                                              "\$14.938,51",
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                    ],
                                  )),
                              Expanded(
                                  flex: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: BarChart(
                                      BarChartData(
                                        borderData: FlBorderData(show: false),
                                        titlesData: FlTitlesData(
                                          show: true,
                                          bottomTitles: SideTitles(
                                            showTitles: true,
                                            getTextStyles: (value) => const TextStyle(
                                                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),
                                            margin: 16,
                                            getTitles: (double value) {
                                              switch (value.toInt()) {
                                                case 0:
                                                  return '18';
                                                case 1:
                                                  return '19';
                                                case 2:
                                                  return '20';
                                                case 3:
                                                  return '21';
                                                case 4:
                                                  return '22';
                                                case 5:
                                                  return '23';
                                                case 6:
                                                  return '24';
                                                default:
                                                  return '';
                                              }
                                            },
                                          ),
                                          leftTitles: SideTitles(
                                            showTitles: false,
                                          ),
                                        ),
                                        barGroups: showingGroups(),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 42,
                                            width: 42,
                                            decoration: BoxDecoration(
                                                color: Colors.tealAccent, borderRadius: BorderRadius.circular(12)),
                                            child: Icon(Icons.download_rounded),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [Text("Income"), Text("\$29.568,24")],
                                            ),
                                          )
                                        ],
                                      )),
                                      Expanded(
                                          child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 42,
                                            width: 42,
                                            decoration: BoxDecoration(
                                                color: Colors.orangeAccent, borderRadius: BorderRadius.circular(12)),
                                            child: Icon(Icons.upload_rounded),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [Text("Expense"), Text("\$17.222,24")],
                                            ),
                                          )
                                        ],
                                      )),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _tabIndex == 0
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                _tabIndex = 0;
                              });
                            },
                            child: CircleAvatar(
                              radius: 22,
                              foregroundColor: Colors.blueGrey,
                              backgroundColor: Colors.brown[50],
                              child: Icon(Icons.credit_card),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _tabIndex = 0;
                              });
                            },
                            icon: Icon(Icons.credit_card)),
                    _tabIndex == 1
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                _tabIndex = 1;
                              });
                            },
                            child: CircleAvatar(
                              radius: 22,
                              foregroundColor: Colors.blueGrey,
                              backgroundColor: Colors.brown[50],
                              child: Icon(Icons.pie_chart),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _tabIndex = 1;
                              });
                            },
                            icon: Icon(Icons.pie_chart)),
                    _tabIndex == 2
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                _tabIndex = 2;
                              });
                            },
                            child: CircleAvatar(
                              radius: 22,
                              foregroundColor: Colors.blueGrey,
                              backgroundColor: Colors.brown[50],
                              child: Icon(Icons.apps),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _tabIndex = 2;
                              });
                            },
                            icon: Icon(Icons.apps)),
                    _tabIndex == 3
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                _tabIndex = 3;
                              });
                            },
                            child: CircleAvatar(
                              radius: 22,
                              foregroundColor: Colors.blueGrey,
                              backgroundColor: Colors.brown[50],
                              child: Icon(Icons.card_giftcard),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _tabIndex = 3;
                              });
                            },
                            icon: Icon(Icons.card_giftcard)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}

import 'package:classifly_cat/fireBase/cat_model_firebase.dart';
import 'package:flutter/material.dart';

class ShowCatData extends StatefulWidget {
  final CatModel catdataModel;
  const ShowCatData({super.key, required this.catdataModel});

  @override
  State<ShowCatData> createState() => _ShowCatDataState();
}

class _ShowCatDataState extends State<ShowCatData> {
  late CatModel catModel;
  List<Item> _data = [];

  @override
  void initState() {
    super.initState();
    catModel = widget.catdataModel;

    // กำหนดค่าเริ่มต้นให้ _data
    _data = [
      Item(
        headerValue: 'ลักษณะนิสัย',
        expandedValue: catModel.cha,
        isExpanded: false,
      ),
      Item(
        headerValue: 'ลักษณะเด่นของสายพันธุ์',
        expandedValue: catModel.feature,
        isExpanded: false,
      ),
      Item(
        headerValue: 'การดูแล',
        expandedValue: catModel.care,
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          'ข้อมูลสายพันธุ์แมว',
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0), // ขนาดและทิศทางของเงา
                blurRadius: 20.0, // รัศมีของเงา
                color: Color.fromARGB(255, 0, 0, 0), // สีของเงา
              ),
            ],
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kanit',
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xffD9A05B),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              constraints: const BoxConstraints(maxWidth: 400.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(catModel.tname,
                      style: const TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0), // ขนาดและทิศทางของเงา
                              blurRadius: 20.0, // รัศมีของเงา
                              color: Color.fromARGB(
                                  255, 176, 170, 163), // สีของเงา
                            ),
                          ],
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Kanit'),
                      textAlign: TextAlign.center),
                  Text(catModel.ename,
                      style: const TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0), // ขนาดและทิศทางของเงา
                              blurRadius: 20.0, // รัศมีของเงา
                              color: Color.fromARGB(
                                  255, 176, 170, 163), // สีของเงา
                            ),
                          ],
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Kanit'),
                      textAlign: TextAlign.center),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: InkWell(
                        child: Image.network(
                          catModel.image,
                          height: 300,
                          width: 1000,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: const EdgeInsets.all(5),
            expandIconColor: Colors.black,
            animationDuration: const Duration(milliseconds: 600),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: _data.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      title: Container(
                        constraints: const BoxConstraints(maxWidth: 350.0),
                        child: Text(item.headerValue,
                            style: const TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Kanit'),
                            textAlign: TextAlign.left),
                      ),
                    ),
                  );
                },
                body: ListTile(
                  title: Column(
                    children: [
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(maxWidth: 350.0),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(item.expandedValue,
                                textScaleFactor: 1,
                                textWidthBasis: TextWidthBasis.parent,
                                style: const TextStyle(
                                    fontSize: 21,
                                    color: Color.fromARGB(255, 31, 31, 31),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Kanit'),
                                textAlign: TextAlign.justify),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                isExpanded: item.isExpanded,
                backgroundColor: Colors.white,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    required this.isExpanded,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

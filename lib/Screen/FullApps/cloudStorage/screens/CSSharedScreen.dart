import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/components/CSDisplayDataInListViewComponents.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/model/CSDataModel.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSImages.dart';

import '../components/CSFileAndFolderEditingComponents.dart';

class CSSharedScreen extends StatefulWidget {
  static String tag = '/CSSharedScreen';

  @override
  CSSharedScreenState createState() => CSSharedScreenState();
}

class CSSharedScreenState extends State<CSSharedScreen> {
  List<CSDataModel> onlySharedData() {
    List<CSDataModel> sharedData = [];
    getFileSharingList.forEach((element) {
      if (element.isShared) {
        sharedData.add(element);
      }
    });
    return sharedData;
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: onlySharedData().length != 0
            ? CSDisplayDataInListViewComponents(
                listOfData: onlySharedData(),
                isSelect: false,
                isSelectAll: false,
                selectedItem: 0,
                isCopyOrMove: false,
                onListChanged: () {
                  setState(() {});
                },
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(CSOfflineImg, height: 220, width: 220),
                    Text("Not Have Hile", style: boldTextStyle(size: 20))
                        .paddingOnly(top: 20, bottom: 10),
                    Wrap(
                      children: [
                        Text(
                          "Unfortunately not have file to see",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ).paddingSymmetric(vertical: 10, horizontal: 50),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

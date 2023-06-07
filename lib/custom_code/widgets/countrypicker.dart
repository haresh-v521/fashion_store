// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

class Countrypicker extends StatefulWidget {
  const Countrypicker({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);
  final double? width;
  final double? height;

  @override
  _CountrypickerState createState() => _CountrypickerState();
}

class _CountrypickerState extends State<Countrypicker> {
  var selectedImageIndex = 0;
  var selectedNameIndex = 0;

  List<CountryItem> countryList = [
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/v9uv8mykvcm5/afghanistan_1.svg",
        "Afghanistan",
        true),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/6rywf3s5e6yv/aland-islands_1.svg",
        "Aland Islands",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/az3yktsh6ktt/albania_1.svg",
        "Albania",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/l58x0204p9uf/algeria_1.svg",
        "Algeria",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/u8pz4gsrjajc/american-samoa_1.svg",
        "American Samoa",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/hrg4u7niizyd/andorra_1.svg",
        "Andorra",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/g71vzjkp8nt6/angola_1.svg",
        "Angola",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/zlbqbeladfyp/anguilla_1.svg",
        "Anguilla",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/v7vp84obmfa6/antarctica_1.svg",
        "Antarctica",
        false),
    CountryItem(
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/culturize-re6yid/assets/4b099pjkw068/antigua-and-barbuda_1.svg",
        "Antigua and Bar...",
        false)
  ];

  bool valuee = false;
  static int _len = 10;
  static int _length = 6;
  static int _lengthh = 12;
  bool arrow = false;
  bool Countrydata = false;
  bool Regiondata = false;
  bool Subregiondata = false;
  bool Region = false;
  bool subRegion = false;
  List<bool> isChecked = List.generate(_len, (index) => false);
  List<bool> isCheckedd = List.generate(_length, (index) => false);
  List<bool> isCheck = List.generate(_lengthh, (index) => false);

  isFavorited() {
    setState(() {
      arrow = !arrow;
    });
  }

  selectimg(int img) {
    setState(() {
      selectedImageIndex = img;
    });
  }

  selectname(int nme) {
    setState(() {
      selectedNameIndex = nme;
    });
  }

  isCountrydata() {
    setState(() {
      Countrydata = !Countrydata;
    });
  }

  isRegion() {
    setState(() {
      Region = !Region;
    });
  }

  isRegiondata() {
    setState(() {
      Regiondata = !Regiondata;
    });
  }

  issubRegion() {
    setState(() {
      subRegion = !subRegion;
    });
  }

  issubRegiondata() {
    setState(() {
      Subregiondata = !Subregiondata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Theme(
            data: Theme.of(context).copyWith(
                scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(Colors.transparent),
            )),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: RichText(
                          text: TextSpan(
                              text: "C",
                              style: commonstyle(
                                fontWeight: FontWeight.w600,
                                fontsize: 20,
                                color: const Color(0xFF0097A7),
                              ),
                              children: [
                                TextSpan(
                                    text: "ountry",
                                    style: commonstyle(
                                      fontWeight: FontWeight.w600,
                                      fontsize: 20,
                                    )),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 03),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorited();
                              });
                            },
                            icon: arrow == true
                                ? const Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.black,
                                  )
                                : const Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: Colors.black,
                                  )),
                      )
                    ],
                  ),
                ),
                if (arrow == true)
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: countryList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectimg(index);

                                countryList
                                    .firstWhere(
                                        (element) => element.isChecked == true)
                                    .isChecked = false;
                                countryList[index].isChecked = true;
                                countryList[index].flag = true as String;
                              });
                            },
                            child: ListTile(
                              leading: Image.network(countryList[index].flag,
                                  height: 30, width: 35),
                              title: Text(
                                countryList[index].name,
                                style: commonstyle(
                                    fontWeight: FontWeight.w500, fontsize: 15),
                              ),
                              trailing: Checkbox(
                                side: const BorderSide(
                                    width: 2, color: Color(0xFF0097A7)),
                                activeColor: const Color(0xFF0097A7),
                                shape: ContinuousRectangleBorder(
                                  side: const BorderSide(
                                      color: Color(0xFF0097A7)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                value: countryList[index].isChecked,
                                onChanged: (checked) {
                                  setState(() {
                                    countryList
                                        .firstWhere((element) =>
                                            element.isChecked == true)
                                        .isChecked = false;
                                    countryList[index].isChecked = true;
                                    selectimg(index);
                                    countryList[index].flag;
                                  });
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ))));
  }
}

TextStyle commonstyle({
  String? fontfamily,
  double? fontsize,
  FontWeight? fontWeight,
  Color? color,
  fontStyle,
}) {
  return TextStyle(
      fontFamily: fontfamily ?? 'Montserrat Alternates',
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: fontsize ?? 40,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? const Color(0xFF000000));
}

class CountryItem {
  String flag;
  String name;
  bool isChecked = false;

  CountryItem(this.flag, this.name, this.isChecked);
}

class RegionItem {
  String Rflag;
  String Rname;
  bool isCheckedd = false;

  RegionItem(this.Rflag, this.Rname, this.isCheckedd);
}

class SubregionItem {
  String SRflag;
  String SRname;
  bool isCheck = false;

  SubregionItem(this.SRflag, this.SRname, this.isCheck);
}

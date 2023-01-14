import 'package:flutter/material.dart';

class Constant {
  static String? homeTitle1 = "Pending Sauda";
  static String? homeTitle2 = "Today";
  static String? homeTitle3 = "Due's";

  static Image? bgImgGlobal =
      Image.asset("assets/images/all_bg.png", fit: BoxFit.contain);

  static String? customerLedgerImage = "assets/images/ledger_bg.svg";
  static Image? bellIconNot =
      Image.asset("assets/images/bell_ic.png", fit: BoxFit.contain);
  static Image? searchIc =
      Image.asset("assets/images/search_ic.png", fit: BoxFit.contain);
  static Image? phoneIc =
      Image.asset("assets/images/phone_ic.png", fit: BoxFit.contain);
  static Image? locatoinIc =
      Image.asset("assets/images/location_ic.png", fit: BoxFit.contain);
  static Image? calendarIc =
      Image.asset("assets/images/calendar_ic.png", fit: BoxFit.contain);
  static Image? checkIc =
      Image.asset("assets/images/check_ic.png", fit: BoxFit.contain);
  static Image? closeIc =
      Image.asset("assets/images/close_1_ic.png", fit: BoxFit.contain);
  static Image? calIc2 =
      Image.asset("assets/images/calender_ic_2.png", fit: BoxFit.contain);
  static Image? filterIc =
      Image.asset("assets/images/filter-ico.png", fit: BoxFit.contain);
  static Image? icon22 = Image.asset(
    "assets/images/pending_clock_ic.png",
    fit: BoxFit.contain,
  );
  static Image? homeBellIc = Image.asset(
    "assets/images/bell_ic.png",
    width: 12,
    height: 14,
    fit: BoxFit.none,
  );

  static Image? rightArow = Image.asset("assets/images/right_arrow_ic.png",
      width: 25.17, height: 16.77);

  static Color? homeBoxPendingRed = const Color(0xffE71928);
  static Color? homeBoxPendingOrange = const Color(0xffF68C33);
  static Color? homeBoxTodayColor1 = const Color(0xff00A7D4);
  static Color? homeBoxTodayColor2 = const Color(0xffF5BD3A);
  static Color? colorYellow = const Color(0xffF5BD3A);
  static Color? homeBoxDueColor1 = const Color(0xffE71928);
  static Color? homeBoxDueColor2 = const Color(0xffE71928);
  static Color? homeBoxDueColor3 = const Color(0xffF68C33);
  static Color? colorGreencc = const Color(0xFF00974C);
  static Color? chartGreenColor = const Color(0xFF92C149);
  static Color? chartBlueColor = const Color(0xFF00A7D4);
  static Color? chartOrangeColor = const Color(0xFF00A7D4);
  static Color? chartLineColor = const Color(0xFF111111).withOpacity(0.1);
  static Color tabSelColor = const Color(0xFFF68C33);

// Sauda ********************
  static Color? saudacolor1 = const Color(0xff92C149);
  static Color? saudacolor2 = const Color(0xff00974C);
  static Color? saudacolor3 = const Color(0xff0076AD);
  static Color? saudacolor4 = const Color(0xff00A7D4);
  static Color? saudacolor5 = const Color(0xff292F76);
  static Color? saudacolor6 = const Color(0xffF5BD3A);
  static Color? saudacolor7 = const Color(0xff9E275C);
  static IconData? saudaIcPlus = Icons.add;
  static IconData? cancelIc = Icons.cancel;
  static double? saudaBoxHeight = 62;
  static double? saudaImgWidth = 32;
  static double? saudaImgHeight = 32;
  static Image? sauduImage1 = Image.asset("assets/images/sauda_conv_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);
  static Image? sauduImage2 = Image.asset(
      "assets/images/sauda_extension_ic.png",
      width: saudaImgWidth,
      height: saudaImgHeight);
  static Image? sauduImage3 = Image.asset(
      "assets/images/booked_sauda_status_ic.png",
      width: saudaImgWidth,
      height: saudaImgHeight);
  static Image? sauduImage4 = Image.asset(
      "assets/images/price_discovery_ic.png",
      width: saudaImgWidth,
      height: saudaImgHeight);
  static Image? sauduImage5 = Image.asset("assets/images/limit_enhance_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);
  static Image? sauduImage6 = Image.asset("assets/images/sales_order_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);
  static Image? sauduImage7 = Image.asset("assets/images/sauda_approval_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);

  // Sales ******************
  static Color? salescolor1 = const Color(0xff00974C);
  static Color? salescolor2 = const Color(0xff00A7D4);
  static Color? salescolor3 = const Color(0xffF5BD3A);
  static Color? salescolor4 = const Color(0xff00A7D4);
  static String? salesTitle1 = "YTD Sales Analysis";
  static String? salesTitle2 = "Credit Limit Overview";
  static double? salesImgWidth = 20;
  static double? salesImgHeight = 20;

  // static SvgPicture? salesImageGraph = Image.asset("assets/images/sales_graph2.png");
  // login *****************
  static Image? loginImgBg = Image.asset("assets/images/login_bg.png");
  static Image? loginLogoImg = Image.asset(
    "assets/images/fortune_logo.png",
    width: 207,
    height: 135,
  );
  static Image? loginGroupLogo = Image.asset(
    "assets/images/adani_logo.png",
    width: 99,
    height: 64,
  );
  static Image? loginUserIc = Image.asset("assets/images/login_user_ic.png",
      width: 12, height: 12, fit: BoxFit.contain);
  static Image? loginLockIc = Image.asset(
    "assets/images/login_lock_ic.png",
    width: 12,
    height: 12,
  );

  //Call to Customer
  static Color? callToCcolor1 = const Color(0xFFF68C33);
  static IconData? callToCsbIcon1 = Icons.phone;
  static Color? callToCsbCol1 = const Color(0xFF00974C);

// Saudu conversion
  static IconData? sCIcon1 = Icons.location_city_rounded;

// Saudu Extention
  static Color? saExColorRed = const Color(0xFFE71928);

// Booked sauda status
  // static Color? booSauStacolor = const Color(0xFF00974C);

//Saudu priceDiscovery
  static Color? pricDisBocolor = const Color(0xFFA1A1A1);
  static Color? pricFIledCOl = const Color(0xFFFFFFFF);
  static Color? pricTxtCOl = const Color(0xFF000000);
  static double? pricTxtCOlSize = 14.0;
  static String? pricDisTitle1 = "Oil Type";
  static String? pricDisTitle2 = "Emami Quantity";
  static String? pricDisTitle3 = "Emami Price";
  static String? pricDisTitle4 = "Workable Price (Rs/case)";
  static String? pricDisTitle5 = "Competitor Name";
  static String? pricDisTitle6 = "Workable Price (Rs/case)";

  static String? pricButtonName = "Confirm Request";
  static double? pricbuttonNameSize = 14;
  static Color? pricbuttonTxtColor = Colors.white;
  static Color? pricbuttonColor = const Color(0xFFE71928);
  static double? pricbuttonHeight = 54;
  static double? pricbuttonRadiusTL = 15;
  static double? pricbutRadiusBL = 4;
  static Color? pricbuttonBorColorTre = const Color(0xFFE71928);

  static String? pricSkuName = "SKU Name";
  // COmmon Text form fiels
  static Color? textFormFieldColor = Colors.black;
  static double? textFormFieldSize = 13;
  static FontWeight? textFormFieldSizeFontW = FontWeight.normal;
  static Color? textFormFocuBorCol = const Color(0xFFF68C33);
  static double? textFormFocuBorWid = 1;
  static Color? textFormEnaBorCol = const Color(0xFFA1A1A1);
  static double? textFormEnaBorWid = 1;
  static double? textFormborderRadiusTL = 15;
  static double? textFormborderRadiusBR = 4;
  static double? textFormcontentPadHor = 16;
  static double? textFormcontentPadHVer = 2;

  //Sauda Limit Enhancement
  static String? saudaLETxt1 = "Distributor Name";
  static String? saudaLETxt2 = "Required Additional Sauda Limit (MT)";
  static String? saudaLETxt3 = "Remarks";
  static String? saudaLEButtonTxt1 = "Cancel";
  static String? saudaLEButtonTxt2 = "Raise Request";
  static String? todayRateTxt1 = "Book Now";
  static int? saudaLETxt3MaxLine = 3;
  static Color? saudaLETbuttonBorder = const Color(0xFF757575);
  static Color? saudaLETbuttonColor = Colors.white;
  static Color? saudaLETTxtColor = const Color(0xFF757575);
  static String? saudaLETBox1Txt1 = "Available Sauda Limit";
  static String? saudaLETBox1SubTxt1 = "9539.11 MT";
  static Color? saudaLETBoxColor1 = const Color(0xFF00974C);
  static String? saudaLETBox2Txt2 = "Total Sauda Booked";
  static String? saudaLETBox2SubTxt2 = "10000 MT";
  static Color? saudaLETBoxColor2 = const Color(0xFF00A7D4);

  // More Dialog Box
  // static Image? moreDialogIc1 =
  //     Image.asset("assets/images/update_ic.png", width: 18, height: 15);
  // font size ***************
  static double? headingSix = 16.0;
  static double? fontSize0 = 0.0;
  static double? fontSize09 = 9.0;
  static double? fontSize10 = 12.0;
  static double? fontSize11 = 13.0;
  static double? fontSize12 = 14.0;
  static double? fontSize13 = 15.0;
  static double? fontSize14 = 16.0;
  static double? fontSize15 = 17.0;
  static double? fontSize16 = 16.0;
  static double? fontSize18 = 18.0;
  static double? fontSize20 = 20.0;
  static double? fontSize22 = 22.0;
  static double? fontSize23 = 23.0;
  static double? fontSize24 = 24.0;
  static double? fontSize25 = 25.0;

  // font weight *************
  static FontWeight? fontWeight400 = FontWeight.w500;
  static FontWeight? fontWeight500 = FontWeight.w600;
  static FontWeight? fontWeight600 = FontWeight.w700;

  // color ********************
  static Color? colorBlack = const Color(0xFF000000);
  static Color? colorLightGray = const Color(0xFFA1A1A1);
  static Color? colorWhite = const Color(0xFFffffff);
  static Color? colorRed = const Color(0xFFE71928);
  static Color? colorGray75 = const Color(0xFF757575);
  static Color? colorGray45 = const Color(0x45000000);
  static Color? colorOrange = const Color(0xFFF68C34);
  static Color? saudaAppDullColor = const Color(0xFF757575);
  static Color? colorDullYellow = const Color(0xFFFEF8EB);
  static Color? colorLightGreen = const Color(0xFF39A50A);

  // static Color? colorDullYellow = const Color(0x01BD3A1A);

  static Color? colorDullOrange = const Color(0xFFFFFBF7);
  static Color? colorDullGray77 = const Color(0xFF757575);
  static Color? colorVerLightGray = const Color(0xFFF1F1F1);
  static Color? colorOfGray = const Color(0xFFECECEC);

  // commom *******************
  static double? containerWrapper = 8;
  static double? containerTopWrapper = 90;
  static double? containerTopWrapperApproval = 90;
  static double? afterTabSize = 12.0;
  static double? afterHeadingSize = 4.0;
}

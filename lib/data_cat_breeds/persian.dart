import 'package:flutter/material.dart';

class Persian extends StatefulWidget {
  const Persian({super.key});

  @override
  State<Persian> createState() => _PersianState();
}

class _PersianState extends State<Persian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
          title: const Text("เปอร์เซีย / Persian",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center),
          backgroundColor: const Color(0xffD9A05B)),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Material(
                  color: Colors.white,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    child: Image.asset(
                      'image/Persian.png',
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('ลักษณะนิสัย',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.left),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: 400,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- สงบเสงี่ยม สุภาพ อ่อนโยน ฉลาด ว่านอนสอนง่าย ชอบที่จะนั่งนิ่งๆอยู่ข้างกายเจ้าของ\n\n\t\t- สามารถปรับตัวได้ดี จะไม่ค่อยชอบใจเมื่ออยู่ในสถานที่มีเสียงดังเพราะเป็นเเมวรักสงบ\n\n\t\t- มีนิสัยง่ายๆ ไม่ค่อยก่อกวนเจ้าของและรวมถึงไม่ค่อยแสดงออกว่าต้องการความรักความสนใจจากเจ้าของเท่าไหร่\n\n\t\t- มีความเป็นมิตรกับครอบครัว ยังเข้ากับเด็กๆได้ดีเเต่ยังมีความชอบอยู่เงียบๆอาจจะมีไม่ชอบถูกรบกวนมากนัก ',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 31, 31, 31),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Kanit'),
                    textAlign: TextAlign.start),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('ลักษณะเด่นของสายพันธุ์',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.left),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: 920,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- แมวขนาดกลางจนถึงขนาดใหญ่มีโครงสร้างกระดูกที่ใหญ่และแข็งแรง\n\n\t\t- เพศเมียมีน้ำหนักอยู่ราว 3-5 กิโลกรัม เพศผู้มีน้ำหนักได้ถึง 4-6 กิโลกรัม\n\n\t\t- หัวและหน้ากลม หน้าผากโหนก แก้มมีโหนกเต็ม ดวงตากลมโต และอยู่ในตำแหน่งที่ห่างกัน มีจมูกที่หักที่เป็นจุดเด่นบนใบหน้า\n\n\t\t- ขาสั้นเตี้ย หูเล็กมีปลายหูที่กลมมน หางสั้นตรงและฟูคล้ายกับหางกระรอก จมูกเป็นสั้นและหัก ขนยาวหนาฟู มีท่วงท่าการเดินดูสง่างาม\n\n\t\t- มีจุดเด่นที่ใบหูพับลงไปข้างหน้า และพับลงต่ำ ซึ่งบางตัวมีปากโค้งได้รูปรับกับคางพอดี ขนยาวเเละหางฟู มีความมันวาว มีขนเส้นเล็กแซมระหว่างขาหน้า ใบหู นิ้วเท้า และที่หาง\n\n\t\t- ส่วนสีขนของแมวเปอร์เซียที่มักจะพบเห็นบ่อยจะเป็น สีขาว สีดำ สีน้ำเงิน สีครีม สีแดง และสีช็อกโกแลต โดยมีได้หลายรูปแบบทั้งสีเดียวตลอดตัว สองสี หรือสามสี ส่วนสีดวงตาก็จะเป็นสีเดียวกับสีขน\n\n\t\t- นอกจากสีที่มีหลากหลายแล้ว ลวดลายก็มีหลายแบบเช่นกัน โดยอาจจะพบขนสีหลักและแซมด้วยสีเงิน ทอง ดำ ทำให้เกิดเป็นเฉดสีหลายแบบและลายต่างๆ เช่น สีควันบุหรี่ ลายแบบสลิด สองสี เป็นต้น อายุประมาณ 8-15 ปี หรือมากกว่านั้น',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 31, 31, 31),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Kanit'),
                    textAlign: TextAlign.start),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('การดูแล',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.left),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: 520,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- ไม่จำเป็นต้องออกกำลังกายหนักมาก เพียงเเค่ให้เเมวใช้พลังงานในเเต่ละวันบ้าง เล่นกับเจ้าของเป็นสิ่งที่ช่วยกระตุ้นให้เเมวออกกำลังกาย เพื่อเสริมสร้างร่างกายให้เเข็งเเรงอีกทั้งยังดีต่อสภาพจิตใจ ทำให้เเมวไม่รู้สึกเบื่อ\n\n\t\t- อาหาร ควรให้ในปริมาณที่เหมาะกับร่างกาย เเละกิจกรรมในเเต่ละวัน ผู้เลี้ยงจะต้องใส่ใจพอสมควร เพราะอาหารบูดเสียก็ส่งผลต่อสุขภาพเเมวได้\n\n\t\t- โรคที่อาจจะเกิดได้  โรคผิวหนัง โรควิตกกังวลต่อการแยกจาก หรือเกิดจากบาดแผลทางใจ โรคกล้ามเนื้อหัวใจหนาผิดปกติ โรคข้อสะโพกเจริญผิดปกติ โรคระบบทางเดินอาหารและตับ โรคระบบทางเดินปัสสาวะและไต โรคระบบทางเดินหายใจ โรคตา',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 31, 31, 31),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Kanit'),
                    textAlign: TextAlign.start),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            width: 500,
          )
        ]),
      ),
    );
  }
}

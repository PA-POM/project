import 'package:flutter/material.dart';

class Siamese extends StatefulWidget {
  const Siamese({super.key});

  @override
  State<Siamese> createState() => _SiameseState();
}

class _SiameseState extends State<Siamese> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
          title: const Text("วิเชียรมาศ / Siamese",
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
                      'image/Siamese.png',
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
              height: 310,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- เป็นเเมวที่ฉลาดมาก ขี้อ้อน เข้ากับคนได้ง่าย ร้องเสียงดังมาก มีนิสัยคล้ายสุนัข ชอบเล่นคาบของเเล้วนำมาคืน \n\n\t\t- มีเสน่ห์ ต้องการความเอาใจใส่ ต้องการความรักเป็นอย่างมาก ชอบให้ความรักกับเจ้าของ\n\n\t\t- สามารถปล่อยให้เเมวอยู่ตัวเดียวในบ้านได้ทั้งวัน ชอบเข้าสังคม กระตือรือร้น',
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
              height: 450,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- เป็นแมวขนาดกลาง หัวมีลักษณะยาวสมส่วนดวงตาขนาดใหญ่ สีฟ้า เป็นรูปทรงอัลมอนด์ คอและลำตัวยาว ขาเรียวเล็ก อุ้งเท้ากลม, หางยาวลักษณะคล้ายหางเสือ\n\n\t\t- แต้มบริเวณหางจะมีสีเข้มจากปลายหาง และจางลงเมื่อขึ้นมาถึงโคนสะโพก ขนสั้น บางเบา และนุ่มคล้ายเส้นไหม\n\n\t\t- สีขนสามารถพบได้หลากหลายสี เช่น สีซีล สีฟ้า เมล สีเหลืองส้ม สีซินนาม่อน  มีแต้มสีครั่งหรือสีน้ำตาลไหม้ สีครั่งหรือสีน้ำตาลไหม้ที่บริเวณใบหน้า หูทั้งสองข้าง เท้าทั้งสี่ หางและที่อวัยวะเพศ รวม 9 แห่ง อายุเฉลี่ยอยู่ที่ 15-20 ปี  ',
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
              height: 620,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- การออกกำลังกาย ออกกำลังกายด้วยการเล่นเกมส์ เช่น การเล่นคาบของคืน หรือการปาลูกบอลให้แมววิ่งไปมา ช่วยทำให้เพิ่มความสัมพันธ์ระหว่างเจ้าของกับแมวได้อีกด้วย นอกจากนี้การให้แมวปีนต้นไม้ จะช่วยเสริมสร้างกล้ามเนื้อให้แข็งแรงมากยิ่งขึ้น \n\n\t\t- อาหาร มีนิสัยชอบกลืนอาหารมากกว่าเคี้ยวอาหาร ควรกระตุ้นให้แมวเคี้ยวอาหาร  เพราะการเคี้ยวอาหารเม็ดจะช่วยทำความสะอาดฟัน ลดการสะสมของหินปูนบริเวณฟัน ดั้งนั้นการเลือกขนาดและรูปแบบอาหารเม็ดจะมีผลต่อการกินอาหาร อาหารเม็ดที่เเมวต้องการ ควรประกอบด้วยสารอาหาร วิตามิน เเร่ธาตุ เช่น โปรตีน 25%, ไขมัน 40%, ไฟเบอร์, และโอเมก้า-3, โอเมก้า-6 เป็นต้น \n\n\t\t- โรค โรคลิ้นหัวใจเอออร์ติกตีบ โรคหอบหืด หลอดลมอักเสบแบบเรื้อรัง โรคข้อสะโพกเจริญผิดปกติ โรคจอประสาทตาเสื่อม โรคมะเร็งต่อมน้ำเหลืองบริเวณช่องอก',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 31, 31, 31),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Kanit'),
                    textAlign: TextAlign.start),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

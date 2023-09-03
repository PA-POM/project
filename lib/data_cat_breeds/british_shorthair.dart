import 'package:flutter/material.dart';

class BritishShorthair extends StatefulWidget {
  const BritishShorthair({super.key});

  @override
  State<BritishShorthair> createState() => _BritishShorthairState();
}

class _BritishShorthairState extends State<BritishShorthair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
          title: const Text("บริติช ช็อตแฮร์ / British Shorthair",
              style: TextStyle(
                  fontSize: 20,
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
                      'image/British_shorthair.png',
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
              height: 140,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- นิสัยขี้เล่น แต่ไม่จำเป็นต้องได้รับการดูแลมากมาย และสามารถอยู่ตามลำพังเป็นเวลานานได้ เลี้ยงง่าย สุขุม จงรักภัคดี สุงสิงกับคนในครอบครัว เป็นเพื่อนที่ดีสำหรับคนโสด',
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
                    '\t\t- แมวบริติชชอร์ตแฮร์มี ร่างกายกระชับและมีกล้ามเนื้อ ขาที่แข็งแรงและแข็งแรง หน้าอกและไหล่กว้าง หางหนาแข็งแรงปลายมน ใบหน้าที่กลมและกว้าง\n\n\t\t- ดวงตาที่กลมโตจะเป็นสีทองแดง สีทอง หรือสีน้ำเงิน ส่วนหูเล็กๆ จะมีลักษณะกลมที่ปลายและแยกออกจากกันบนหัว แก้มอ้วนและกรามที่แข็งแรง\n\n\t\t- มีสีขนและลวดลายที่หลากหลาย สีที่พบมากที่สุด ได้แก่ สีฟ้า สีดำ สีขาว สีครีม สีแดง และสีเงิน ยังสามารถมีลวดลายต่างๆ ได้ เช่น ลายพื้นสีทึบ ลายตาราง สองสี สีที่รู้จักมากที่สุดเป็น สีน้ำเงิน',
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
              height: 890,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    '\t\t- ควรเเปรงขนสัปดาห์ละครั้ง ทุกสัปดาห์ ใช้เเปรงที่ขนสั้นหรือเเปรงที่ออกเเบบมาโดยเฉพาะ\n\n\t\t- การดูแลในช่วงฤดูผลัดขน เพิ่มความถี่ในการเเปรงขนให้เป็นหลายๆครั้งต่อสัปดาห์\n\n\t\t- การอาบน้ำ ให้อาบเป็นครั้งคราวสามารถรักษาความสะอาดได้จากการเเปรงขน\n\n\t\t- ตัดเล็บและทำความสะอาดหู ให้ทำเป็นประจำเพื่อให้อยู่ในสภาพดีเเละป้องกันการขีดข่วน เช็ดสิ่งสกปรก เศษผงภายในหูของเเมวเเละทำความสะอาดอย่างเบามือ\n\n\t\t- ที่อยู่อาศัยและสิ่งแวดล้อม แมวต้องการพื้นที่สำหรับเล่น ปีนป่าย ข่วน ที่ลับเล็บ การปีนต้นไม้ เเละของเล่นที่ทำให้เเมวเพลิดเพลินเเละกระตุ้นจิตใจได้ ต้องเตรียมกระบะทรายที่สะอาดเตียงนุ่มๆ\n\n\t\t- อาหาร ควรให้อาหารที่ดีต่อสุขภาพและสมดุลแก่แมว อาหารแมวคุณภาพสูงที่อุดมไปด้วยโปรตีนและคาร์โบไฮเดรตต่ำสามารถช่วยรักษาน้ำหนักให้แข็งแรงได้ ให้ป้อนอาหารในปริมาณน้อย ๆ ตลอดทั้งวันเพื่อป้องกันการกินมากเกินไป\n\n\t\t- ปัญหาทั่วไปด้านสุขภาพ โรคที่อาจจะเกิดขึ้นได้ โรคอ้วน โรคหัวใจ โรคไต ควรนำไปพบเเพทย์เป็นประจำ',
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

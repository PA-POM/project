import 'package:flutter/material.dart';

class Bengal extends StatefulWidget {
  const Bengal({super.key});

  @override
  State<Bengal> createState() => _BengalState();
}

class _BengalState extends State<Bengal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
          title: const Text("เบงกอล / Bengal",
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
                      'image/Bengal.png',
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        '\t\t- มีนิสัยรักใคร่ ชอบแสดงความรัก และเป็นแมวที่มีพลังเยอะ ว่องไว ชอบเล่น ชอบปีนป่าย ฉลาด ชอบที่จะสังเกตสิ่งต่าง ๆ รอบตัว และสามารถส่งเสียงร้องที่เป็นเอกลักษณ์\n\n\t\t- กระตือรืนร้นและเข้าสังคมได้ดี สำหรับการเลี้ยงในครอบครัวที่มีเด็กและสุนัขที่เป็นมิตร สามารถเรียนรู้เทคนิคง่ายๆ ชอบที่ได้รับความสนใจจากเด็กๆ ที่เล่นกับเบงกอลด้วยความรักและเคารพ จะหลีกเหลี่ยงการเล่นกับเด็กน้อยที่หัดเดิน\n\n\t\t- เป็นแมวที่ไม่กลัวอะไร แม้แต่สุนัขก็ตามจึงสามารถเล่นกับสุนัขที่ไม่ทำร้ายเเมวได้ มีความเป็นนักล่าอยู่จึงไม่ควรวางใจกับสัตว์เลี้ยงขนาดเล็กที่สามารถเป็นเหยื่อได้',
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 31, 31, 31),
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Kanit'),
                        textAlign: TextAlign.start),
                  ),
                ),
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        '\t\t- ลักษณะภายนอกคล้ายแมวป่า แข็งแรง สามารถมองเห็นกล้ามเนื้อได้ชัดเจน มีความสมดุลของกล้ามเนื้อและขนาดตัว มีขากรรไกรที่แข็งแรง\n\n\t\t- มีจุดสังเกตเป็นสีเข้มบริเวณรอบดวงตา มีหูขนาดเล็ก แต่มีความกลมมนที่ส่วนปลายหู ขนสั้นถึงปานกลาง ผิวสัมผัสมีความแน่นและเรียบ\n\n\t\t- มีสีของขนที่เป็นเอกลักษณ์ของสายพันธุ์ไม่เหมือนกับแมวชนิดอื่น คือ มีลายจุด, ลายคล้ายดอกกุหลาบ, ลายลูกศร หรือ ลายหินอ่อน จุดส่วนใหญ่จะขึ้นตามตัวเเบบสุ่มหรือตามเเนวลำตัว มีอายุขัยเฉลี่ยประมาณ 14-16 ปี',
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 31, 31, 31),
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Kanit'),
                        textAlign: TextAlign.start),
                  ),
                ),
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        '\t\t- การออกกำลังกาย ชอบการวิ่งเล่น ปีนป่ายบนที่สูง ชอบการฝนเล็บที่สูง หรือของเล่นสำหรับการปีนป่ายอื่นๆ การออกกำลังกายส่วนใหญ่จึงเกิดขึ้นจากกิจกรรมที่ทำเป็นปกติ สามารถฝึกเพิ่มได้\n\n\t\t- อาหาร เเมวสายพันธุ์นี้จัดอยู่ในกลุ่มกินเนื้อ เลยไม่เหมาะกับการกินอาหารเม็ดที่่มีปริมาณโปรตีนไม่เพียงพอ เหมาะกับการให้กินเนื้อสัตว์ดิบจาก BARF อาจจะต้องเลือกที่มีโปรตีนมากกว่า 50-80%ของปริมาณสารอาหาร\n\n\t\t- โรคที่อาจจะเกิด โรคระบบประสาท โรคระบบไหลเวียนโลหิตและหัวใจ โรคระบบกระดูกเอ็นและข้อต่อ โรคตา',
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 31, 31, 31),
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Kanit'),
                        textAlign: TextAlign.start),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

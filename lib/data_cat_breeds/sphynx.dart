import 'package:flutter/material.dart';

class Sphynx extends StatefulWidget {
  const Sphynx({super.key});

  @override
  State<Sphynx> createState() => _SphynxState();
}

class _SphynxState extends State<Sphynx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
          title: const Text("สฟิงซ์ / Sphynx",
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
                      'image/Sphynx.png',
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
                        '\t\t- เข้าสังคมเก่ง ซุกซน เป็นมิตร และชอบให้คนสนใจ ขี้เล่น กระตือรือร้น และอยากรู้อยากเห็นชอบอยู่ใกล้ ๆ และเข้ามาวนเวียนกับทุก ๆ กิจกรรมที่เจ้าของทำ',
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
                        '\t\t- ไร้ขน ถ้าดูจากภายนอกจะไร้ขนเเต่สฟิงซ์มีขนนุ่มละเอียดปกคลุมไปทั่วร่างกาย สัมผัสจะเหมือนลูกพีช ไม่มีหนวดและขนตาหัวมีรูปทรงคล้ายกับหัวของแมวเดวอน เร็กซ์ ดวงตาลึกกลมคล้ายเลมอน\n\n\t\t- รูปร่างของสฟิงซ์บอบบางแต่มีกล้ามเนื้อ อกหนากลม ขาเรียวยาวและดูโก่งจากอกทรงกลม หางยาวเรียวและสากเมื่อสัมผัส ตัวอุ่นนุ่ม ผิวหนังบางส่วนบนหัว ข้างลำตัว และขามีรอยย่น แต่บริเวณอื่น ๆ จะตึงเรียบ ผิวหนังยังมีสีคล้ำ เเละมีลวดลายสีสันหลากหลาย',
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
                        '\t\t- ช่วง อายุ 1-3 เดือน ควรใส่ในเรื่องของอุณหภูมิร่างกายเป็นพิเศษ ห้องแอร์ควรมีที่นอนอุ่น ๆ พร้อมโคมไฟให้ความอบอุ่นเป็นพิเศษ อาหารสูตรลูกแมวที่เหมาะสม สอบถามกับทางฟาร์มแมวก่อนได้ ว่าให้อาหารยี่ห้อไหน หากต้องการเปลี่ยนยี่ห้ออาหารให้ค่อย ๆ เปลี่ยนทีละน้อย หรือหลังจากย้ายบ้านมาแล้วอย่างน้อย 2 สัปดาห์\n\n\t\t- โตเต็มวัย อายุ 1 ปีขึ้นไป ควรอาบน้ำบ่อยกว่าแมวมีขนอื่น ๆ หรืออย่างน้อยสัปดาห์ละ 1 ครั้ง เนื่องจากผิวมีไขมันเเละเหงื่อมากว่าสายพันธุ์อื่น จำเป็นต้องใช้แชมพูสูตรอ่อนโยนต่อสัตว์เลี้ยงและน้ำอุ่นพอดี ไม่เย็นหรือร้อนเกินไป เมื่ออาบเสร็จแล้วควรเช็ดตัวให้แห้งในทันที\n\n\t\t- แมวสายพันธุ์มีใบหูขนาดใหญ่และมีขนหูน้อยหรือไม่มีเลย ส่วนหูชั้นในให้ใช้น้ำยาเช็ดหูสำหรับแมวและคอตตอนบัดส์ขนาดเล็กเช็ดทำความสะอาดอีกครั้ง\n\n\t\t- บริเวณอุ้มเท้าไม่มีขน จึงทำให้สิ่งสกปรกเข้าไปติดตามเล็บได้ง่าย โดยเฉพาะสิ่งสกปรกหลังเข้ากะบะทรายแมว เจ้าของจึงต้องใช้กรรไกรตัดเล็บแมวโดยเฉพาะตัดเล็บให้น้องแมวสฟิงซ์เป็นประจำ\n\n\t\t- ผิวของแมวเป็นส่วนที่สัมผัสกับอากาศโดยตรงทำให้เสี่ยงต่อการอุดตันของสิ่งสกปรกบริเวณรูขุมขน นำไปสู่การเกิดสิวหัวดำได้เช่นเดียวกับผิวคนเรา ควรใช้ผ้าสะอาดชุบน้ำอุ่นเพื่อขัดผิวเป็นประจำ ทั้งนี้เพื่อป้องกันปัญหาสุขภาพผิวหนังที่จะตามมาได้อีกด้วย\n\n\t\t- พื้นฐานแล้วแมวสฟิงซ์จะมีระบบเผาผลาญพลังงานที่ดีกว่าแมวสายพันธุ์อื่น จึงทำให้ร่างกายมีอุณหภูมิสูง และเหงื่อออกได้ง่าย เจ้าของต้องคอยดูแลเป็นพิเศษ เช่น หากเลี้ยงในห้องแอร์ ควรมีตะกร้าหรือที่นอนอุ่น ๆ หากเลี้ยงในอุณหภูมิห้องปกติ ก็ควรเป็นห้องที่อากาศถ่ายเทได้สะดวก\n\n\t\t- ควรแปรงฟันให้แมวสฟิงซ์ทุก ๆ สัปดาห์  เพื่อฟ้องกันคราบหินปูนและปัญหาเหงือก โดยให้ใช้แปรงและยาสีฟันสำหรับแมวโดยเฉพาะเท่านั้น\n\n\t\t- ควรจะมีคอนโดแมว ที่ลับเล็บและของเล่นแมว เนื่องจากแมวสฟิงซ์เป็นแมวที่ขี้เล่น ฉลาด ชอบปีนป่าย เรียกได้ว่าซื้อมาไว้ได้ใช้งานคุ้มค่าแน่นอน\n\n\t\t- หลายคนมักจะเข้าใจผิดว่าเลี้ยงแมวสฟิงซ์ในไทยต้องทาครีมกันแดดด้วย จริงๆเเล้ว แล้วไม่จำเป็นต้องทาครีมหันแดด สามารถปล่อยให้ผิวหนังของสฟิงซ์รับแดดอ่อน ๆ ได้เพื่อสุขภาพที่ดี และเลี่ยงการสัมผัสกับแดดจัดเพื่อป้องกันผิวไหม้และอุณหภูมิที่ร้อนเกินไป',
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

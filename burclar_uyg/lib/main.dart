import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "BURÇ YORUMLARI",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: burclar(),
      ),
    );
  }
}

class burclar extends StatefulWidget {
  @override
  _burclarState createState() => _burclarState();
}

class _burclarState extends State<burclar> {
  int resimler_index = 1;
  int yorum = 0;

  List<String> burc_isimleri = [
    "AKREP","ASLAN","BALIK","BAŞAK","BOĞA","İKİZLER","KOÇ","KOVA","OĞLAK","TERAZİ",
    "YAY","YENGEÇ"
  ];
  burc(){
    setState(() {
      resimler_index = resimler_index + 1;
      if (resimler_index == 13){
        resimler_index = 1;
      }
    });
  }


  List<String> yorumlar = [
    "SENİ NEYİN BEKLEDİĞİNİ HEMEN ÖĞREN",
    "Duygusal ilişkiler, evlilik konularında radikal değişikliklere yıl boyu hazır olun.",
    "Eşinizle ilgili konularda olumsuzluklar gündeme gelebilir.",
    "Gerçek sevgiden asla vazgeçmeyen Balıklar, yaşadıkları kırıklıklara rağmen içleri hep umut doludurlar.",
    "Başak burcu insanları kolay güvenmeyen bir yapıya sahip olduğu için genellikle geç yaşlarda ya da hiç evlenmedikleri görülür. Aşkın detaylarını incelemek yerine duygularını en iyi şekilde yaşamalıdırlar.",
    "Gerçek aşkı elbet bulacaklarını düşünürler. Kendilerine oldukça güvenilirler fakat bir o kadar da inatçıdırlar.",
    "İkizler burcu aşkta mantığını ön planda tutar.",
    "İlişkilerinde son derece kıskanç olan Koç burçları, partnerini paylaşmayı sevmez.",
    "Kova burcu için karşısındakinin dış görünüşü önemli değildir. Kova burcu için önemli olan, karşındaki kişinin zeki olmasıdır.",
    "Oğlak burçları sevgi dolu bir kalbe sahiptirler.",
    "Terazi burcu insanları zevkli olmalarıyla bilinmektedir.",
    "Yay burcu insanları, aşk hayatlarında romantik ve duygusal davranışlar sergilemezler.",
    "Sevgi dolu ve anlayışlı Yengeç burçları ilişkilerinde de aşık olduğu kişiler haricinde gözü hiçbir şey görmez.",
    "Akrep özellikle geniş ölçekli maddi konularda, analitik yeteneği ve sezgileri yardımıyla olumlu adımlar atar ve başarılı olur.",
    "Bonkör, lüksü seven, gösterişten hoşlanan Aslan için para biriktirmek neredeyse imkansız gibidir.",
    "Balık burcu, belki de paranın varlığından bile habersiz olabilir.",
    "Çok ince hesaplar yaparak, en iyi kazancı sağlayan yatırım sistemini başarıyla uygular.",
    "Tüm burçların içinde bireyin yaşamına devam etmek için, gerekli kaynakları saptaması ve sağlamasındaki başarısıyla tanınır.",
    "İkizler, hayatın diğer alanlarında olduğu gibi para konusunda da uzun uzun düşünmekten plan yapmaktan hoşlanmaz.",
    "Girişimci bir ruhu olduğu için yeni yatırımlar yapmak, riskli yollardan para kazanmak, ruhsal olarak tatmin olmasına ve özgüvenini geliştirmesine yardım eder.",
    "Para ancak teknolojiye sahip olmak istediğinde ya da hümaniter amaçla, insanlara yardım etmek istediğinde Kova nın aklına gelir.",
    "Yatırım yaparken, kazançtan çok emniyet öncelik taşır.",
    "Denge unsuru olan Terazi finansal olarak da hayatında stabilizasyona ihtiyaç duyar.",
    "Her şeyi büyük boyutlarda düşünen Yay burcu, büyük yatırımlar yapmayı, geniş ölçekli meblağlarla oynamayı sever.",
    "Genellikle desteğe ihtiyacı varmış gibi algılanmasına rağmen, güvenliğine çok düşkün olan Yengeç, finansal konularda da oldukça dikkatlidir.",
    "Bugün endişe duyduğunuz konularla ilgilenmek durumunda kalabilirsiniz. Bu olaylar size bir tür kriz getirebilir. Sinirlerinizi kontrol etmeye çalışmalısınız.",
    "Bugün alacağınız desteklerle işlerinizi tamamlamanıza yardımcı olacaktır. Gelecek beklentilerinizle ilgili yeni sorumluluklar alabilirsiniz.",
    "Bugün ev hayatınızla ilgili konularda karşıt fikirlerle karşılaşabilirsiniz. Planlarınızda değişiklikler olabilir.",
    "İş hayatınızla ilgili konularla ilgileneceğiniz bir gündesiniz. Başarı için çok çaba sarf edebilirsiniz. Üstlerinizden destek almak sizi motive edecektir.",
    "Sorumlu olduğunuz işlerde hayaller içinde olmamaya özen gösterin. Mücadele ettiğiniz konularda çatışmalı olayların içinde kalmamaya bakın",
    "Bugün kişisel hassasiyetinizin olduğu konular gündeminizi meşgul edebilir. Hayallerinizin peşinden gidip, yeni başlangıçlar yapmak isteyebilirsiniz.",
    "Gün içinde yoğun bir temponuz olabilir. İletişimden kaynaklanan çatışmalara dikkat etmelisiniz.",
    "Uğraştığınız işlerde en iyisini yapmaya çalışacağınız bir gündesiniz. Yaratıcı olduğunuz konulara zaman ayırmak isteyebilirsiniz",
    "Bugün çalışma hayatınızda daha fazla sorumluluk alabilirsiniz. Gelecek yönünde hedeflerinizle ilgili üstlerinizle iletişime geçebilirsiniz",
    "Gün içinde yeni şeyler öğrenmek için çaba gösterebilirsiniz. Akademik konularla ilgileneceğiniz zamanlar var.",
    "Eşinizle ilgili konular gündeminizi meşgul edebilir. Sabah saatlerinde daha fazla sezgilerinizle hareket etme eğiliminde olabilirsiniz.",
    "Tartışmalara karşı duyarlı olun. Olayları kendi akışı içinde görmek, fedakarlıkta bulunmak gerekebilir."
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              highlightColor: Colors.purpleAccent,
              splashColor: Colors.purpleAccent,
              onPressed: burc,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/$resimler_index.jpg'),
                radius: 70.0,

              ),
            ),
          ),
          Text(
            burc_isimleri[resimler_index-1],
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Pacifico',
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text(
                "AŞK DURUMU",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
              onTap: (){
                setState(() {
                  yorum = resimler_index;
                });
              },
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
            child: ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text(
                "PARA DURUMU",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
              onTap: (){
                setState(() {
                  yorum = resimler_index+12;
                });
              }
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
            child: ListTile(
              leading: Icon(
                Icons.explore,
                color: Colors.blue,
              ),
              title: Text(
                "GÜNLÜK TAVSİYE",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              onTap: (){
                setState(() {
                  yorum = resimler_index+24;
                });
              }
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            height: 170,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(
                yorumlar[yorum],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


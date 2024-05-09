import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/gestures.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.open();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magic Book",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAGIC BOOK",
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 75),
                child: Text(
                  """
POLATLI TOBB SCIENCE HIGH SCHOOL
TUBITAK 4006-B
ENGLISH READING APPLICATION""",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 19),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20), // Buton boyutu
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 1'),
                    ),
                  ),
                  SizedBox(width: 20), // Aralık ekledik
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 2'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 3'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FourthTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 4'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FifthTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 5'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SixthTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 6'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SeventhTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 7'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EigthTextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('TEXT - 8'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DictionaryPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 199, 217),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('DICTIONARY'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 190, 191),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('First Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Second Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Third Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Fourth Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Fifth Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FifthTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Sixth Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SixthTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Seventh Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeventhTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Eigth Text'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EigthTextPage()),
                );
              },
            ),
            ListTile(
              title: Text('Dictionary'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DictionaryPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'Hi': 'Merhaba',
    'Samia,': 'Samia',
    'Just': 'Sadece',
    'a': 'bir',
    'quick': 'hızlı',
    'email': 'e-posta',
    'come': 'gelmek',
    'to': 'ile',
    'say': 'Söylemek',
    'that': 'O',
    'sounds': 'sesler',
    'like': 'beğenmek',
    'great': 'harika',
    'idea': 'fikir',
    'sounds': 'görünüyor',
    'Sunday': 'Pazar',
    'for': 'için',
    'my': 'benim',
    'better': 'daha iyi',
    'if': 'eğer',
    'your': 'senin',
    'still': 'hala',
    'good': 'iyi',
    'why': 'neden',
    'here': 'buraya',
    "don't you come": 'gelmiyorsun',
    'Finally': 'Sonunda',
    'new': 'yeni',
    'flat': 'daire',
    'and': 've',
    'moved': 'taşındıktan',
    'in': 'sonra',
    'kitchen': 'mutfak',
    "we've done": 'yaptığımız',
    'all': 'bütün',
    'work': 'işleri',
    'see': 'görebilirsin',
    'home': 'Evde',
    'eat': 'yemek',
    'then': 'sonra',
    'afternoon': 'öğleden sonra',
    'going to be': 'olacak',
    'so': 'çok',
    'catch': 'araya',
    'up': 'gelmek',
    'finally': 'için',
    'hear': 'duymak',
    'want': 'istiyorum',
    'Our address is': 'Adresimiz',
    'but': 'ama',
    'here': 'burada',
    'house': 'ev',
    'numbers': 'numaraları',
    'really': 'gerçekten',
    'strange': 'tuhaf',
    'are': 'olduğu',
    'because': 'çünkü',
    'a bit': 'biraz',
    'to find': 'bulması',
    'difficult': 'zor',
    'If': 'Eğer',
    'the post office': 'postanenin',
    'left': 'solundan',
    'turn': 'dönüp',
    'Charles': 'Charles',
    'Road': 'Road',
    'big': 'büyük',
    'white': 'beyaz',
    'past': 'doğru',
    'keep going': 'devam',
    'going': 'edersen',
    'behind': 'arkasında',
    'numbered': 'numaralı',
    'small': 'küçük',
    'side': 'yan',
    'street': 'sokak',
    'with': 'var',
    "doesn't": 'yok',
    'ask': 'diye',
    'me': 'sorma',
    'But': 'Ama',
    'get lost': 'kaybolursan',
    'call': 'ara',
    'you': 'seni',
    'get': 'alırım',
    'Let': 'Let',
    'know': 'me',
    'if': 'if',
    'there': 'there',
    "'s": "'s",
    'anything': 'anything',
    'about': 'about',
    'do/don': 'do/don',
    "'t": "'t",
    'like': 'beğenmediğin',
    'to': 'to',
    'eat': 'yemek',
    'Really': 'Gerçekten',
    'looking': 'bakıyorum',
    'forward': 'ileri',
    'to': 'to',
    'seeing': 'görmek',
    'you': 'seni',
    'See': 'Görmek',
    'soon': 'yakında',
    'Gregor': 'Gregor'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """Hi Samia, 
                     
Just a quick email to say that sounds like a great idea. Saturday is better for me because I'm meeting my parents on Sunday.
So if that's still good for you, why don't you come here? 
Then you can see the new flat and all the work we've done on the kitchen since we moved in. We can eat at home and then go for a walk in the afternoon. 
It's going to be so good to catch up finally. 
I want to hear all about your new job!

Our address is 52 Charles Road,but it's a bit difficult to find because the house numbers are really strange here.
If you turn left at the post office and keep going past the big white house on Charles Road,
there's a small side street bejind it with the house 50-56 in.
Don't ask me why the side street doesn't have a different name! 
But call me if you get lost and i'll come and get you.

Let me know if there's anything about you do/don't like to eat. Really looking forward to seeing you!

See you soon!

Gregor
                     """,
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: " When will Samia meets his parents?",
              options: ["on Saturday", "on Sunday", "on Friday"],
              correctAnswer: "on Sunday",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Who is the sender?",
              options: ["Gregor", "Samia", "His parents"],
              correctAnswer: "Gregor",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Where will they eat?",
              options: ["In the park", "At home", "At the restaurant"],
              correctAnswer: "At home",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class SecondTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'I’m': 'Ben',
    'going': 'gidiyorum',
    'to': 'sana',
    'Dear': 'Sevgili',
    'tell': 'anlatacağım',
    'you': 'sana',
    'about': 'hakkında',
    'my': 'benim',
    'family': 'ailem',
    'I': 'Ben',
    'live': 'yaşıyorum',
    'with': 'ile',
    'my': 'benim',
    'little': 'küçük',
    'sister': 'kız kardeşim',
    'mum': 'anne',
    'and': 've',
    'dad': 'baba',
    'We': 'Biz',
    'live': 'yaşıyoruz',
    'in': 'Londra’da',
    'London': 'Londra',
    'although': 'ancak',
    'I': 'ben',
    'grew': 'büyüdüm',
    'up': 'yukarıda',
    'in': 'içinde',
    'Lancaster': 'Lancaster',
    'a': 'bir',
    'beautiful': 'güzel',
    'city': 'şehir',
    'in': 'içinde',
    'the': 'kuzey',
    'North': 'kuzey',
    'of': 'İngiltere',
    'England': 'İngiltere',
    'My': 'Benim',
    'dad’s': 'babamın',
    'name': 'adı',
    'is': 'Pierre',
    'Pierre': 'Pierre',
    'He’s': 'O',
    'from': 'Fransa’dan',
    'France': 'Fransa',
    'and': 've',
    'he': 'o',
    'speaks': 'konuşuyor',
    'English': 'İngilizce',
    'and': 've',
    'French': 'Fransızca',
    'When': 'Gençken',
    'he': 'o',
    'was': 'idi',
    'young': 'genç',
    'my': 'benim',
    'mother': 'annem',
    'went': 'gitti',
    'to': 'Fransa’ya',
    'France': 'Fransa',
    'on': 'üzerinde',
    'a': 'bir',
    'student': 'öğrenci',
    'exchange': 'değişim',
    'and': 've',
    'they': 'onlar',
    'met': 'tanıştılar',
    'there': 'orada',
    'A': 'Bir',
    'few': 'birkaç',
    'years': 'yıl',
    'later': 'sonra',
    'my': 'benim',
    'dad': 'baba',
    'moved': 'taşındı',
    'to': 'İngiltere’ye',
    'England': 'İngiltere',
    'and': 've',
    'married': 'evlendi',
    'my': 'benim',
    'mum': 'anne',
    'He': 'O',
    'works': 'çalışır',
    'as': 'olarak',
    'a': 'bir',
    'French': 'Fransızca',
    'teacher': 'öğretmen',
    'He’s': 'O',
    'very': 'çok',
    'tall': 'uzun',
    '–much': 'çok',
    'taller': 'daha uzun',
    'than': 'annemden',
    'my': 'benim',
    'mum–': 'anne–',
    'and': 've',
    'athletic': 'atletik',
    'He’s': 'O',
    'got': 'var',
    'short': 'kısa',
    'blonde': 'sarı',
    'hair': 'saç',
    'and': 've',
    'blue': 'mavi',
    'eyes': 'gözler',
    'My': 'Benim',
    'mum’s': 'annemin',
    'name': 'adı',
    'is': 'Anna',
    'Anna': 'Anna',
    'She’s': 'O',
    'English': 'İngiliz',
    'She’s': 'O',
    'quite': 'oldukça',
    'short': 'kısa',
    'and': 've',
    'she’s': 'o',
    'got': 'var',
    'long': 'uzun',
    'curly': 'kıvırcık',
    'brown': 'kahverengi',
    'hair': 'saç',
    'and': 've',
    'brown': 'kahverengi',
    'eyes': 'gözler',
    'She': 'O',
    'works': 'çalışır',
    'at': 'eczanede',
    'a': 'bir',
    'chemist’s': 'eczane',
    'opposite': 'karşısındaki',
    'our': 'bizim',
    'home': 'ev',
    'She': 'O',
    'can': 'konuşabilir',
    'speak': 'konuşur',
    'French': 'Fransızca',
    'too': 'da',
    'My': 'Benim',
    'sister': 'kız kardeşim',
    'Julia': 'Julia',
    'is': '18 yaşında',
    '18': 'onsekiz',
    'years': 'yaşında',
    'old': 'yaşında',
    'and': 've',
    'she’s': 'o',
    'got': 'var',
    'the': 'aynı',
    'same': 'renk',
    'color': 'renk',
    'of': 'saç',
    'hair': 've gözleri',
    'and': 've',
    'eyes': 'saç rengi ve gözleri',
    'as': 'babam gibi',
    'my': 'benim',
    'father': 'babam',
    'She': 'O',
    'loves': 'seviyor',
    'playing': 'piyano çalmayı',
    'the': 've',
    'piano': 'piyano',
    'and': 've',
    'dancing': 'dans etmeyi',
    'She’s': 'O',
    'very': 'çok',
    'talented': 'yetenekli',
    'and': 've',
    'she': 'o',
    'would': 'olmak istiyor',
    'like': 'gibi',
    'to': 'profesyonel bir müzisyen olmayı',
    'be': 'olmayı',
    'a': 'bir',
    'professional': 'profesyonel',
    'musician': 'müzisyen',
    'I’ve': 'Benim',
    'got': 'var',
    'short': 'kısa',
    'blonde': 'sarı',
    'hair': 'saç',
    'like': 'benim',
    'my': 'babam',
    'dad': 'gibi',
    'but': 'ama',
    'brown': 'kahverengi',
    'eyes': 'gözleri',
    'like': 'benim',
    'my': 'annem',
    'mom': 'gibi',
    'We': 'Biz',
    'all': 'hepimiz',
    'love': 'seviyoruz',
    'playing': 'oynamayı',
    'board': 'masa',
    'games': 'oyunları',
    'together': 'birlikte',
    'on': 'Cuma akşamları',
    'Friday': 'üzerinde',
    'evenings': 'akşamları',
    'and': 've',
    'we': 'biz',
    'always': 'her zaman',
    'order': 'sipariş',
    'pizza': 'pizzayı',
    'Our': 'Bizim',
    'favourite': 'favori',
    'game': 'oyunumuz',
    'is': 'Monopoly',
    'Monopoly': 'Monopoly',
    'Oh': 'Oh',
    'I': 'Ben',
    'almost': 'neredeyse',
    'forgot': 'unuttum',
    'we’ve': 'bizim',
    'also': 'ayrıca',
    'got': 'var',
    'a': 'bir',
    'pet': 'evcil',
    'cat': 'kedi',
    'Snowball': 'Kar topu',
    'She’s': 'O',
    'all': 'tüm',
    'white': 'beyaz',
    'and': 've',
    'has': 'sahip',
    'got': 'var',
    'a': 'bir',
    'lot': 'çok',
    'of': 'tüy',
    'fur': 'tüy',
    'She': 'O',
    'likes': 'sever',
    'sleeping': 'uyumayı',
    'on': 'üzerinde',
    'me': 'ben',
    'Write': 'Yakında geri yaz',
    'back': 'geri',
    'soon': 'yakında',
    'Please': 'Lütfen',
    'tell': 'anlat',
    'me': 'bana',
    'about': 'senin',
    'your': 'senin',
    'family': 'ailen',
    'too': 'da',
    'Love': "Sevgiler",
    'Jonathan': 'Jonathan',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """About my family
              

Dear Marta,

I’m going to tell you about my family. I live with my little sister, mum, and dad. We live in London, although I grew up in Lancaster, a beautiful city in the North of England.

My dad’s name is Pierre. He’s from France, and he speaks English and French. When he was young, my mother went to France on a student exchange, and they met there. A few years later, my dad moved to England and married my mum. He works as a French teacher. He’s very tall –much taller than my mum– and athletic. He’s got short blonde hair and blue eyes.

My mum’s name is Anna. She’s English. She’s quite short, and she’s got long curly brown hair and brown eyes. She works at a chemist’s opposite our home. She can speak French too!

My sister Julia is 18 years old, and she’s got the same color of hair and eyes as my father. She loves playing the piano and dancing. She’s very talented, and she would like to be a professional musician.

I’ve got short blonde hair like my dad, but brown eyes like my mom. We all love playing board games together on Friday evenings, and we always order pizza. Our favourite game is Monopoly. Oh, I almost forgot…we’ve also got a pet cat, Snowball. She’s all white and has got a lot of fur. She likes sleeping on me.

Write back soon. Please, tell me about your family too.

Love

Jonathan
                     """,
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "What does Jonathan' mom do?",
              options: ["Pilot", "Chemist", "Teacher"],
              correctAnswer: "Chemist",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Which languages can Jonathan's mom speak?",
              options: [
                "English and French",
                "English and German",
                "Russian and Turkish"
              ],
              correctAnswer: "English and French",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "What does Jonathan's sister want to do in the future?",
              options: [
                "A fire fighter",
                "A police",
                "A professional musician"
              ],
              correctAnswer: "A professional musician",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "What is the name of their cat?",
              options: ["Snowball", "Kitty", "Rachell"],
              correctAnswer: "Snowball",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class FourthTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'A': 'Harika',
    'great': 'harika',
    'summer': 'yaz',
    'vacation': 'tatil',
    'I': 'Ben',
    'just': 'şimdi',
    'returned': 'döndüm',
    'from': 'den',
    'the': 'en',
    'greatest': 'muhteşem',
    'summer': 'yaz',
    'vacation': 'tatil',
    'It': 'O',
    'was': 'idi',
    'so': 'çok',
    'fantastic': 'fantastik',
    'I': 'Ben',
    'never': 'asla',
    'wanted': 'istemistim',
    'it': 'onun',
    'to': 'bitmesini',
    'end': 'bitmesini',
    'I': 'Ben',
    'spent': 'geçirdim',
    'eight': 'sekiz',
    'days': 'gün',
    'in': 'içinde',
    'Paris,': 'Paris',
    'France.': 'Fransa.',
    'My': 'Benim',
    'best': 'en iyi',
    'friends,': 'arkadaşlarım',
    'Henry': 'Henry',
    'and': 've',
    'Steve,': 'Steve',
    'went': 'gittiler',
    'with': 'benimle',
    'me.': 'benimle',
    'We': 'Biz',
    'had': 'vardı',
    'a': 'bir',
    'beautiful': 'güzel',
    'hotel': 'otel',
    'room': 'oda',
    'in': 'içinde',
    'the': 'Latin Quarter,',
    'and': 've',
    'it': 'o',
    'wasn’t': 'değildi',
    'even': 'hatta',
    'expensive.': 'pahalı değildi.',
    'We': 'Biz',
    'had': 'vardı',
    'a': 'bir',
    'balcony': 'balkon',
    'with': 'ile',
    'a': 'bir',
    'wonderful': 'harika',
    'view.': 'manzaraya.',
    'We': 'Biz',
    'visited': 'ziyaret',
    'many': 'birçok',
    'famous': 'ün',
    'tourist': 'turist',
    'places': 'yerler.',
    'My': 'Benim',
    'favorite': 'favori',
    'was': 'idi',
    'the': 'Louvre,',
    'a': 'bir',
    'well-known': 'tanınmış',
    'museum': 'müze.',
    'I': 'Ben',
    'was': 'idi',
    'always': 'her zaman',
    'interested': 'ilgilenmiştim',
    'in': 'sanat,',
    'art': 'bu',
    'so': 'bu',
    'that': 'benim',
    'was': 'idi',
    'a': 'bir',
    'special': 'özel',
    'treat': 'zımba',
    'for': 'benim',
    'me.': 'için.',
    'The': 'Müze',
    'museum': 'o',
    'is': 'kadar',
    'so': 'büyük,',
    'huge': 'büyük,',
    'you': 'sen',
    'could': 'olabilir',
    'spend': 'geçirmek',
    'weeks': 'haftalar',
    'there.': 'orda.',
    'Henry': 'Henry',
    'got': 'aldı',
    'tired': 'yorgun',
    'walking': 'yürüyerek',
    'around': 'etrafında',
    'the': 'museum',
    'and': 've',
    'said': 'dedi',
    '“Enough!': '“Yeter!',
    'I': 'Ben',
    'need': 'ihtiyacım',
    'to': 'daha',
    'take': 'almak',
    'a': 'bir',
    'break': 'mola',
    'and': 've',
    'rest.”': 'dinlenmeliyim.”',
    'We': 'Biz',
    'took': 'aldık',
    'lots': 'çok',
    'of': 'çok',
    'breaks': 'mola',
    'and': 've',
    'sat': 'oturduk',
    'in': 'içinde',
    'cafes': 'kafe',
    'along': 'boyunca',
    'the': 'nehir',
    'river': 'Seine.',
    'The': 'Yediğimiz',
    'French': 'Fransız',
    'food': 'yemekler',
    'we': 'biz',
    'ate': 'yedik',
    'was': 'idi',
    'delicious.': 'lezzetliydi.',
    'The': 'Şaraplar',
    'wines': 'şaraplar',
    'were': 'idi',
    'tasty,': 'lezzetliydi,',
    'too.': 'da.',
    'Steve’s': 'Steve’in',
    'favorite': 'favori',
    'part': 'kısmı',
    'of': 'tatilin',
    'the': 'oteli',
    'vacation': 'kahvaltısıydı.',
    'He': 'O',
    'said': 'dedi',
    'he': 'o',
    'would': 'olacaktı',
    'be': 'mutlu',
    'happy': 'olsa',
    'if': 'eğer',
    'he': 'o',
    'could': 'olabilir',
    'eat': 'yemek',
    'croissants': 'kruvasanlar',
    'like': 'gibi',
    'those': 'onlar',
    'forever.': 'her zaman.',
    'We': 'Biz',
    'had': 'vardı',
    'so': 'çok',
    'much': 'eğlence',
    'that': 'ki',
    'we’re': 'biz',
    'already': 'zaten',
    'talking': 'konuşuyoruz',
    'about': 'hakkında',
    'our': 'bizim',
    'next': 'sonraki',
    'vacation!': 'tatilimiz!'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fourth Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """A great summer vacation


I just returned from the greatest summer vacation! It was so fantastic, I never wanted it to end. I spent eight days in Paris, France. My best friends, Henry and Steve, went with me. We had a beautiful hotel room in the Latin Quarter, and it wasn’t even expensive. We had a balcony with a wonderful view.

We visited many famous tourist places. My favorite was the Louvre, a well-known museum. I was always interested in art, so that was a special treat for me. The museum is so huge, you could spend weeks there. Henry got tired walking around the museum and said “Enough! I need to take a break and rest.”

We took lots of breaks and sat in cafes along the river Seine. The French food we ate was delicious. The wines were tasty, too. Steve’s favorite part of the vacation was the hotel breakfast. He said he would be happy if he could eat croissants like those forever. We had so much fun that we’re already talking about our next vacation!
""",
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "How many days did he stay in Paris?",
              options: ["Eigth days", "Three days", "Nine days"],
              correctAnswer: "Eigth days",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "What are his best friends names?",
              options: ["Alex, Steve", "Henry, Steve", "Harry, Alex"],
              correctAnswer: "Henry, Steve",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Where didn't they visit?",
              options: ["Louvre", "River Seine", "The French Castle"],
              correctAnswer: "The French castle",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Which part of the summer vacation was his favourite?",
              options: [
                "Hotel Breakfast",
                "Entering the Hotel room",
                "Visit the touristic places"
              ],
              correctAnswer: "Hotel Breakfast",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "What is his favourite place?",
              options: ["Louvre", "River Seine", "The French Restaurant"],
              correctAnswer: "Louvre",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class ThirdTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'What': 'Ne',
    'is': 'nedir',
    'wearable': 'giyilebilir',
    'technology': 'teknoloji',
    'Wearable': 'Giyilebilir',
    'technology': 'teknoloji',
    'or': 'veya',
    '“wearables”': '“giyilebilirler”',
    'is': 'dir',
    'the': 'adı',
    'name': 'isim',
    'for': 'için',
    'the': 'bu',
    'type': 'türü',
    'of': 'elektronik',
    'electronic': 'cihazların',
    'devices': 'cihazların',
    'we': 'biz',
    'can': 'kullanabiliriz',
    'wear': 'giymek',
    'as': 'olarak',
    'accessories': 'aksesuarlar',
    'implanted': 'yerleştirilmiş',
    'in': 'içinde',
    'our': 'bizim',
    'clothing': 'giysilerimize',
    'or': 'veya',
    'even': 'hatta',
    'in': 'içinde',
    'our': 'bizim',
    'body': 'vücudumuza',
    'Wearables': 'Giyilebilirler',
    'are': 'gibi',
    'hands-free': 'eller-serbest',
    'gadgets': 'cihazlar',
    'with': 'ile',
    'microprocessors': 'mikroişlemciler',
    'and': 've',
    'a': 'bir',
    'connection': 'bağlantı',
    'to': 'ile',
    'the': 'internet',
    'Wearables': 'Giyilebilirler',
    'have': 'vardır',
    'existed': 'var olmuşlardır',
    'for': 'için',
    'hundreds': 'yüzlerce',
    'of': 'yılın',
    'years': 'yılı',
    'Pocket': 'Cep',
    'watches': 'saatler',
    'which': 'ki',
    'later': 'sonraları',
    'became': 'oldu',
    'wristwatches': 'kol saatleri',
    'or': 'veya',
    'glasses': 'gözlükler',
    'were': 'idi',
    'some': 'bazı',
    'of': 'ile',
    'the': 'ilk',
    'first': 'ilk',
    'examples': 'örnekler',
    'in': 'içinde',
    'the': 'tarihinde',
    'history': 'tarihin',
    'of': 'içinde',
    'wearable': 'giyilebilir',
    'technology': 'teknoloji',
    'People': 'İnsanlar',
    'wore': 'giyerlerdi',
    'them': 'onları',
    'to': 'için',
    'have': 'sahip olmak',
    'a': 'daha',
    'more': 'daha',
    'comfortable': 'rahat',
    'life': 'hayat',
    'and': 've',
    'we': 'biz',
    'still': 'hala',
    'do': 'yaparız',
    'Glasses': 'Gözlükler',
    'help': 'yardım etmek',
    'you': 'seni',
    'see': 'görmek',
    'and': 've',
    'watches': 'saatler',
    'give': 'vermek',
    'you': 'sana',
    'helpful': 'yararlı',
    'information': 'bilgi',
    'But': 'Ancak',
    'modern': 'modern',
    'wearable': 'giyilebilir',
    'devices': 'cihazlar',
    'are': 'vardır',
    'more': 'daha',
    'complicated': 'karışık',
    'They': 'Onlar',
    'are': 'vardır',
    'electronic': 'elektronik',
    'and': 've',
    'they': 'onlar',
    'use': 'kullanır',
    'the': 'internet',
    'to': 'ile',
    'collect': 'toplamak',
    'store': 'saklamak',
    'and': 've',
    'send': 'göndermek',
    'different': 'farklı',
    'kinds': 'türleri',
    'of': 'içinde',
    'information': 'bilgi',
    'The': 'İlk',
    'first': 'popüler',
    'popular': 'elektronik',
    'electronic': 'giyilebilir',
    'wearable': 'teknoloji',
    'technology': 'teknoloji',
    'was': 'idi',
    'Fitness': 'Fitness',
    'trackers': 'takipçileri',
    'like': 'gibi',
    '‘Fitbits’': '‘Fitbits’',
    'which': 'ki',
    'became': 'oldu',
    'popular': 'popüler',
    'in': 'içinde',
    'the': '2010’ların',
    '2010s': '2010’ların',
    'They': 'Onlar',
    'monitor': 'izler',
    'your': 'senin',
    'heart': 'kalp',
    'and': 've',
    'movement': 'hareket',
    'and': 've',
    'help': 'yardım etmek',
    'you': 'sana',
    'keep': 'tutmak',
    'fit': 'forma girmek',
    'Now': 'Şimdi',
    'wearable': 'giyilebilir',
    'technology': 'teknoloji',
    'helps': 'yardım eder',
    'people': 'insanlar',
    'stay': 'kalmak',
    'healthy': 'sağlıklı',
    'in': 'içinde',
    'new': 'yeni',
    'ways': 'yollar',
    'For': 'Örneğin',
    'example': 'örnek',
    'the': '‘iTBra’',
    '‘iTBra’': '‘iTBra’',
    'is': 'bir',
    'a': 'yama',
    'patch': 'yama',
    'Women': 'Kadınlar',
    'wear': 'giyerler',
    'it': 'onu',
    'inside': 'içinde',
    'their': 'onların',
    'bras': 'sütyenlerinin içinde',
    'and': 've',
    'it': 'onu',
    'checks': 'kontrol eder',
    'for': 'için',
    'breast': 'göğüs',
    'cancer': 'kanser',
    '‘Heartguide’': '‘Heartguide’',
    'looks': 'görünüyor',
    'like': 'gibi',
    'a': 'bir',
    'smartwatch': 'akıllı saat',
    'but': 'ama',
    'it': 'onu',
    'can': 'olabilir',
    'measure': 'ölçmek',
    'blood': 'kan',
    'pressure': 'basıncı',
    'It': 'O',
    'can': 'olabilir',
    'also': 'ayrıca',
    'track': 'izlemek',
    'information': 'bilgi',
    'about': 'hakkında',
    'a': 'bir',
    'person’s': 'kişinin',
    'lifestyle': 'yaşam tarzı',
    'for': 'için',
    'example': 'örnek',
    'how': 'nasıl',
    'much': 'çok',
    'they': 'onlar',
    'exercise': 'egzersiz yapmak',
    'Then': 'Ardından',
    'it': 'onu',
    'shares': 'paylaşır',
    'this': 'bu',
    'information': 'bilgi',
    'with': 'ile',
    'a': 'bir',
    'doctor': 'doktor',
    'so': 'bu yüzden',
    'that': 'ki',
    'the': 'doktor',
    'doctor': 'doktor',
    'can': 'olabilir',
    'give': 'vermek',
    'better': 'daha iyi',
    'advice': 'tavsiye',
    '‘SmartSleep’': '‘SmartSleep’',
    'is': 'bir',
    'a': 'bir',
    'soft': 'yumuşak',
    'headband': 'baş bandı',
    'It': 'O',
    'helps': 'yardım eder',
    'people': 'insanlar',
    'to': 'için',
    'sleep': 'uyumak',
    'better': 'daha iyi',
    'It': 'O',
    'collects': 'toplar',
    'information': 'bilgi',
    'about': 'hakkında',
    'people’s': 'insanların',
    'sleep': 'uyku',
    'patterns': 'kalıpları',
    'gives': 'verir',
    'advice': 'tavsiye',
    'and': 've',
    'makes': 'yapar',
    'sounds': 'sesler',
    'to': 'için',
    'help': 'yardım etmek',
    'people': 'insanlar',
    'fall': 'düşmek',
    'asleep': 'uyuyakalmak',
    'However': 'Ancak',
    'not': 'değil',
    'all': 'tüm',
    'wearables': 'giyilebilirler',
    'are': 'olan',
    'about': 'hakkında',
    'health': 'sağlık.',
    'Some': 'Bazıları',
    'are': 'kullanılır',
    'used': 'kullanılan',
    'for': 'için',
    'protection': 'koruma',
    'or': 'veya',
    'to': 'gitmek',
    'find': 'bulmak',
    'the': 'istediğiniz',
    'place': 'yeri,',
    'you': 've',
    'want': 'istemek',
    'go,': 'güvenliği',
    'and': 've',
    'some': 'bazıları',
    'are': 'sadece',
    'just': 'eğlence',
    'for': 'için.',
    'fun.': 'Örneğin,',
    'For': 'bir',
    'example,': 'akıllı',
    'you': 'ceketi',
    'can': 'ile',
    'hug': 'milyonlarca',
    'someone': 'uzakta',
    'from': 'birini',
    'miles': 'kucaklayabilirsiniz!',
    'away': 'Ayrıca,',
    'with': 'akıllı',
    'a': 'takı',
    'smart': 'yüzükler',
    'jacket!': 've',
    'You': 'kolyeler',
    'can': 'değiştirebilir',
    'also': 'renk',
    'buy': 'değiştirebilir',
    'smart': 've',
    'jewellery.': 'makyaj',
    'These': 'veya',
    'rings': 'kıyafetlerinize',
    'and': 'veya',
    'necklaces': 'uyacak',
    'can': 've',
    'change': 'eğer',
    'colour': 'tehlikede',
    'to': 'görürse',
    'match': 'polise',
    'clothes': 'bir',
    'or': 'uyarı',
    'make-up,': 'gönderebilir.',
    'or': 'Ve',
    'they': 'akıllı',
    'can': 'şapka',
    'send': 'ile',
    'the': 'müzik',
    'police': 'dinleyebilir',
    'an': 've',
    'alert': 'telefona',
    'if': 'kulaklık',
    'you': 'kullanmadan',
    'are': 'gelen',
    'in': 'bir',
    'danger.': 'akıllı',
    'And': 'şapkayla',
    'with': 'müzik',
    'a': 'dinleyebilir',
    'smart': 've',
    'hat,': 'aramalarına',
    'you': 'sen',
    'can': 'verebilirsiniz!',
    'listen': 'milyonlarca',
    'to': 'uzakta',
    'music': 'birisini'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Third Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """What is wearable technology?

Wearable technology, or “wearables”, is the name for the type of electronic devices we can wear as accessories, implanted in our clothing or even in our body. Wearables are hands-free gadgets with microprocessors and a connection to the internet.

Wearables have existed for hundreds of years. Pocket watches, which later became wristwatches, or glasses were some of the first examples in the history of wearable technology. People wore them to have a more comfortable life, and we still do! Glasses help you see, and watches give you helpful information. But modern wearable devices are more complicated. They are electronic, and they use the internet to collect, store and send different kinds of information.

The first popular electronic wearable technology was Fitness trackers, like ‘Fitbits’, which became popular in the 2010s. They monitor your heart and movement and help you keep fit. Now, wearable technology helps people stay healthy in new ways. For example, the ‘iTBra’ is a patch. Women wear it inside their bras, and it checks for breast cancer. ‘Heartguide’ looks like a smartwatch, but it can measure blood pressure. It can also track information about a person’s lifestyle, for example, how much they exercise. Then it shares this information with a doctor so that the doctor can give better advice. ‘SmartSleep’ is a soft headband. It helps people to sleep better. It collects information about people’s sleep patterns, gives advice and makes sounds to help people fall asleep.

However, not all wearables are about health. Some are used for protection or to find the place you want to go, and some are just for fun. For example, you can hug someone from miles away with a smart jacket! You can also buy smart jewellery. These rings and necklaces can change colour to match clothes or make-up, or they can send the police an alert if you are in danger. And with a smart hat, you can listen to music and answer calls without using headphones!


                     """,
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Breast cancer can be checked by...",
              options: ["Fitbits", "ITBra", "Heartguide"],
              correctAnswer: "ITBra",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question:
                  "Looking like a kind of smartwatch 'Heartguide' can't...",
              options: [
                "Measure blood pressure",
                "Track information about a person's lifestyle",
                "Share the information with the patient on the net"
              ],
              correctAnswer:
                  "Share the information with the patient on the net",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "'SmartSleep is a kind of...'",
              options: ["Headband", "Smartwatch", "Glasses"],
              correctAnswer: "Headband",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class FifthTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'Lifestraw': 'Lifestraw',
    'There': 'Orada',
    'are': 'vardır',
    '780': '780',
    'million': 'milyon',
    'people': 'insan',
    'in': 'dünyada',
    'the': 'ki,',
    'world': 'dünya',
    'who': 'kim',
    'don’t': 'temiz',
    'have': 'güvenli',
    'clean': 'içme',
    'safe': 'suyu',
    'drinking': 'olmayan',
    'water.': 'milyonlarca',
    'This': 'Bu',
    'fact': 'gerçek',
    'led': 'yol açtı',
    'the': 'İsviçre',
    'Swiss': 'şirket',
    'company': 'şirketi',
    'Vestergaard': 'Vestergaard',
    'to': 'bulmak',
    'invent': 'icat',
    'a': 'bir',
    'special': 'özel',
    'kind': 'tür',
    'of': 'saman',
    'straw': 'pipet',
    'that': 'ki,',
    'allows': 'izin verir',
    'people': 'insanlar',
    'to': 'içmek',
    'drink': 'kirli',
    'dirty': 'su',
    'water': 'temiz',
    'without': 'yok',
    'getting': 'hastalanmadan',
    'ill.': 'hasta',
    'The': 'LifeStraw',
    'is': 'uzun',
    'a': 'ince',
    'long': 'tüp',
    'thin': 'tüp',
    'tube': 'temizler',
    'that': 'ki,',
    'cleans': 'sırasında',
    'the': 'suyu',
    'water': 'su',
    'as': 'olarak',
    'it': 'o',
    'passes': 'geçer',
    'through': 'ağzına',
    'into': 'birinin',
    'somebody’s': 'birinin',
    'mouth.': 'ağzına.',
    'LifeStraw': 'LifeStraw',
    'is': 'çok',
    'very': 'hafif',
    'light': 've',
    'and': 've',
    'can': 'temizler',
    'clean': '1,000',
    'up': 'litre',
    'to': 'suyu',
    '1,000': '1,000',
    'litres': 'litreye',
    'of': 'kadar',
    'water': 'temizleyebilir',
    'before': 'önce',
    'you': 'sen',
    'need': 'değiştirmek',
    'to': 'ihtiyacın',
    'replace': 'değiştirmek',
    'it.': 'gerekmektedir.',
    'LifeStraw': 'LifeStraw',
    'was': 'kullanıldı',
    'used': 'yardım',
    'to': 'Haiti',
    'help': 'deprem',
    'people': 'sonra',
    'after': 've',
    'the': 'sel',
    'Haiti': 'Haiti',
    'earthquake,': 'sel',
    'and': 'felaketlerinde',
    'floods': 'insanlara',
    'in': 'yardım',
    'Pakistan': 'Pakistan',
    'and': 've',
    'Thailand.': 'Tayland’da.'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fifth Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """Lifestraw

There are 780 million people in the world who don’t have clean safe drinking water. This fact led the Swiss company Vestergaard to invent a special kind of straw that allows people to drink dirty water without getting ill. The LifeStraw is a long thin tube that cleans the water as it passes through into somebody’s mouth. LifeStraw is very light and can clean up to 1,000 litres of water before you need to replace it. LifeStraw was used to help people after the Haiti earthquake, and floods in Pakistan and Thailand.""",
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            MultipleChoiceQuestion(
              question:
                  "How many people don't have clean and drinkable water in the world?",
              options: ["600 million", "680 million", "780 million"],
              correctAnswer: "780 million",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Lifestraw wasn't used to help people after the...",
              options: ["Earthquake", "Flood", "Tsunami"],
              correctAnswer: "Tsunami",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question:
                  "How many liters Lifestraw water can clean before you need to replace it?",
              options: ["800 liters", "1000 liters", "1200 liters"],
              correctAnswer: "1000 liters",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class SixthTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'World': 'Dünya',
    'Water': 'Su',
    'Day': 'Günü',
    'is': 'oldu',
    'observed': 'gözlemlenir',
    'on': 'üzerinde',
    'March': 'Mart',
    '22': '22',
    'since': 'beri',
    '1993.': '1993',
    'It': 'O',
    'was': 'idi',
    'declared': 'ilan',
    'as': 'olarak',
    'such': 'böyle',
    'by': 'tarafından',
    'the': 'Birleşmiş',
    'United': 'Birleşmiş',
    'Nations': 'Milletler',
    'General': 'Genel',
    'Assembly.': 'Meclisi.',
    'This': 'Bu',
    'day': 'gün',
    'was': 'idi',
    'first': 'ilk',
    'formally': 'resmi',
    'proposed': 'önerilen',
    'in': 'içinde',
    'Agenda': 'Gündem',
    '21': '21',
    'of': 'tarafından',
    'the': '1992',
    'United': 'Birleşmiş',
    'Nations': 'Milletler',
    'Conference': 'Konferansı',
    'on': 'üzerinde',
    'Environment': 'Çevre',
    'and': 've',
    'Development': 'Kalkınma',
    '(UNCED)': '(UNCED)',
    'in': 'içinde',
    'Rio': 'Rio',
    'de': 'de',
    'Janeiro,': 'Janeiro,',
    'Brazil.': 'Brezilya.',
    'Observance': 'Gözlem',
    'began': 'başladı',
    'in': 'içinde',
    '1993': '1993',
    'and': 've',
    'has': 'vardır',
    'grown': 'büyümüş',
    'significantly': 'önemli',
    'ever': 'her',
    'since.': 'zaman.',
    'The': 'Birleşmiş',
    'UN': 'BM',
    'and': 've',
    'its': 'onun',
    'member': 'üye',
    'nations': 'ülkeler',
    'devote': 'ayırır',
    'this': 'bu',
    'day': 'gün',
    'to': 'ile',
    'implementing': 'uygulamak',
    'UN': 'BM',
    'recommendations': 'önerileri',
    'and': 've',
    'promoting': 'tanıtma',
    'concrete': 'somut',
    'activities': 'etkinlikler',
    'within': 'içinde',
    'their': 'onların',
    'countries': 'ülkeler',
    'regarding': 'ile ilgili',
    'the': 'dünya',
    'world\'s': 'dünyanın',
    'water': 'su',
    'resources.': 'kaynakları.',
    'Each': 'Her',
    'year,': 'yıl,',
    'one': 'bir',
    'of': 'tarafından',
    'various': 'çeşitli',
    'UN': 'BM',
    'agencies': 'ajanslar',
    'involved': 'dahil',
    'in': 'içinde',
    'water': 'su',
    'issues': 'sorunları',
    'takes': 'alır',
    'the': 'ön',
    'lead': 'liderlik',
    'in': 'içinde',
    'promoting': 'tanıtma',
    'and': 've',
    'coordinating': 'koordine',
    'international': 'uluslararası',
    'activities': 'etkinlikler',
    'for': 'için',
    'World': 'Dünya',
    'Water': 'Su',
    'Day.': 'Günü.',
    'In': 'Ek',
    'addition': 'ek',
    'to': 'ile',
    'the': 'BM',
    'UN': 've',
    'member': 'üye',
    'states': 'devletler',
    'a': 'bir',
    'number': 'sayı',
    'of': 'tarafından',
    'NGOs': 'STKlar',
    'promoting': 'tanıtma',
    'clean': 'temiz',
    'water': 'su',
    'and': 've',
    'sustainable': 'sürdürülebilir',
    'aquatic': 'suda',
    'habitats': 'yaşam alanları',
    'have': 'vardır',
    'used': 'kullanılan',
    'World': 'Dünya',
    'Day': 'Günü',
    'for': 'için',
    'Water': 'Su',
    'as': 'olarak',
    'a': 'bir',
    'time': 'zaman',
    'to': 'ile',
    'focus': 'odaklanmak',
    'public': 'halk',
    'attention': 'ilgi',
    'on': 'üzerinde',
    'the': 'kritik',
    'critical': 'su',
    'water': 'su',
    'issues': 'sorunları',
    'of': 'tarafından',
    'our': 'bizim',
    'era.': 'çağ.',
    'Every': 'Her',
    'three': 'üç',
    'years': 'yıl',
    'since': 'beri',
    '1997,': '1997,',
    'for': 'için',
    'instance,': 'örneğin,',
    'the': 'Dünya',
    'World': 'Su',
    'Water': 'Su',
    'Council': 'Konsey',
    'has': 'vardır',
    'drawn': 'çekilmiş',
    'thousands': 'binlerce',
    'to': 'katılmak',
    'participate': 'katılmak',
    'in': 'içinde',
    'its': 'onun',
    'World': 'Dünya',
    'Water': 'Su',
    'Forum': 'Forum',
    'during': 'sırasında',
    'the': 'hafta',
    'week': 'hafta',
    'of': 'içinde',
    'World': 'Dünya',
    'Day': 'Günü',
    'for': 'için',
    'Water.': 'Su.',
    'Participating': 'Katılan',
    'agencies': 'kuruluşlar',
    'and': 've',
    'NGOs': 'STKlar',
    'have': 'vardır',
    'highlighted': 'vurgulanmış',
    'issues': 'sorunları',
    'such': 'böyle',
    'as': 'olarak',
    'a': 'bir',
    'billion': 'milyar',
    'people': 'insan',
    'being': 'olmak',
    'without': 'olmadan',
    'access': 'erişim',
    'to': 'ile',
    'safe': 'güvenli',
    'water': 'su',
    'for': 'için',
    'drinking': 'içme',
    'and': 've',
    'the': 'aile',
    'role': 'rol',
    'of': 'tarafından',
    'gender': 'cinsiyet',
    'in': 'içinde',
    'family': 'aile',
    'access': 'erişim',
    'to': 'ile',
    'safe': 'güvenli',
    'water.': 'su.'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sixth Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text:
                  """World Water Day is observed on March 22 since 1993. It was declared as such by the United Nations General Assembly. This day was first formally proposed in Agenda 21 of the 1992 United Nations Conference on Environment and Development (UNCED) in Rio de Janeiro, Brazil. Observance began in 1993 and has grown significantly ever since.
 
The UN and its member nations devote this day to implementing UN recommendations and promoting concrete activities within their countries regarding the world's water resources. Each year, one of various UN agencies involved in water issues takes the lead in promoting and coordinating international activities for World Water Day.

In addition to the UN member states, a number of NGOs promoting clean water and sustainable aquatic habitats have used World Day for Water as a time to focus public attention on the critical water issues of our era. Every three years since 1997, for instance, the World Water Council has drawn thousands to participate in its World Water Forum during the week of World Day for Water. Participating agencies and NGOs have highlighted issues such as a billion people being without access to safe water for drinking and the role of gender in family access to safe water.
""",
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "World Water Day has been celebrated for...",
              options: ["20 years", "21 years", "22 years"],
              correctAnswer: "21 years",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "This day is not devoted to...",
              options: [
                "Implement UN recommendations",
                "Promote concrate activities within their contries",
                "Promote just national activities"
              ],
              correctAnswer: "Promote just national activities",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question:
                  "Thousands of people participate in World Water Forum ___ every years",
              options: ["Three", "Two", "Four"],
              correctAnswer: "Three",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class SeventhTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'Consequences': 'Sonuçları',
    'Of': 'Küresel',
    'Global': 'Küresel',
    'Warming': 'Isınma',
    'There': 'Orada',
    'are': 'vardır',
    'two': 'iki',
    'major': 'önemli',
    'effects': 'etkileri',
    'of': 'küresel',
    'global': 'küresel',
    'warming:': 'ısınma:',
    'the': 'dünya',
    'increase': 'artışı',
    'of': 'ile',
    'temperature': 'sıcaklık',
    'on': 'üzerinde',
    'the': 'dünya',
    'earth': 'dünya',
    'by': 'tarafından',
    'about': 'yaklaşık',
    '3°': '3°',
    'to': 'ile',
    '5°': '5°',
    'C': 'C',
    '(5.4°': '(5.4°',
    'to': 'ile',
    '9°': '9°',
    'Fahrenheit)': 'Fahrenheit)',
    'by': 'tarafından',
    'the': 'yıl',
    "'year': '2100'": '2100',
    'and': 've',
    'Rise': 'Yükselme',
    'of': 'ile',
    'sea': 'deniz',
    'levels': 'seviyeleri',
    'by': 'tarafından',
    'at': 'en',
    'least': 'az',
    '25': '25',
    'meters': 'metre',
    '(82': '(82',
    'feet)': 'ayak)',
    'by': 'tarafından',
    'the': 'yıl',
    "'year': '2100'": '2100.',
    'Other': 'Diğer',
    'consequences': 'sonuçlar',
    'are': 'vardır',
    'listed': 'listelenmiş',
    'below:': 'aşağıda:',
    'Sea': 'Deniz',
    'levels': 'seviyeleri',
    'are': 'artıyor',
    'rising': 'yükseliyor',
    'due': 'nedeniyle',
    'to': 'ile',
    'thermal': 'termal',
    'expansion': 'genişleme',
    'of': 'ile',
    'the': 'okyanusun',
    'ocean,': 'okyanusun,',
    'in': 'ek olarak',
    'addition': 'ek',
    'to': 'ile',
    'melting': 'erime',
    'of': 'ile',
    'land': 'arazi',
    'ice.': 'buz.',
    'Amounts': 'Miktarlar',
    'and': 've',
    'patterns': 'desenler',
    'of': 'olarak',
    'precipitation': 'yağış',
    'are': 'değişiyor',
    'changing.': 'değişiyor.',
    'The': 'Fırtınaların',
    'total': 'toplam',
    'annual': 'yıllık',
    'power': 'gücü',
    'of': 'tarafından',
    'hurricanes': 'kasırgaların',
    'has': 'artık',
    'already': 'zaten',
    'increased': 'artmış',
    'markedly': 'önemli ölçüde',
    'since': 'beri',
    '1975': '1975',
    'because': 'çünkü',
    'their': 'onların',
    'average': 'ortalama',
    'intensity': 'yoğunluk',
    'and': 've',
    'average': 'ortalama',
    'duration': 'süre',
    'have': 'vardır',
    'increased.': 'artmış.',
    'Changes': 'Değişiklikler',
    'in': 'içinde',
    'temperature': 'sıcaklık',
    'and': 've',
    'precipitation': 'yağış',
    'patterns': 'desenler',
    'increase': 'artışı',
    'the': 'diğer',
    'frequency': 'sıklığı',
    'duration': 'süresi',
    'and': 've',
    'intensity': 'yoğunluğu',
    'of': 'tarafından',
    'other': 'diğer',
    'extreme': 'aşırı',
    'weather': 'hava',
    'events,': 'olaylar,',
    'such': 'böyle',
    'as': 'olarak',
    'floods,': 'seller,',
    'droughts,': 'kuraklık,',
    'heat': 'ısı',
    'waves,': 'dalgaları,',
    'and': 've',
    'tornadoes.': 'tornado.',
    'Higher': 'Daha yüksek',
    'or': 'veya',
    'lower': 'daha düşük',
    'agricultural': 'tarımsal',
    'yields,': 'verimler,',
    'further': 'daha fazla',
    'glacial': 'buzul',
    'retreat,': 'geri çekilme,',
    'reduced': 'azaltılmış',
    'summer': 'yaz',
    'stream': 'nehir',
    'flows,': 'akışları,',
    'species': 'türlerin',
    'extinctions.': 'soyunun tükenmesi.',
    'Diseases': 'Hastalıklar',
    'like': 'gibi',
    'malaria': 'sıtma',
    'are': 'geri dönüyor',
    'returning': 'geri dönüş',
    'into': 'içine',
    'areas': 'alanlar',
    'where': 'nerede',
    'they': 'onlar',
    'have': 'vardır',
    'been': 'olmuştur',
    'extinguished': 'söndürülmüş',
    'earlier.': 'daha önce.'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seventh Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """Consequences Of Global Warming


There are two major effects of global warming: the increase of temperature on the earth by about 3° to 5° C (5.4° to 9° Fahrenheit) by the year 2100 and Rise of sea levels by at least 25 meters (82 feet) by the year 2100. Other consequences are listed below:

1 -	Sea levels are rising due to thermal expansion of the ocean, in addition to melting of land ice.

2 -	Amounts and patterns of precipitation are changing.

3	- The total annual power of hurricanes has already increased markedly since 1975 because their average intensity and average duration have increased.

4	- Changes in temperature and precipitation patterns increase the frequency, duration, and intensity of other extreme weather events, such as floods, droughts, heat waves, and tornadoes. 

5	- Higher or lower agricultural yields, further glacial retreat, reduced summer stream flows, species extinctions.

6	- Diseases like malaria are returning into areas where they have been extinguished earlier.
""",
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "Which is not the cause of rising in sea levels?",
              options: [
                "Thermal expansion of the ocean",
                "Melting of land ice",
                "Changing in sea levels"
              ],
              correctAnswer: "Changing in sea levels",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "How many major effects of global warming are there?",
              options: ["Two", "Three", "Four"],
              correctAnswer: "Two",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question:
                  "Why has the total annual power of hurricanes increased?",
              options: [
                "Because diseases are returned",
                "Because the average duration has increased",
                "Because their average and duration have increased"
              ],
              correctAnswer: "Because the average duration has increased",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class EigthTextPage extends StatelessWidget {
  static _DictionaryWidgetState? _dictionaryPageState;
  final Map<String, String> wordDictionary = {
    'Seven': 'Yedi',
    'Ways': 'Yollar',
    'To': 'Koruma',
    'Protect': 'Korumak',
    'The': 'Çevreyi',
    'Environment': 'Çevre',
    'We': 'Biz',
    'all': 'hepimiz',
    'want': 'istemek',
    'to': 'korumak',
    'protect': 'korumak',
    'our': 'bizim',
    'planet,': 'gezegenimizi,',
    'but': 'ancak',
    'we\'re': 'biz',
    'mostly': 'çoğunlukla',
    'too': 'çok',
    'busy': 'meşgul',
    'or': 'veya',
    'too': 'çok',
    'lazy': 'tembel',
    'to': 'korumak',
    'put': 'koymak',
    'up': 'yukarıya',
    'big': 'büyük',
    'change': 'değişiklik',
    'that': 'ki',
    'would': 'olurdu',
    'improve': 'iyileştirmek',
    'our': 'bizim',
    'lifestyle': 'yaşam tarzı',
    'and': 've',
    'save': 'kurtarmak',
    'the': 'bu',
    'environment.': 'çevreyi.',
    'These': 'Bunlar',
    'are': 'dir',
    '7': '7',
    'simple': 'basit',
    'habits': 'alışkanlıklar',
    'to': 'uygulamak',
    'implement': 'uygulamak',
    'in': 'içinde',
    'your': 'senin',
    'everyday': 'günlük',
    'life': 'hayat',
    'which': 'hangi',
    'will': 'olacak',
    'make': 'yapmak',
    'a': 'bir',
    'difference.': 'fark.',
    'There': 'Burada',
    'is': 'vardır',
    'nothing': 'hiçbir şey',
    'new': 'yeni',
    'here': 'burada',
    'but': 'ancak',
    'if': 'eğer',
    'you': 'sen',
    'follow': 'takip etmek',
    'at': 'en',
    'least': 'az',
    'some': 'bazı',
    'of': 'tarafından',
    'these': 'bunlar',
    'tips,': 'ipuçları,',
    'you': 'sen',
    'can': 'olabilir',
    'be': 'ol',
    'proud': 'gurur',
    'of': 'tarafından',
    'yourself': 'kendin',
    'participating': 'katılan',
    'in': 'içinde',
    'the': 'korumak',
    'protection': 'koruma',
    'of': 'tarafından',
    'Use': 'Kullanın',
    'compact': 'kompakt',
    'fluorescent': 'florasan',
    'light': 'ışık',
    'bulbs:': 'ampuller:',
    'It': 'Bu',
    'is': 'doğru',
    'true': 'gerçek',
    'that': 'ki',
    'these': 'bu',
    'bulbs': 'ampuller',
    'are': 'vardır',
    'more': 'daha',
    'expensive,': 'pahalı,',
    'but': 'ancak',
    'they': 'onlar',
    'last': 'son',
    'much': 'çok',
    'longer': 'daha uzun',
    'and': 've',
    'they': 'onlar',
    'can': 'olabilir',
    'save': 'kurtarmak',
    'energy': 'enerji',
    'and': 've',
    'in': 'içinde',
    'the': 'uzun',
    'long': 'uzun',
    'run': 'koşmak',
    'your': 'senin',
    'electricity': 'elektrik',
    'bill': 'fatura',
    'would': 'olurdu',
    'be': 'ol',
    'reduced.': 'azaltılmış.',
    'Donate:': 'Bağışlayın:',
    'You': 'Sen',
    'have': 'vardır',
    'tons': 'tonlar',
    'of': 'tarafından',
    'clothes': 'giysiler',
    'or': 'veya',
    'things': 'şeyler',
    'you': 'sen',
    'want': 'istemek',
    'to': 'korumak',
    'get': 'al',
    'rid': 'kurtulmak',
    'of.': 'tarafından.',
    'If': 'Eğer',
    'they': 'onlar',
    'are': 'vardır',
    'still': 'hala',
    'usable,': 'kullanılabilir,',
    'give': 'vermek',
    'them': 'onları',
    'to': 'korumak',
    'someone': 'birisi',
    'who': 'kim',
    'needs': 'ihtiyaçları',
    'them.': 'onları.',
    'You': 'Sen',
    'may': 'olabilir',
    'also': 'ayrıca',
    'choose': 'seçmek',
    'to': 'korumak',
    'give': 'vermek',
    'them': 'onları',
    'to': 'korumak',
    'associations.': 'dernekler.',
    'These': 'Bu',
    'associations': 'dernekler',
    'may': 'olabilir',
    'sell': 'satmak',
    'them': 'onları',
    'and': 've',
    'collect': 'toplamak',
    'a': 'bir',
    'little': 'az',
    'money.': 'para.',
    'Not': 'Değil',
    'only': 'sadece',
    'will': 'olur',
    'you': 'sen',
    'protect': 'korumak',
    'the': 'çevreyi',
    'environment,': 'çevreyi,',
    'but': 'ancak',
    'you': 'sen',
    'will': 'olur',
    'also': 'ayrıca',
    'contribute': 'katkıda bulunmak',
    'to': 'korumak',
    'a': 'bir',
    'good': 'iyi',
    'cause.': 'sebep.',
    'Turn': 'Kapat',
    'off': 'kapalı',
    'your': 'senin',
    'devices:': 'cihazlar:',
    'When': 'Ne zaman',
    'you': 'sen',
    'do': 'yapmak',
    'not': 'değil',
    'use': 'kullanmak',
    'a': 'bir',
    'house': 'ev',
    'device,': 'cihaz,',
    'turn': 'döndürmek',
    'it': 'o',
    'off.': 'kapalı.',
    'For': 'Örneğin,',
    'example,': 'örnek,',
    'if': 'eğer',
    'you': 'sen',
    'don\'t': 'yapma',
    'watch': 'izlemek',
    'TV,': 'TV,',
    'turn': 'döndürmek',
    'it': 'o',
    'off.': 'kapalı.',
    'Turn': 'Döndürmek',
    'off': 'kapalı',
    'the': 'ışık',
    'light': 'ışık',
    'when': 'ne zaman',
    'you': 'sen',
    'leave': 'ayrılmak',
    'a': 'bir',
    'room': 'oda',
    '(even': '(hatta',
    'if': 'eğer',
    'you': 'sen',
    'intend': 'niyet',
    'to': 'korumak',
    'return.)': 'geri dönmek.)',
    'It\'s': 'Bu',
    'an': 'bir',
    'easy': 'kolay',
    'habit': 'alışkanlık',
    'to': 'korumak',
    'take': 'al',
    'up': 'yukarı',
    'which': 'hangi',
    'will': 'olur',
    'help': 'yardım etmek',
    'you': 'sen',
    'save': 'kurtarmak',
    'a': 'bir',
    'lot': 'çok',
    'of': 'tarafından',
    'money.': 'para.',
    'Walk': 'Yürümek',
    'or': 'veya',
    'cycle:': 'bisiklet:',
    'Driving': 'Sürüş',
    'is': 'vardır',
    'one': 'bir',
    'of': 'tarafından',
    'the': 'en',
    'biggest': 'en büyük',
    'causes': 'nedenleri',
    'of': 'tarafından',
    'pollution.': 'kirlilik.',
    'If': 'Eğer',
    'you': 'sen',
    'want': 'istemek',
    'to': 'korumak',
    'use': 'kullanmak',
    'your': 'senin',
    'car,': 'arabanızı,',
    'ask': 'sormak',
    'yourself': 'kendin',
    'the': 'soru',
    'following': 'sonraki',
    'question:': 'soru:',
    'do': 'yapmak',
    'I': 'ben',
    'really': 'gerçekten',
    'need': 'gereksinim',
    'my': 'benim',
    'car?': 'arabam?',
    'Walk': 'Yürümek',
    'or': 'veya',
    'use': 'kullanmak',
    'your': 'senin',
    'bike': 'bisiklet',
    'if': 'eğer',
    'the': 'bu',
    'journey': 'seyahat',
    'is': 'vardır',
    'a': 'bir',
    'short': 'kısa',
    'Detergent:': 'Deterjan:',
    'Follow': 'Takip etmek',
    'the': 'bu',
    'recommended': 'tavsiye edilen',
    'dose': 'doz',
    'of': 'tarafından',
    'detergent': 'deterjan',
    'to': 'korumak',
    'wash': 'yıkama',
    'your': 'senin',
    'clothes': 'giysiler',
    'or': 'veya',
    'dishes.': 'yemekler.',
    'leaky': 'sızıntılı',
    'faucets:': 'musluklar:',
    'Watch': 'İzle',
    'leaky': 'sızıntılı',
    'faucets,': 'musluklar,',
    'which': 'ki',
    'can': 'olabilir',
    'cause': 'neden olmak',
    'a': 'bir',
    'significant': 'önemli',
    'increase': 'artış',
    'in': 'içinde',
    'the': 'bu',
    'water': 'su',
    'bill.': 'fatura.',
    'An': 'Bir',
    'average': 'ortalama',
    'of': 'tarafından',
    '120': '120',
    'liters': 'litre',
    'of': 'tarafından',
    'water': 'su',
    'can': 'olabilir',
    'be': 'ol',
    'wasted': 'israf edilmiş',
    'due': 'nedeniyle',
    'to': 'korumak',
    'a': 'bir',
    'dripping': 'damlama',
    'faucet.': 'musluk.',
    'Rainwater:': 'Yağmur suyu:',
    'Think': 'Düşünmek',
    'of': 'tarafından',
    'recovering': 'kurtarma',
    'rainwater.': 'yağmur suyu.',
    'This': 'Bu',
    'water': 'su',
    'can': 'olabilir',
    'be': 'ol',
    'used': 'kullanılan',
    'for': 'için',
    'different': 'farklı',
    'purposes.': 'amaçlar.',
    'This': 'Bu',
    'list': 'liste',
    'is': 'vardır',
    'far': 'uzak',
    'from': 'tarafından',
    'being': 'olma',
    'exhaustive': 'kapsamlı',
    'but': 'ancak',
    'in': 'içinde',
    'addition': 'ek',
    'to': 'korumak',
    'saving': 'kurtarma',
    'the': 'çevreyi',
    'environment,': 'çevreyi,',
    'all': 'tüm',
    'these': 'bu',
    'tips': 'ipuçları',
    'will': 'olur',
    'help': 'yardım etmek',
    'you': 'sen',
    'save': 'kurtarmak',
    'money.': 'para.'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eigth Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextWithUnderline(
              text: """Seven Ways To Protect The Environment


We all want to protect our planet, but we're mostly too busy or too lazy to put up big change that would improve our lifestyle and save the environment.

These are 7 simple habits to implement in your everyday life which will make a difference. There is nothing new here but if you follow at least some of these tips, you can be proud of yourself participating in the protection of the environment.
 

1.	Use compact fluorescent light bulbs:
    It is true that these bulbs are more
  expensive, but they last much
  longer and they can save energy
  and in the long run your electricity
  bill would be reduced.

2.	Donate:
    You have tons of clothes or things
  you want to get rid of. If they are
  still usable, give them to someone
  who needs them. You may also
  choose to give them to
  associations. These associations
  may sell them and collect a little
  money. Not only will you protect the
  environment, but you will also 
  contribute to a good cause.

3.	Turn off your devices:
    When you do not use a house
    device, turn it off. For example, if 
    you don't watch TV, turn it off. 
    Turn off the light when you leave a 
    room (even if you intend to return.) 
    It's an easy habit to take up which 
    will help you save a lot of money.

4.	Walk or cycle:
    Driving is one of the biggest 
    causes of pollution. If you want to 
    use your car, ask yourself the 
    following question: do I really need
    my car? Walk or use your bike if
    the journey is a short one

5.	Detergent:
    Follow the recommended dose of 
  detergent to wash your clothes or 
  dishes.

6.	leaky faucets:
    Watch leaky faucets, which can 
    cause a significant increase in 
    the water bill. An average of 120 
    liters of water can be wasted due 
    to a dripping faucet.

7.	Rainwater:
    Think of recovering rainwater. This 
  water can be used for different 
  purposes.


This list is far from being exhaustive but in addition to saving the environment, all these tips will help you save money.
""",
              onWordTap: (word) {
                showWordPopupMenu(context, word);
              },
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question: "How many ways  are there to protect our world?",
              options: ["6", "7", "4"],
              correctAnswer: "7",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question:
                  "How many liters of water can be wasted due to a dripping faucet?",
              options: ["120", "70", "110"],
              correctAnswer: "120",
            ),
            SizedBox(height: 20),
            MultipleChoiceQuestion(
              question:
                  "What is the disadvantage of using compact fluoresant light bulbs?",
              options: [
                "They can save energy",
                "They last longer",
                "They are expensive"
              ],
              correctAnswer: "They are expensive",
            ),
          ],
        ),
      ),
    );
  }

  void showWordPopupMenu(BuildContext context, String word) {
    // Kelimenin Türkçe karşılığını alın
    String? turkishTranslation = wordDictionary[word];

    // Pop-up menüsü oluşturuldu
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kelime: $word',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Türkçe karşılık gösterildi
              Text(
                'Türkçe Karşılığı: ${turkishTranslation ?? 'Bulunamadı'}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Kelimeyi sözlüğe kaydetmek için buton eklendi
              ElevatedButton(
                onPressed: () async {
                  // Sözlüğe kelimeyi eklemek için fonksiyon çağrıldı
                  await addToDictionary(
                      context, word, turkishTranslation ?? '');
                  Navigator.pop(context);
                },
                child: Text('Kelimeyi Sözlüğe Kaydet'),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> addToDictionary(
      BuildContext context, String englishWord, String turkishWord) async {
    try {
      // Sözlüğe kelimeyi ekleyin
      await DatabaseHelper.instance.addToDictionary(englishWord, turkishWord);

      // Başarılı bir şekilde eklendiğinde bildirim gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Kelime sözlüğe eklendi: $englishWord - $turkishWord',
            style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
          ),
        ),
      );
    } catch (e) {
      // Ekleme işlemi başarısız olursa hata gösterin
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kelimeyi sözlüğe eklerken hata oluştu: $e'),
        ),
      );
    }
  }
}

class MyTextWithUnderline extends StatelessWidget {
  final String text;
  final Function(String) onWordTap;

  MyTextWithUnderline({
    required this.text,
    required this.onWordTap,
  });

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textSpans = [];

    text.split(' ').forEach((word) {
      textSpans.add(
        TextSpan(
          text: '$word ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              onWordTap(word);
            },
        ),
      );
    });

    return Container(
      margin: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
          children: textSpans,
        ),
      ),
    );
  }
}

class MultipleChoiceQuestion extends StatefulWidget {
  final String question;
  final List<String> options;
  final String correctAnswer;

  const MultipleChoiceQuestion({
    Key? key,
    required this.question,
    required this.options,
    required this.correctAnswer,
  }) : super(key: key);

  @override
  _MultipleChoiceQuestionState createState() => _MultipleChoiceQuestionState();
}

class _MultipleChoiceQuestionState extends State<MultipleChoiceQuestion> {
  String? selectedAnswer;
  String? resultMessage;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.question,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            ...widget.options.map((option) => RadioListTile(
                  title: Text(option),
                  value: option,
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value as String?;
                      resultMessage =
                          null; // Reset result message when user changes selection
                    });
                  },
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswer == null) {
                  setState(() {
                    resultMessage = 'Please select an answer';
                  });
                } else {
                  setState(() {
                    resultMessage = selectedAnswer == widget.correctAnswer
                        ? 'Correct!'
                        : 'Incorrect!';
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 116, 188, 173), // Button color
                foregroundColor: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Submit Answer'),
            ),
            SizedBox(height: 10),
            if (resultMessage != null)
              Text(
                resultMessage!,
                style: TextStyle(
                  color: resultMessage == 'Correct!'
                      ? Color.fromARGB(255, 115, 189, 163)
                      : Color.fromARGB(255, 39, 46, 54),
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class DictionaryPage extends StatelessWidget {
  static List<String> englishWords = [];
  static List<String> turkishWords = [];

  static Future<void> _fetchDictionary() async {
    List<Map<String, dynamic>> dictionaries =
        await DatabaseHelper.instance.getAllItems();

    englishWords.clear();
    turkishWords.clear();

    for (var dictionary in dictionaries) {
      englishWords.add(dictionary[DatabaseHelper.columnEnglishWord]);
      turkishWords.add(dictionary[DatabaseHelper.columnTurkishWord]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _fetchDictionary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return DictionaryWidget();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

class DictionaryWidget extends StatefulWidget {
  const DictionaryWidget({Key? key}) : super(key: key);

  @override
  _DictionaryWidgetState createState() => _DictionaryWidgetState();
}

class _DictionaryWidgetState extends State<DictionaryWidget> {
  late ScrollController _englishListController;
  late ScrollController _turkishListController;

  @override
  void initState() {
    super.initState();
    _englishListController = ScrollController();
  }

  @override
  void dispose() {
    _englishListController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 207, 215),
        title: Text(
          'Dictionary',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Scrollbar(
                    controller: _englishListController,
                    child: ListView.builder(
                      controller: _englishListController,
                      itemCount: DictionaryPage.englishWords.length,
                      itemBuilder: (context, index) {
                        return DictionaryItem(
                          englishWord: DictionaryPage.englishWords[index],
                          turkishWord: DictionaryPage.turkishWords[index],
                          dictionaryPageState: this,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                _clearDatabase(context);
              },
              child: Text('Clear Dictionary'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 141, 199, 237),
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _clearDatabase(BuildContext context) async {
    await DatabaseHelper.instance.clearDatabase();

    DictionaryPage.englishWords.clear();
    DictionaryPage.turkishWords.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Database Cleared'),
      ),
    );
    setState(() {});
  }
}

class DictionaryItem extends StatelessWidget {
  final String englishWord;
  final String turkishWord;
  final _DictionaryWidgetState dictionaryPageState;

  const DictionaryItem({
    Key? key,
    required this.englishWord,
    required this.turkishWord,
    required this.dictionaryPageState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          '$englishWord - $turkishWord',
          style: TextStyle(color: Color.fromARGB(255, 105, 126, 125)),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Color.fromARGB(255, 105, 126, 125)),
          onPressed: () {
            _deleteFromDictionary(context);
          },
        ),
      ),
    );
  }

  void _deleteFromDictionary(BuildContext context) async {
    await DatabaseHelper.instance
        .deleteFromDictionary(englishWord, turkishWord);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Removed from Dictionary: $englishWord - $turkishWord',
          style: TextStyle(color: Color.fromARGB(255, 205, 240, 238)),
        ),
      ),
    );

    if (dictionaryPageState.mounted) {
      dictionaryPageState.setState(() {
        DictionaryPage.englishWords.remove(englishWord);
        DictionaryPage.turkishWords.remove(turkishWord);
      });
    }
  }
}

class DatabaseHelper {
  static const String _databaseName = 'dictionary_database.db';
  static const int _databaseVersion = 1;
  late Database _database;
  static const String _tableName = 'dictionary';
  static const String columnEnglishWord = 'englishWord';
  static const String columnTurkishWord = 'turkishWord';

  static final DatabaseHelper _instance = DatabaseHelper._internal();

  DatabaseHelper._internal();

  static DatabaseHelper get instance {
    return _instance;
  }

  Future<void> open() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE $_tableName($columnEnglishWord TEXT, $columnTurkishWord TEXT)',
        );
      },
      version: _databaseVersion,
    );
  }

  Future<void> addToDictionary(String englishWord, String turkishWord) async {
    if (_database == null) {
      await open();
    }

    await _database.insert(
      _tableName,
      {
        columnEnglishWord: englishWord,
        columnTurkishWord: turkishWord,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    debugPrint('Added to Dictionary: $englishWord - $turkishWord');
  }

  Future<List<Map<String, dynamic>>> getAllItems() async {
    Database db = await _database;
    return await db.query(_tableName);
  }

  Future<void> deleteFromDictionary(
      String englishWord, String turkishWord) async {
    await _database.delete(
      _tableName,
      where: '$columnEnglishWord = ? AND $columnTurkishWord = ? LIMIT 1',
      whereArgs: [englishWord, turkishWord],
    );
  }

  Future<void> clearDatabase() async {
    await _database.delete(_tableName);
  }
}

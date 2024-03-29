import 'dart:io';

void main () {
  List<List<Map<String, dynamic>>> questions = [
    [
      {'question': "Flutter qaysi dasturlash tilidan foydalanadi?"},
      {'status': 0, 'answer': 'Python'},
      {'status': 0, 'answer': 'C'},
      {'status': 1, 'answer': 'Dart'}
    ],
    [
      {'question': "Flutter yordamida qanday ilovalar qilsa bo'ladi?"},
      {'status': 1, 'answer': 'Web, Mobile, Desktop'},
      {'status': 0, 'answer': 'Web'},
      {'status': 0, 'answer': 'Mobile'}
    ],
    [
      {'question': "Flutterni qaysi kompaniya support qiladi?"},
      {'status': 0, 'answer': 'Amazon'},
      {'status': 1, 'answer': 'Google'},
      {'status': 0, 'answer': 'Facebook'}
    ],
    [
      {'question': "Flutter logosi nimaga o'xshaydi?"},
      {'status': 0, 'answer': 'Qushga'},
      {'status': 0, 'answer': 'Shunchaki belgiga'},
      {'status': 1, 'answer': 'F harfiga'}
    ],
    [
      {'question': "Flutter Web sayt qila oladimi?"},
      {'status': 1, 'answer': 'Ha'},
      {'status': 0, 'answer': 'Yoq'},
      {'status': 0, 'answer': 'Bilmayman'}
    ]
  ];

  //list for collecting answers
  List<int> res = [];

  print("----- Flutter Quiz -----");

  //print all qauestion with answer
  questions.forEach((element) {
    print("🔵 ${element[0]['question']}");
    print("""
[a] ${element[1]['answer']}
[b] ${element[2]['answer']}
[c] ${element[3]['answer']}
""");

    //checking answers
    while (true) {
      stdout.write("Javob: ");
      String? answer = stdin.readLineSync();

      if (answer == '') {
        print("❗️ Tanlang a, b, c!");
        continue;
      } else {
        if (answer!.toLowerCase() == 'a') {
          if (element[1]['status'] == 1) {
            print("👍 Barakalla!\n");
            res.add(1);
          } else {
            res.add(0);
            print("🫤 Adashdingiz!\n");
          }
        } else if (answer.toLowerCase() == 'b') {
          if (element[2]['status'] == 1) {
            print("👌 Qoyil!\n");
            res.add(1);
          } else {
            res.add(0);
            print("🫤 Adashdingiz!\n");
          }
        } else if (answer.toLowerCase() == 'c') {
          if (element[3]['status'] == 1) {
            print("✅ To'g'ri!\n");
            res.add(1);
          } else {
            print("🫤 Adashtingiz!\n");
            res.add(0);
          }
        } else {
          print("❗️ Tanlang a, b, c!");
          continue;
        }
        break;
      }
    }
  });

  //resplacing answers with means emoji
  int count = 0;
  List<String> emojiGraph = [];

  for (int i = 0; i < res.length; i++) {
    if (res[i] == 1) {
      emojiGraph.add("✅");
      count++;
    } else {
      emojiGraph.add("❌");
    }
  }

  //show result
  print(emojiGraph.join(' '));
  print("To'g'ri javoblar soni: $count");

}
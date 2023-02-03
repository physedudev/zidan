import 'package:flutter/material.dart';
import 'package:project_management/app/features/dashboard/views/screens/dashboard_screen.dart';




class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const routeName = '/Profile';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0x3F3B6C),
        foregroundColor: Colors.black,
        title: const Text("My Profile"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.settings_rounded)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://img.okezone.com/content/2022/09/30/33/2678269/iu-jalani-isolasi-mandiri-setelah-kontak-erat-dengan-pasien-covid-19-di-italia-xNpKnKQvLj.jpeg",
                ),
              ),
              SizedBox(height: 10),
              Text(
                "mbak IU",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("Newbie")
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  "Isi yang kurang mbak",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(
              5,
              (index) {
                return Expanded(
                  child: Container(
                    height: 7,
                    margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 0 ? Colors.blue : Colors.black12,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final card = profileCompletionCards[index];
                  return SizedBox(
                    width: 160,
                    child: Card(
                        shadowColor: Colors.black12,
                        child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Icon(
                                  card.icon,
                                  size: 30,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  card.title,
                                  textAlign: TextAlign.center,
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Text(card.buttonText))
                              ],
                            ))),
                  );
                },
                separatorBuilder: (context, index) =>
                    const Padding(padding: EdgeInsets.all(5)),
                itemCount: profileCompletionCards.length),
          ),
          const SizedBox(
            height: 15,
          ),
          ...List.generate(
            customListTiles.length,
            (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DashboardScreen();
                      }
                      ));
                    },
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;
  ProfileCompletionCard(
      {required this.title, required this.buttonText, required this.icon, });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Set Your profile Details",
    buttonText: "Continue",
    icon: Icons.person,
  ),
  ProfileCompletionCard(
    title: "Upload your resume",
    buttonText: "Upload",
    icon: Icons.document_scanner,
  ),
  ProfileCompletionCard(
    title: "Add your skills",
    buttonText: "Add",
    icon: Icons.square,) 
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({required this.icon, required this.title,});
}

List<CustomListTile> customListTiles = [
  CustomListTile(icon: Icons.list, title: "Topik", ),
  CustomListTile(icon: Icons.question_answer_outlined, title: "FAQ"),
  CustomListTile(icon: Icons.pause_presentation, title: "Term of Service"),
  CustomListTile(icon: Icons.battery_charging_full, title: "About Us")
];
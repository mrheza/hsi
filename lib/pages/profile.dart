import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color hsiColor = const Color(0xFF233976);

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return PageProfileElement();
  }
}

class PageProfileElement extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Profil",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 15,
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              "v.2402-1601",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15, top: 2),
                          child: SizedBox(
                            width: 35,
                            child: Image.asset("assets/images/hsi.png"),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AHMAD MUNDHOFA',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'ARN231-20015',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit, color: hsiColor),
                      const SizedBox(width: 5),
                      Text(
                        "Ubah",
                        style: TextStyle(
                            color: hsiColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
            height: 30,
            color: Color(0xFFF1F1F1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 25,
                      color: hsiColor,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nomor Whatsapp',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '62-8983777281',
                          style: TextStyle(
                            color: hsiColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.home,
                        size: 30,
                        color: hsiColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Alamat',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Griya Indah Serpong, Kelurahan Cibinong,\nKecamatan Gunung Sindur',
                          style: TextStyle(
                            color: hsiColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.location_on,
                        size: 30,
                        color: hsiColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kabupaten/Kota, Provinsi, Kode Pos',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'KAB. BOGOR, JAWA BARAT, 16340',
                          style: TextStyle(
                            color: hsiColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.family_restroom,
                        size: 30,
                        color: hsiColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Status Pernikahan / Jumlah Anak',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Menikah / 1',
                          style: TextStyle(
                            color: hsiColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 5,
            height: 30,
            color: Color(0xFFF1F1F1),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.headset_mic,
                      color: hsiColor,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'List Admin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text('nova williyanto'),
                    SizedBox(width: 10),
                    Text(
                      '(ARN201-641139)',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                    'Silsilah Ilmiyyah 6 : Beriman Kepada Malaikat\nGrup: ARN231-10'),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Program Reguler',
                      style: TextStyle(color: hsiColor),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: const Color(0xFF57CB93),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Hubungi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 30,
                  color: Color(0xFFF1F1F1),
                ),
                const Row(
                  children: [
                    Text('TEDI BRAJADENTAS'),
                    SizedBox(width: 10),
                    Text(
                      '(ARN221-16218)',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                    'Silsilah Ilmiyyah 6 : Beriman Kepada Malaikat\nGrup: ARN231-10'),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Program Reguler',
                      style: TextStyle(color: hsiColor),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: const Color(0xFF57CB93),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Hubungi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 5,
            height: 30,
            color: Color(0xFFF1F1F1),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(
                  Icons.info,
                  color: hsiColor,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Info Lainnya',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  });

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 170,
      height: 130,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              fontSize: 14,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

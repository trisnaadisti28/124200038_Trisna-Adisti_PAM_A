import 'package:al_quran/configs/app.dart';
import 'package:al_quran/configs/app_theme.dart';
import 'package:al_quran/providers/app_provider.dart';
import 'package:al_quran/utils/assets.dart';
import 'package:al_quran/widgets/app/app_version.dart';
import 'package:al_quran/widgets/button/app_back_button.dart';
import 'package:al_quran/widgets/app/title.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

import '../login/login.dart';

part 'widgets/share_custom_button.dart';

class ProfileAppScreen extends StatelessWidget {
  const ProfileAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            AppBackButton(),
            Center(
              child: CustomTitle(title: 'Profile'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ProfileInfo(),
            ),
            Positioned(
              top: height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: CustomTitle(title: 'Profile'),
              ),
            ),
            // Tambahkan FloatingActionButton di sini
            Positioned(
              bottom: height * 0.02,
              right: MediaQuery.of(context).size.width * 0.1,
              child: FloatingActionButton(
                onPressed: () {
                  // Panggil fungsi logout di sini
                  _handleLogout(context);
                },
                child: Icon(Iconsax.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi logout
  void _handleLogout(BuildContext context) {
    // Logika logout di sini (bersihkan sesi, dll.)

    // Pindah ke halaman login setelah logout
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: height * 0.13),
          CircleAvatar(
            radius: height * 0.1,
            backgroundImage: AssetImage(StaticAssets.disti),
          ),
          SizedBox(height: height * 0.02),
          Card(
            // Wadah untuk informasi profil
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Informasi Profile",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10.0),
                  // Tambahkan informasi profil di sini
                  Text(
                    "Nama: Trisna Adisti\n"
                        "NIM : 124200038\n"
                        "Kesan : Mobile itu menyenangkan\n"
                        "Pesan : Semoga tidak dipertemukan kembali",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.08),
          AppDivider(),
          SizedBox(height: height * 0.02),
          const AppVersion(),
          SizedBox(height: height * 0.02),
        ],
      ),
    );
  }
}

class AppDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      width: double.infinity,
      color: Theme.of(context).dividerColor,
    );
  }
}

import 'package:al_quran/app_routes.dart';
import 'package:iconsax/iconsax.dart';

class DrawerUtils {
  static const List items = [
    {
      'title': 'Surah',
      'icon': Iconsax.sort,
      'route': AppRoutes.surah,
    },
    {
      'title': 'Juz',
      'icon': Iconsax.note_1,
      'route': AppRoutes.juz,
    },
    {
      'title': 'Bookmarks',
      'icon': Iconsax.book_1,
      'route': AppRoutes.bookmarks,
    },
    {
      'title': 'Introduction',
      'icon': Iconsax.info_circle,
      'route': AppRoutes.onboarding,
    },
    {
      'title': 'Profile',
      'icon': Iconsax.share,
      'route': AppRoutes.shareApp,
    },
  ];
}

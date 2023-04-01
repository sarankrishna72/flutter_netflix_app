import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/widget_home_banner_bottom_section.dart';
import 'package:netflix_app/presentation/home/widgets/widget_home_category_based_movie_listing_section.dart';
import 'package:netflix_app/presentation/widgets/widget_app_bar.dart';

import '../main_page/widgets/widget_bottom_navigation.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 130),
        child: WidgetHomeAppBar(),
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection scrollDirection = notification.direction;

          if (scrollDirection == ScrollDirection.forward) {
            isShowSubMenu.value = true;
          } else if (scrollDirection == ScrollDirection.reverse) {
            isShowSubMenu.value = false;
          }
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: screenSize.height * .75,
                    width: double.infinity,
                    child: Image.network(HOME_PAGE_BANNER, fit: BoxFit.cover),
                  ),
                  // Positioned(
                  //   top: 90,
                  //   left: 0,
                  //   right: 0,
                  //   child: ,
                  // ),
                  const WidgetHomeBannerBottomSection()
                ],
              ),

              // MOVIE LISTING START
              const WidgetHomeCategoryBasedMovieListingSection(),
              // MOVIE LISTING END
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetHomeAppBar extends StatelessWidget {
  const WidgetHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isShowSubMenu,
      builder: (BuildContext ctx, isShowMenu, _) {
        return Column(
          children: [
            Container(
              color: BLACK_WITH_OPACITY_7,
              child: const WidgetAppBar(
                isShowLogo: true,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: BLACK_WITH_OPACITY_7,
              height: isShowMenu ? 35 : 0,
              padding: const EdgeInsets.only(bottom: DEFAULT_SPACE / 2),
              //
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "TV Shows",
                    style: TextStyle(
                      fontSize: DEFAULT_TEXT_SIZE,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Movie",
                    style: TextStyle(
                      fontSize: DEFAULT_TEXT_SIZE,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                      fontSize: DEFAULT_TEXT_SIZE,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

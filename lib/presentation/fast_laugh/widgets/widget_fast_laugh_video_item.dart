import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetFastLaughVideoItem extends StatelessWidget {
  final int index;

  const WidgetFastLaughVideoItem({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
          // child: Image.network(
          //   "https://www.themoviedb.org/t/p/w220_and_h330_face/kbfcnflR4FnfxvSnXR536V4FMUB.jpg",
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(DEFAULT_SPACE * .5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LEFT SIDE ACTION
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: DEFAULT_ICON_COLOR,
                    shadows: [DEFUALT_ICON_SHADOW],
                  ),
                ),

                // RIGHT SIDE ACTION
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: DEFAULT_SPACE),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(50),
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg"),
                        ),
                      ),
                    ),
                    const WidgetFastLaughVideoItemActions(
                      icon: Icons.emoji_emotions,
                      title: "LOL",
                    ),
                    const WidgetFastLaughVideoItemActions(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    const WidgetFastLaughVideoItemActions(
                      icon: Icons.share,
                      title: "Share",
                    ),
                    const WidgetFastLaughVideoItemActions(
                      icon: Icons.play_arrow,
                      title: "Play",
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class WidgetFastLaughVideoItemActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const WidgetFastLaughVideoItemActions({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: DEFAULT_SPACE / 2),
      child: Column(
        children: [
          Icon(
            icon,
            size: DEFAULT_ICON_SIZE + 4,
            color: DEFAULT_ICON_COLOR,
            shadows: const [
              DEFUALT_ICON_SHADOW,
            ],
          ),
          Text(
            title,
            style: const TextStyle(
              color: DEFAULT_TEXT_COLOR,
              fontSize: DEFAULT_TEXT_SIZE - 2,
            ),
          ),
        ],
      ),
    );
  }
}

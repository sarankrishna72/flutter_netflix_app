import 'package:flutter/material.dart';
import 'package:netflix_app/core/const_tmdb_image_base_url.dart';
import 'package:netflix_app/domain/downloads/model/downloads_model.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class WidgetTopSearchItemTile extends StatelessWidget {
  final DownloadsModel item;
  const WidgetTopSearchItemTile({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screeSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: SECONDARY_BACKGROUND_COLOR.withOpacity(0.4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(DEFAULT_INPUT_BORDER_RADIUS),
            child: Image.network(
              '${TMDB_IMAGE_BASE_URL}${item.posterPath!}',
              width: screeSize.width * .32,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          customSizeBox(width: DEFAULT_SPACE * .5),
          Expanded(
            child: Text(
              item.title!,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: DEFAULT_TEXT_COLOR,
                fontSize: DEFAULT_TEXT_SIZE * .85,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          customSizeBox(width: DEFAULT_SPACE * .5),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            icon:
                const Icon(Icons.play_circle_outline, size: DEFAULT_ICON_SIZE),
            color: DEFAULT_ICON_COLOR,
          )
        ],
      ),
    );
  }
}

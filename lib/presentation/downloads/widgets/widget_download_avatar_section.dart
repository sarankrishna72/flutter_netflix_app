import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/core/const_tmdb_image_base_url.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/widget_downloads_image.dart';
import 'package:netflix_app/presentation/widgets/widget_loader.dart';

class WidgetDownloadAvatarSection extends StatelessWidget {
  const WidgetDownloadAvatarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImages());
    // });

    final widgetConfig = [
      {
        'angle': 20,
        'size': Size(screenSize.width * .40, screenSize.width * .58),
        'margin': const EdgeInsets.only(left: 130, bottom: 10)
      },
      {
        'angle': -20,
        'size': Size(screenSize.width * .40, screenSize.width * .58),
        'margin': const EdgeInsets.only(right: 130, bottom: 10)
      },
      {
        'angle': 0,
        'size': Size(screenSize.width * .44, screenSize.width * .65),
        'margin': const EdgeInsets.only(bottom: 0)
      }
    ];

    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return SizedBox(
          width: screenSize.width - (DEFAULT_SPACE * 2),
          height: screenSize.width - (DEFAULT_SPACE * 2),
          child: state.isLoading
              ? const WidgetLoader()
              : Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: screenSize.width * .4,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                    for (int i = 0;
                        i < state.downloadsList!.take(3).length;
                        i++)
                      WidgetDownloadsImage(
                        radius: DEFAULT_BORDER_RADIUS / 2,
                        size: widgetConfig[i]['size'] as Size,
                        image:
                            '${TMDB_IMAGE_BASE_URL}${state.downloadsList![i].posterPath}',
                        angle: widgetConfig[i]['angle'],
                        margin: widgetConfig[i]['margin'] as EdgeInsets,
                      ),
                  ],
                ),
        );
      },
    );
  }
}

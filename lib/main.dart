import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/domain/core/dependancy_injection/injectable.dart';
import 'package:netflix_app/presentation/main_page/screen_main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<SearchBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Netflix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromRGBO(24, 233, 111, 0)),
            scaffoldBackgroundColor: BACKGROUND_COLOR,
            fontFamily: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ).fontFamily,
            textTheme: const TextTheme(
              bodyMedium: TextStyle(color: DEFAULT_TEXT_COLOR),
              bodyLarge: TextStyle(color: DEFAULT_TEXT_COLOR),
              bodySmall: TextStyle(color: DEFAULT_TEXT_COLOR),
            )),
        home: ScreenMainPage(),
      ),
    );
  }
}

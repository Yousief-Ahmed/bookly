import 'package:bookly/constants.dart';
import 'package:bookly/core/util/go_router.dart';
import 'package:bookly/core/util/service_locator.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  ScreenUtil.ensureScreenSize();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedbooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
        ),
      ),
    );
  }
}

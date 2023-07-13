import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'views/splash_screen/splash_screen.dart';
import 'shared/api_middleware_bloc/api_client_bloc.dart';
import 'shared/api_middleware_bloc/api_client_state.dart';
import 'shared/error/failures.dart';
import 'shared/widgets/nav.dart';

import 'di.dart';

import 'logic/theme/theme_cubit.dart';
import 'shared/theme/helper.dart';
import 'shared/localization/trans.dart';
import 'shared/theme/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Di.themeBloc..loadTheme()),
        BlocProvider(create: (context) => Di.apiClientBloc),

      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return BlocListener<ApiClientBloc, ApiClientState>(
            listener: (context, state) {
              state.whenOrNull(
                error: (failure) {
                  KHelper.showSnackBar(KFailure.toError(failure));
                },
              );
            },
            child: GetMaterialApp(
              navigatorKey: Nav.navigator,

              debugShowCheckedModeBanner: false,
              localizationsDelegates: Tr.delegates,
              supportedLocales: Tr.supportedLocales,
              locale: ThemeBloc.of(context).locale,
              localeResolutionCallback: (Locale? locale, Iterable<Locale> iterable) {
                return ThemeBloc.of(context).locale;
              },
              theme: KThemeData.light,
              // darkTheme: KThemeData.dark,
              themeMode: ThemeBloc.of(context).themeMode,
              home: Builder(
                builder: (context) {
                  return AnnotatedRegion<SystemUiOverlayStyle>(
                    value: KThemeData.of(context).overlayStyle,
                    child:  const SplashScreen(),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

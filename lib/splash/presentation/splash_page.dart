import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/bloc/user_data_state.dart';
import 'package:manzil/core/domain/user_model.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/routes/route_names.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserModel>(
      builder: (context, userData) {
        return BlocConsumer<UserDataBloc, UserDataState>( 
          listener: (context, state) {
            if (state.status == UserDataStatus.loaded) {
              if (userData.name.isNotEmpty) {
                Navigator.of(context)
                    .pushReplacementNamed(AppRouteNames.homePage);
              } else {
                Navigator.of(context)
                    .pushReplacementNamed(AppRouteNames.languagePage);
              }
            }
            
          },
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: Image.asset(Assets.images.splashImage.path),
              ),
            );
          },
        );
      },
    );
  }
}

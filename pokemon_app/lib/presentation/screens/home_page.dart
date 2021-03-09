import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../blocs/blocs.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonBloc>(
      create: (context) => PokemonBloc()..add(PokemonDataFetched()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.cyan,
          centerTitle: true,
          title: AppTextDisplay(
            text: 'Pokemon App',
          ),
        ),
        body: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<PokemonBloc, PokemonState>(
                  builder: (context, state) {
                    if (state is PokemonLoadInProgress) {
                      return AppLoadState();
                    }
                    if (state is PokemonLoadSuccess) {
                      return AppErrorState("This is a test");
                    }

                    if (state is PokemonLoadFailure) {
                      return AppErrorState(state.error);
                    }

                    return Center(
                      child: AppTextDisplay(
                        text: "An error is occured with Bloc Execution",
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

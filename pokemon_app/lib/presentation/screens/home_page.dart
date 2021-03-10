import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../blocs/blocs.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cyan,
        centerTitle: true,
        title: AppTextDisplay(
          text: 'Pokemon App',
        ),
      ),
      drawer: Drawer(),
      body: Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _displayPokemonsList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(AppIcons.refresh),
        backgroundColor: AppColors.cyan,
        onPressed: () {
          BlocProvider.of<PokemonBloc>(context).add(PokemonDataRefresh());
        },
      ),
    );
  }

  Widget _displayPokemonsList() {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        if (state is PokemonLoadInProgress) {
          return AppLoadState();
        }
        if (state is PokemonLoadSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setHeight(4),
              horizontal: ScreenUtil().setWidth(4),
            ),
            child: Container(
              height: ScreenUtil().screenHeight,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                children: state.pokemon
                    .map(
                      (pokemon) => PokemonItem(pokemon),
                    )
                    .toList(),
              ),
            ),
          );
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
    );
  }
}

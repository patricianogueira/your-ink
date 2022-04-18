import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_ink/core/models/paint_model.dart';
import 'package:your_ink/features/paint_options/bloc/paint_options_bloc.dart';
import 'package:your_ink/features/paint_options/bloc/paint_options_state.dart';
import 'package:your_ink/utils/cards.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';

class PaintOptions extends StatefulWidget {
  final List<PaintModel> paintList;

  const PaintOptions({
    Key? key,
    required this.paintList,
  }) : super(key: key);

  @override
  State<PaintOptions> createState() => _PaintOptionsState();
}

class _PaintOptionsState extends State<PaintOptions> {
  late final PaintOptionsBloc _bloc;

  @override
  //acessando o bloc
  void initState() {
    super.initState();
    _bloc = context.read<PaintOptionsBloc>();
    _bloc.getNews(); ////
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.greyCard,
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: CustomColors.black,
          ),
          onTap: () {},
        ),
        elevation: 0,
        backgroundColor: CustomColors.greyCard,
      ),
      body: BlocBuilder<PaintOptionsBloc, PaintOptionsState>(
          bloc: _bloc,
          builder: (context, state) {
            print(state);
            if (state is PaintOptionsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // // if (state is PaintOptionsSucess) {
            // final List = state;
            // // }
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      Strings.paintOptions,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      //widget.paintList.length, 
                      itemBuilder: (context, index) {
                        //final paint = widget.paintList[index];

                        return const MyCards();
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      Strings.buyHere,
                      style: TextStyle(
                          color: CustomColors.write,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: CustomColors.purple,
                      fixedSize: const Size(320, 50),
                      shape: const StadiumBorder(),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

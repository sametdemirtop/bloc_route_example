
import 'package:bloc_example/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/color_bloc/color_bloc.dart';
import '../blocs/color_bloc/color_event.dart';
import '../blocs/color_bloc/color_state.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBlocBuilderBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      centerTitle: true,
      title: const Text(
        "Simple Bloc Example",
      ),
    );
  }

  buildBlocBuilderBody() {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Container(
          color: state.color,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: getHorizontalSize(330),
                child: TextField(
                  controller: _controller,

                  style: TextStyle(
                      color: state.color == Colors.red
                          ? Colors.white
                          : Colors.black),
                  decoration: const InputDecoration(
                    labelText: "Text",
                    hintText: "Enter Text",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  onChanged: (text) {
                    if (text.length == 4) {
                      context.read<ColorBloc>().add(ApplyRedColor());
                    } else {
                      context.read<ColorBloc>().add(ApplyWhiteColor());
                    }
                  },
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/secondPage");
                },
                child: const Text("Go to second page"),
              )
            ],
          ),
        );
      },
    );
  }
}

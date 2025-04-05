import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BlocBase>
    extends State<T> {
  late final bloc = GetIt.instance.get<B>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(value: bloc, child: buildPage(context));
  }

  Widget buildPage(BuildContext context);
}

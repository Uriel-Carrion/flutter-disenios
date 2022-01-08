import 'package:flutter/material.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:disenos/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackgroundScreen(), _HomeBody()],
      ),
      //Barra de navegación
      bottomNavigationBar: CustomBottonNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scroll en la pantalla
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titulos
          PageTitle(),

          //Card table
          CardTable()
        ],
      ),
    );
  }
}

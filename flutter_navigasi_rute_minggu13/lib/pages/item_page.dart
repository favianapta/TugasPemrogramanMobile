import 'package:flutter/material.dart';
import 'package:flutter_navigasi_rute_minggu13/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TampilTabel(
                nama_aja: args.name, pri_aja: args.price, sta_aja: args.status),
          ],
        ),
      ),
    );
  }
}

class TampilTabel extends StatelessWidget {
  const TampilTabel({
    Key? key,
    required this.nama_aja,
    required this.pri_aja,
    required this.sta_aja,
  }) : super(key: key);

  final String nama_aja;
  final int pri_aja;
  final String sta_aja;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(120.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Nama', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Price', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Status', style: TextStyle(fontSize: 20.0))
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text(nama_aja)]),
                  Column(children: [Text(pri_aja.toString())]),
                  Column(children: [Text(sta_aja)]),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
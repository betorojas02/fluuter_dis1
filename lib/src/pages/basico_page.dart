import 'package:flutter/material.dart';



class BasicoPage extends StatelessWidget {

  final estitloTitulo      = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold );
  final estitloSubTitulo   = TextStyle(fontSize: 18.0, color: Colors.blueGrey );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage('https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                fit: BoxFit.cover,
              ),
            ),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }



  Widget _crearTitulo(){
   return SafeArea(
     child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente' , style: estitloTitulo),
                  SizedBox( height: 7.0),
                  Text(' Un lago en colombia colombia ',  style: estitloSubTitulo)
                ],
              ),
            ),
            Icon(
              Icons.star , color: Colors.red, size: 30.0,
            ),
            Text('41',style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
   );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),

      ],
    );
  }


  Widget _accion(IconData icon , String text){
    return    Column(
      children: <Widget>[
        Icon(Icons.call, color: Colors.blue ,size: 40.0),
        SizedBox(
          height: 5.0,
        ),
        Text('Call', style: TextStyle(fontSize: 18.0 , color: Colors.blue))
      ],
    );
  }
  Widget _crearTexto() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: Text(
        'asdas das dasd asd as ads asd sad as dsaaaaaaaaaaaaaaaaaaaasdasd asd asd asd asd asd as das asd asdd asdas asd asd as das adsdasdasdasdasdasd asdasd asdasdasdasd asdasd',
        textAlign: TextAlign.justify,
      ),
    ),
  );
  }
}

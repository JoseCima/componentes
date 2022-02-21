import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    
    return Slider(
      activeColor: Colors.pink,
      label : 'Tamaño de la Imagen',
      value: _valorSlider,
      
      min: 10.0,
      max: 400.0,
       onChanged: (_bloquearCheck) ? null :  (valor){
         setState(() {
            _valorSlider = valor;
         });
       

      },
    );
  }

  Widget _checkBox(){
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
         setState(() {
            _bloquearCheck = valor;
         });
       

      },
    );*/
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
         value: _bloquearCheck,
         onChanged: (valor){
         setState(() {
            _bloquearCheck = valor!;
         });
       

         },
      );
  }

  Widget _crearSwitch(){
     return SwitchListTile(
        title: Text('Bloquear Slider'),
         value: _bloquearCheck,
         onChanged: (valor){
         setState(() {
            _bloquearCheck = valor;
         });
         },
      );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.etsystatic.com/27580897/r/il/01119a/2968733557/il_fullxfull.2968733557_faia.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
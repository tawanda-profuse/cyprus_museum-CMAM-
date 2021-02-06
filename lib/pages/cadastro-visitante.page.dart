import 'package:loading_indicator/loading_indicator.dart';
import 'package:cyprus_museum/util/constantes.dart' as Constants;
import 'package:flutter/material.dart';

import 'package:cyprus_museum/api/VisitanteService.dart';
import 'package:cyprus_museum/components/input.widget.dart';
import 'package:cyprus_museum/models/Visitante.dart';
import 'package:cyprus_museum/util/deviceId.dart';
import 'package:cyprus_museum/pages/menu.page.dart';

import 'agradecimento.page.dart';
import 'beacon-info.page.dart';
import 'busca-beacon.page.dart';
import 'home.page.dart';
import 'main.page.dart';

class CadastroVisitantePage extends StatefulWidget {
  @override
  _CadastroVisitantePageState createState() => _CadastroVisitantePageState();
}

class _CadastroVisitantePageState extends State<CadastroVisitantePage> {
  final _nomeController = TextEditingController();

  final _telefoneController = TextEditingController();

  final _cepController = TextEditingController();

  final _enderecoController = TextEditingController();

  final _bairroController = TextEditingController();

  final _complementoController = TextEditingController();

  final _emailController = TextEditingController();

  bool _isLoading = false;

  BuildContext context;

  void createVisitante() async {
    setState(() {
      _isLoading = true;
    });
    final identifer = await DeviceId.getDeviceDetails();

    Visitante visitante = new Visitante(this._nomeController.text,
        telefone: this._telefoneController.text,
        cep: this._cepController.text,
        endereco: this._enderecoController.text,
        bairro: this._bairroController.text,
        idCelular: identifer[2],
        complemento: this._complementoController.text,
        email: this._emailController.text);

    var data = visitante.toJson();

    VisitanteService service = new VisitanteService();

    service
        .cadastrarVisistante(data)
        .then((value) => backToMenu())
        .catchError((error) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  backToMenu() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MenuPage()));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          Constants.TELA_CADASTRO,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber[400],
      ),
      body: Stack(
        children: <Widget>[
          _isLoading
              ? Center(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballScale,
                      color: Colors.amber[400],
                    ),
                  ),
                )
              : Container(),
          Container(
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: ListView(
                children: <Widget>[
                  InputWidget(
                    controller: this._nomeController,
                    label: Constants.NOME_COMPLETO,
                    keyboardType: TextInputType.text,
                  ),
                  InputWidget(
                    controller: this._emailController,
                    label: Constants.EMAIL,
                    keyboardType: TextInputType.text,
                  ),
                  InputWidget(
                    controller: this._telefoneController,
                    label: Constants.TELEFONE,
                    keyboardType: TextInputType.phone,
                  ),
                  InputWidget(
                    controller: this._enderecoController,
                    label: Constants.ENDERECO,
                    keyboardType: TextInputType.text,
                  ),
                  InputWidget(
                    controller: this._bairroController,
                    label: Constants.BAIRRO,
                    keyboardType: TextInputType.text,
                  ),
                  InputWidget(
                    controller: this._complementoController,
                    label: Constants.COMPLEMENTO,
                    keyboardType: TextInputType.text,
                  ),
                  InputWidget(
                    controller: this._cepController,
                    label: Constants.CEP,
                    keyboardType: TextInputType.number,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 16, left: 35, right: 35),
                    //width: 10,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: FlatButton(
                        // onPressed: createVisitante,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuscaBeacon()));
                        },
                        child: Text(
                          Constants.CADASTRAR,
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

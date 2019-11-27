import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<MyApp>{
  final double _padding = 16.0;
  final double _buttonFontSize = 24.0;
  final Color _primarySwatchcolor = Colors.orange;
  final Color _titleAppBar = Colors.white;

  final Color _primarySwatchColor = Colors.orange;
  final Color _titleAppBarColor = Colors.white;
  final Color _buttonColorWhite = Colors.white;
  final Color _buttonHighlightColor = Colors.grey[800];
  final Color _buttonColorGrey = Colors.grey[500];

  int valueA;
  int valueB;
  var sbValue = new StringBuffer();
  String operator;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: _primarySwatchcolor),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Kalkulator Gua",
            style: TextStyle(color: _titleAppBar),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              key: Key("expanded_bagian_atas"),
              flex: 1,
              child: Container(
                key: Key("expanded_container_bagian_atas"),
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(_padding),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    AutoSizeText(
                      sbValue.toString(),
                      style: Theme.of(context).textTheme.display2,
                      maxLines: 1,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              key: Key("expanded_bagian_bawah"),
              flex: 1,
              child: Column(
                key: Key("expanded_container_bagian_bawah"),
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "C",
                              style: TextStyle(
                                color: _primarySwatchColor,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              clearValue();
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Icon(
                              Icons.backspace,
                              color: _buttonColorGrey,
                            ),
                            onPressed: (){
                              deleteValue();
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "/",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("/");
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "7",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("7");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "8",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("8");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "9",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("9");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "x",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("x");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "4",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("4");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "5",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("5");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonColorGrey,
                            child: Text(
                              "6",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("6");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "-",
                              style: TextStyle(
                                color: _buttonColorGrey,
                                fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("-");
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("1");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("2");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonColorGrey,
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("3");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "+",
                              style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("+");
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: RaisedButton(
                            color: _buttonColorWhite,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "0",
                              style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("0");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _primarySwatchColor,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "=",
                              style: TextStyle(
                                  color: _buttonColorWhite,
                                  fontSize: _buttonFontSize
                              ),
                            ),
                            onPressed: (){
                              appendValue("=");
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    sbValue.write("0");
    operator="";
  }

  void appendValue(String s) => setState((){
    bool isDoCalculate = false;
    String strValue = sbValue.toString();
    String lastCharacter = strValue.substring(strValue.length -1 );
    if(s == "0" && (lastCharacter  == "/" || lastCharacter == "x" || lastCharacter == "-" || lastCharacter == "+")){
      return;
    }else if(s == "0" && sbValue.toString() == "0"){
      return;
    }else if(s == "="){
      isDoCalculate = true;
    }else if(s == "/" || s == "x" || s == "-" || s == "+"){
      if(operator.isEmpty){
        operator = s;
      }else{
        isDoCalculate = true;
      }
    }

    if(!isDoCalculate){
      if(sbValue.toString() == "0" && s != "0"){
        sbValue.clear();
      }
      sbValue.write(s);
    }else{
      List<String> values = sbValue.toString().split(operator);
      if(values.length == 2 && values[0].isNotEmpty && values[1].isNotEmpty){
        valueA = int.parse(values[0]);
        valueB = int.parse(values[1]);
        sbValue.clear();
        int total = 0;
        switch(operator){
          case "/":
            total = valueA ~/ valueB;
            break;
          case "x":
            total = valueA*valueB;
            break;
          case "-":
            total = valueA-valueB;
            break;
          case "+":
            total = valueA+valueB;
            break;
        }

        sbValue.write(total);
        if(s == "/" || s == "x" || s == "-" || s == "+"){
          operator = s;
          sbValue.write(s);
        }else{
          operator = "";
        }
      }else{
        String strvalue = sbValue.toString();
        String lastCharacter = strValue.substring(strValue.length - 1);
        if (s == "/" || s == "x" || s == "-" || s == "+") {
          operator = "";
          sbValue.clear();
          sbValue
              .write(strValue.substring(0, strValue.length - 1) + "" + s);
          operator = s;
        } else if (s == "=" &&
            (lastCharacter == "/" ||
                lastCharacter == "x" ||
                lastCharacter == "-" ||
                lastCharacter == "+")) {
          operator = "";
          sbValue.clear();
          sbValue.write(strValue.substring(0, strValue.length - 1));
        }
      }
    }
  });

  void deleteValue() => setState(() {
    String strValue = sbValue.toString();
    if (strValue.length > 0) {
      String lastCharacter = strValue.substring(strValue.length - 1);
      if (lastCharacter == "/" ||
          lastCharacter == "x" ||
          lastCharacter == "-" ||
          lastCharacter == "+") {
        operator = "";
      }
      strValue = strValue.substring(0, strValue.length - 1);
      sbValue.clear();
      sbValue.write(strValue.length == 0 ? "0" : strValue);
    }
  });

  void clearValue() => setState(() {
    operator = "";
    sbValue.clear();
    sbValue.write("0");
  });
}
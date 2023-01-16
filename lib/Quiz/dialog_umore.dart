import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../flutter_flow/flutter_flow_theme.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:panara_dialogs/src/widgets/panara_button.dart';

class DialogUmore extends StatefulWidget {
  final String title;
  final String message;
  const DialogUmore({Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  _DialogUmore createState() => _DialogUmore();
}

class _DialogUmore extends State<DialogUmore> {
  final textColor = const Color(0xFF707070);

  final buttonTextColor = Colors.white;
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 340,
          ),
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 24,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                widget.message,
                style: TextStyle(
                  color: textColor,
                  height: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                child: Container(
                  height: 160,
                  decoration: const BoxDecoration(),
                  child: TextFormField(
                    controller: textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Descrizione:',
                      labelStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                            fontFamily: 'IBM Plex Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE0E3E7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE0E3E7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'IBM Plex Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    maxLines: 7,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: PanaraButton(
                  buttonTextColor: Colors.white,
                  text: 'Fatto!',
                  onTap: () {
                    if (textController!.text.isNotEmpty &&
                        textController!.text.replaceAll(' ', '') != '') {
                      Navigator.of(context).pop(textController!.text);
                    } else {
                      Fluttertoast.showToast(msg: 'Errore nella descrizione!');
                    }
                  },
                  bgColor: FlutterFlowTheme.of(context).primaryColor,
                  isOutlined: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

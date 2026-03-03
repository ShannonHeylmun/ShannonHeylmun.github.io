import 'package:flutter/material.dart';

class TabScaffold extends Scaffold {
  TabScaffold({required List<Widget> children, super.key})
    : super(
        body: SizedBox.expand(
          child: Align(
            alignment: AlignmentGeometry.topCenter,
            child: Container(
              // padding: EdgeInsets.only(top: 16),
              constraints: BoxConstraints(maxWidth: 600),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: children.isNotEmpty
                      ? [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: children.first,
                          ),
                          ...children.sublist(1),
                        ]
                      : [],
                ),
              ),
            ),
          ),
        ),
      );
}

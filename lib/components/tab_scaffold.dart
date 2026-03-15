import 'package:flutter/material.dart';

const tabBarHeight = 48.0;

class TabScaffold extends Scaffold {
  TabScaffold({required List<Widget> children, super.key, double width = 600})
    : super(
        body: SafeArea(
          bottom: false,
          child: Container(
            color: Colors.white,
            child: SizedBox.expand(
              child: Align(
                alignment: AlignmentGeometry.xy(0, -.8),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  constraints: BoxConstraints(maxWidth: width),
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children.isNotEmpty
                          ? [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: children.first,
                              ),
                              ...children.sublist(1),
                              SizedBox.shrink(),
                            ]
                          : [],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

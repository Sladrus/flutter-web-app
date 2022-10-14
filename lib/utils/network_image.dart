import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CutsomNetworkImage extends StatefulWidget {
  CutsomNetworkImage({required this.src});

  final String src;

  @override
  _NetworkImageState createState() => _NetworkImageState();
}

class _NetworkImageState extends State<CutsomNetworkImage> {
  late Uint8List _bytes;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    _bytes = (await http.get(Uri.parse(widget.src))).bodyBytes;

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return _bytes != null
        ? Image.memory(_bytes)
        : Container();
  }
}
import 'package:flutter/material.dart';

class ContainerOne extends StatelessWidget {
  final String url;
  final String title;
  final String description;


  const ContainerOne({super.key,required this.url, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            url,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.black54,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            width: double.infinity,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            width: double.infinity,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

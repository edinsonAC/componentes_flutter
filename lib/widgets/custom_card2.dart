import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
    required this.imgUrl, required this.title,
  });

  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/images/jar-loading.gif"),
            image: NetworkImage(imgUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(title))
        ],
      ),
    );
  }
}

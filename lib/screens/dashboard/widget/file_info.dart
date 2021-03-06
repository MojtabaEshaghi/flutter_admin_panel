import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/constants.dart';

import '../../../core/models/MyFiles.dart';


class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  info.svgSrc,
                  color: info.color,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text(
            info.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white),
          ),
          ProgressLine(percentage: info.percentage, color: info.color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiels} Files",
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),
              ) ,
              Text(
                info.totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 5,
        decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12)),
      ),
      LayoutBuilder(
          builder: (ctx, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
          ))
    ]);
  }
}
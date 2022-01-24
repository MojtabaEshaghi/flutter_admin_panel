
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/generated/assets.dart';

import 'chars.dart';

class StaragedDetails extends StatelessWidget {
  const StaragedDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Derails ",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chars(),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            svgSrc: Assets.iconsDocuments,
            numOfFiles: 1329,
            title: 'Doucument',
          ),
          StorageInfoCard(
            amountOfFiles: '15.1GB',
            svgSrc: Assets.iconsMedia,
            numOfFiles: 15829,
            title: 'Media Files',
          ),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            svgSrc: Assets.iconsFolder,
            numOfFiles: 1329,
            title: 'Other Files',
          ),
          StorageInfoCard(
            amountOfFiles: '1.3GB',
            svgSrc: Assets.iconsUnknown,
            numOfFiles: 1329,
            title: 'Doucument',
          ),
        ],
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(0.15),
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      "$numOfFiles Files",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              )),
          Text(
            amountOfFiles,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
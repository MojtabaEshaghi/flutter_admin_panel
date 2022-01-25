import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/constants.dart';
import '../../../core/models/RecentFile.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.white54),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: defaultPadding,
                horizontalMargin: 0,
                columns: [
                  DataColumn(
                    label: Text(
                      "File Name",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Date",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      " Size  ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
                rows: List.generate(demoRecentFiles.length,
                    (index) => recentFileDataRow(demoRecentFiles[index]))),
          )
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile recentFileInfo) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(
            recentFileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              recentFileInfo.title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      )),
      DataCell(Text(
        recentFileInfo.date,
        style: const TextStyle(color: Colors.white),
      )),
      DataCell(Text(
        recentFileInfo.size,
        style: const TextStyle(color: Colors.white),
      )),
    ]);
  }
}

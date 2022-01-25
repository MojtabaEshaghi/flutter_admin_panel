import 'package:flutter/material.dart';
import 'package:panel_admin/responsive.dart';
import '../../../constants.dart';
import '../../../core/models/MyFiles.dart';
import 'file_info.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.white),
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1))),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Add New"))
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          desktop: FileInfoCardGridView(),
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoMyFiels.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio),
        itemBuilder: (ctx, index) => FileInfoCard(
              info: demoMyFiels[index],
            ));
  }
}

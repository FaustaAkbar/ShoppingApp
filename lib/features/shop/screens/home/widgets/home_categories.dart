import 'package:ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

/* 

  LIST CATEGORIES BUILDER FOR LISTVIEW

 */
class FHomeCategories extends StatelessWidget {
  const FHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //------ Categories  ------
          return FVerticalImageText(
            image: FImages.jeansIcon,
            title: 'Jeansssssssssss',
            onTap: () {},
          );
        },
      ),
    );
  }
}

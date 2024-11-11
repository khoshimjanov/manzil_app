import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';

import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class SelectItemWidget extends HookWidget {
  final List items;
  final ValueNotifier item;
  final String title;
  const SelectItemWidget({
    required this.title,
    required this.items,
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    ValueNotifier currentItem = useState(item.value);
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppStyles.fontSize16Weight400,
                ),
                IconButton(
                  hoverColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: SvgPicture.asset(
                    Assets.icons.exitIcon,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              endIndent: 10,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...items.map(
                    (e) {
                      return ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        title: Text(e.name),
                        onTap: () {
                          currentItem.value = e;
                          item.value = e;
                        },
                        trailing: SvgPicture.asset(
                          item.value.id == e.id
                              ? Assets.icons.selectedIcon
                              : Assets.icons.unselectedIcon,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: ConfirmButton(
                title: l10n.next,
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
          const Gap(30),
        ],
      ),
    );
  }
}

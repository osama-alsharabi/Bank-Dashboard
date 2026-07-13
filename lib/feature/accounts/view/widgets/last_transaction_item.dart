import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/accounts/model/last_trasaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LastTransactionItem extends StatelessWidget {
  final LastTrasactionModel lastTransactionModel;
  const LastTransactionItem({super.key, required this.lastTransactionModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: lastTransactionModel.color.withAlpha(80),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(lastTransactionModel.image),
          ),
          const SizedBox(width: 25),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lastTransactionModel.title,
                    style: context.textStyle.textStyleSemibold16,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    lastTransactionModel.date,
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  lastTransactionModel.type,
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  lastTransactionModel.cardNumber,
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  lastTransactionModel.status,
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  lastTransactionModel.amount,
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: lastTransactionModel.isDisposed
                        ? AppColor.successColor
                        : AppColor.failureColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

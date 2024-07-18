import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/app_colors.dart';
import 'package:islami/home/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          thickness: 3,
          color: AppColors.primaryLightColor,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          thickness: 3,
          color: AppColors.primaryLightColor,
        ),
        Expanded(
            flex: 2,
            child: ahadethList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
                  ))
                : ListView.separated(
                    itemBuilder: (context, index) => ItemHadethName(
                          hadeth: ahadethList[index],
                        ),
                    separatorBuilder: (context, index) => Divider(
                          thickness: 2,
                          color: AppColors.primaryLightColor,
                        ),
                    itemCount: ahadethList.length))
      ],
    );
  }

  void loadHadethFile() async {
    String hadethContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = hadethContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      print(hadethList[i]);
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

// data class
class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}

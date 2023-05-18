import 'package:flutter/material.dart';
import 'package:mynote_app/screens/work/work_view_mdel.dart';
import 'package:mynote_app/themes/brand_theme.dart';
import 'package:stacked/stacked.dart';

class WorkView extends StatelessWidget {
  static String routeName = 'workView';
  const WorkView({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<WorkViewModel>.reactive(
          viewModelBuilder: () => WorkViewModel(),
          builder: (context, model, _) => SafeArea(
                  child: Scaffold(
                backgroundColor: BrandTheme.keyDark,
                appBar: AppBar(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.done),
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.undo),
                        SizedBox(width: 20),
                        Icon(Icons.redo),
                        SizedBox(width: 150),
                        Icon(Icons.more_vert),
                      ],
                    )
                  ],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                      top: Radius.circular(30),
                    ),
                  ),
                  backgroundColor: BrandTheme.keyLightBlack,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextField(
                        //style: TextStyle(color: BrandTheme.keyLight),
                        style: TextStyle(color: Colors.white, fontSize: 24),
                        decoration: InputDecoration(
                            hintText: 'Enter text',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                            fillColor: Colors.white),
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter text',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                      Image.asset('assets/avatar.png'),
                      // Image.network(
                      //   'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
                      //   width: 200,
                      //   height: 200,
                      // ),
                    ],
                  ),
                ),
              )));
}

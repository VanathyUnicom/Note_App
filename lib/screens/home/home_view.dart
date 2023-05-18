import 'package:flutter/material.dart';
import 'package:mynote_app/screens/home/home_view_model.dart';
import 'package:mynote_app/screens/work/work_view.dart';
import 'package:mynote_app/themes/brand_theme.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, _) => SafeArea(
          child: Scaffold(
            backgroundColor: BrandTheme.keyDark,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
              title: Container(
                child: TextField(
                  style: TextStyle(
                    color: BrandTheme.keyLight,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search your notes',
                    hintStyle: TextStyle(color: BrandTheme.keyLight),
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 20,
                  ),
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: BrandTheme.keyBorderGrey),
                          color: BrandTheme.keyBorderGrey,
                        ),
                        child: Text('All(16)',
                            style: TextStyle(color: BrandTheme.keyDark)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, WorkView.routeName);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: BrandTheme.keyBorderGrey),
                            color: BrandTheme.keyDark,
                          ),
                          child: Text('work',
                              style: TextStyle(color: BrandTheme.keyLight)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: BrandTheme.keyBorderGrey),
                          color: BrandTheme.keyDark,
                        ),
                        child: Text('Reading',
                            style: TextStyle(color: BrandTheme.keyLight)),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: BrandTheme.keyBorderGrey),
                          color: BrandTheme.keyDark,
                        ),
                        child: Text('important',
                            style: TextStyle(color: BrandTheme.keyLight)),
                      )
                    ],
                  ),
                  // const SizedBox(height: 30),
                  // Center(
                  //   child: _NoteCard(),
                  // )
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                        ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) =>
                            _NoteCard()),
                  )
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              padding: const EdgeInsets.fromLTRB(50, 7, 50, 7),
              color: BrandTheme.keyLightBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/margin.png',
                      height: 25,
                      width: 25,
                      color: BrandTheme.keyLight,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/image.png',
                      height: 25,
                      width: 25,
                      color: BrandTheme.keyLight,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            resizeToAvoidBottomInset: false,
            floatingActionButton: SizedBox(
              width: 80,
              height: 80,
              child: FloatingActionButton(
                backgroundColor: BrandTheme.keyLightBlack,
                onPressed: () {},
                shape: CircleBorder(
                  side: BorderSide(
                    color: BrandTheme.keyDark,
                    width: 3.0,
                  ),
                ),
                child: Image.asset(
                  'assets/edit-text.png',
                  height: 25,
                  width: 25,
                  color: BrandTheme.keyLight,
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        ),
      );
}

class _NoteCard extends ViewModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel viewModel) => Container(
        padding: const EdgeInsets.all(20.0),
        //width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: BrandTheme.keyBorderGrey),
          color: Color.fromARGB(255, 246, 204, 218),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Center(
                child: Image.asset(
                  'assets/avatar.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),

            // Image.network(
            //   'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
            //   width: 200,
            //   height: 200,
            // ),
            const SizedBox(height: 8),
            const Text(
              'Book covers',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'There are two main types of photo essays: narrative and thematic.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
}

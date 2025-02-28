import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/modules/users_list/users_common_page.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: const BoxDecoration(gradient: ColorConstants.customGradient),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: 50,
            child: TabBar(
              labelColor:  Colors.white,
              unselectedLabelColor:ColorConstants.primary,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: const BoxDecoration(color: ColorConstants.primary),
              
              tabs:  [
                SizedBox(
                  
                  height: 50,
                  child: Center(
                    child: Text(
                      'Customers',style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Suppliers',style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [UsersCommonPage(), UsersCommonPage(),],
            ),
          )
        ],
      ),
    );
  }
}

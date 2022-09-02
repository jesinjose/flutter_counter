
import 'package:flutter/material.dart';

class CollapseToolbar extends StatelessWidget {
  const CollapseToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.arrow_back),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                //collapseMode: CollapseMode.pin,
                //centerTitle: true,
                title:Text('Collapse Toolbar') ,
                background: Image.network("https://images.unsplash.com/photo-1529900748604-07564a03e7a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",fit:BoxFit.fill,),),
              backgroundColor: Colors.red,
              expandedHeight: 250,
              actions: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            buildImages()
          ],
        ),
      );

  Widget buildImages() => SliverList(
      delegate: SliverChildListDelegate(List.generate(
          20,
          (index) => ListTile(
                title: Text('Title $index'),
              ))));
}

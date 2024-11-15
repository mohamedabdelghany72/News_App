import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/modules/cubit/cubit.dart';
import 'package:news_app/modules/cubit/states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context)=> NewsCubit(),
      child: BlocConsumer<NewsCubit,NewsStates>(
        listener: (context, state){},
        builder: (context , state ){
       return Scaffold(
            appBar: AppBar(
              title: const Text(
                  'News App'
              ),
              actions: [
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.search,color: Colors.white,)),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: NewsCubit.get(context).bottonItems ,
              currentIndex: NewsCubit.get(context).currentIndex,
              onTap: (index){

                  NewsCubit.get(context).changeBottomNavBar(index) ;
              },

            ),
         body: NewsCubit.get(context).screens[NewsCubit.get(context).currentIndex]
          );
        },

      ),
    );
  }
}

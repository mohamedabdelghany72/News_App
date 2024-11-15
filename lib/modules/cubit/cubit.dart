
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/modules/business_screen.dart';
import 'package:news_app/modules/cubit/states.dart';
import 'package:news_app/modules/science_screen.dart';
import 'package:news_app/modules/sports_screen.dart';

class NewsCubit extends Cubit<NewsStates>
{
NewsCubit() : super(NewsInitialState()) ;
static NewsCubit get(context)=> BlocProvider.of(context) ;
int currentIndex = 0 ;
List<BottomNavigationBarItem>  bottonItems = const [
  BottomNavigationBarItem(
    icon: Icon(
        Icons.business
    ),
    label: 'Business' ,
  ),
  BottomNavigationBarItem(
    icon: Icon(
        Icons.sports
    ),
    label: 'Sports' ,
  ),
  BottomNavigationBarItem(
    icon: Icon(
        Icons.science
    ),
    label: 'Science' ,
  ),
  
] ;
List<Widget> screens = [
 const  BusinessScreen(),
  const SportsScreen(),
  const ScienceScreen()


];
void changeBottomNavBar(int index) {
  
  currentIndex = index ;
  emit(NewsBottomNavState()) ;
}






}
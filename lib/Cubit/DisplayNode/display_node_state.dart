part of 'display_node_cubit.dart';

abstract class diaplaynodeState{}



class diaplaynodeInitial extends diaplaynodeState {}

class EmptyState extends diaplaynodeState {}

class diaplaynodeSuccess extends diaplaynodeState {
  final List<Nodemodel> notes;
  diaplaynodeSuccess(this.notes);

}
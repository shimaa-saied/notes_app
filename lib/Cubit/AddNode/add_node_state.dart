part of 'add_node_cubit.dart';

abstract class AddNodesState{}



class AddNodeInitial extends AddNodesState {}
class AddNodeLoading extends AddNodesState {}
class AddNodeSuccess extends AddNodesState {}
class AddNodeFailure extends AddNodesState {
  final String errormessage;


  AddNodeFailure(this.errormessage);

}
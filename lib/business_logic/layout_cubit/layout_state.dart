part of 'layout_cubit.dart';

@immutable
abstract class LayoutState {}

class LayoutInitial extends LayoutState {}
class CreateSectionLoadingState extends LayoutState {}
class CreateSectionSuccessState extends LayoutState {}
class CreateSectionErrorState extends LayoutState {}

class AddStudentToSectionLoadingState extends LayoutState {}
class AddStudentToSectionSuccessState extends LayoutState {}
class AddStudentToSectionErrorState extends LayoutState {}

class AddStudentToAbbsenceStudentsLoadingState extends LayoutState {}
class AddStudentToAbbsenceStudentsSuccessState extends LayoutState {}
class AddStudentToAbbsenceStudentsErrorState extends LayoutState {}

class GetAllSectionsLoadingState extends LayoutState {}
class GetAllSectionsSuccessState extends LayoutState {}

class GetAllStudentLoadingState extends LayoutState {}
class GetAllStudentSuccessState extends LayoutState {}

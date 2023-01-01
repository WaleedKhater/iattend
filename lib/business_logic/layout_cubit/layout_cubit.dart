import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iattend/models/section_model.dart';
import 'package:iattend/models/student_model.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  Future<void> createSection({
    required String sectionName,
    required num sectionNumber,
  }) async {
    SectionModel sectionModel =
        SectionModel(sectionName: sectionName, sectionNumber: sectionNumber);
    emit(CreateSectionLoadingState());
    await FirebaseFirestore.instance
        .collection('sections')
        .add(sectionModel.toJson())
        .then((value) {
      emit(CreateSectionSuccessState());
      //getAllSections();
    }).catchError((error) {
      emit(CreateSectionErrorState());
      print('code come here');
    });
    // await FirebaseFirestore.instance
    //     .collection('doctors')
    //     .doc('44mhJwutsmMofGsb1TMF00ehRtZ2')
    //     .collection('sections').doc(section.id).update({'sectionId':section.id}).then((value) {
    //   emit(CreateSectionSuccessState());
    //   //getAllSections();
    //
    // }).catchError((error) {
    //   emit(CreateSectionErrorState());
    // });
  }

  List<SectionModel> allSections = [];

  Future<void> getAllSections() async {
    emit(GetAllSectionsLoadingState());
    await FirebaseFirestore.instance
        .collection('sections')
        .snapshots()
        .listen((event) {
      allSections = [];
      for (var element in event.docs) {
        allSections.add(SectionModel.fromJson(element.data()));
      }
      emit(GetAllSectionsSuccessState());
    });
  }

  Future<void> addStudentToSection({
    required String name,
    required String sectionId,
  }) async {
    StudentModel studentModel = StudentModel(name);
    emit(AddStudentToSectionLoadingState());
    await FirebaseFirestore.instance
        .collection('sections')
        .doc(sectionId)
        .collection('students')
        .add(studentModel.toJson()).then((value) {
      emit(AddStudentToSectionSuccessState());
    }).catchError((error) {
      emit(AddStudentToSectionErrorState());
    });
  }

  List<StudentModel> allStudents = [];

  Future<void> getAllStudent({
    required String sectionId,
  }) async {
    emit(GetAllStudentLoadingState());
    await FirebaseFirestore.instance
        .collection('sections')
        .doc(sectionId)
        .collection('students')
        .snapshots()
        .listen((event) {
      allStudents = [];
      for (var element in event.docs) {
        allStudents.add(StudentModel.fromJson(element.data()));
      }
      emit(GetAllStudentSuccessState());
    });
  }

  Future<void> addStudentAbbsenceStudents({
    required String name,
    required String sectionId,
  }) async {
    StudentModel studentModel = StudentModel(name);
    emit(AddStudentToAbbsenceStudentsLoadingState());
    await FirebaseFirestore.instance
        .collection('sections')
        .doc(sectionId)
        .collection('abbssenceStudents')
        .add(studentModel.toJson()).then((value) {
      emit(AddStudentToAbbsenceStudentsSuccessState());
    }).catchError((error) {
      emit(AddStudentToAbbsenceStudentsErrorState());
    });
  }

  List<StudentModel> allAbssenceStudents = [];

  Future<void> getAllAbbsenceStudent({
    required String sectionId,
  }) async {
    emit(GetAllStudentLoadingState());
    await FirebaseFirestore.instance
        .collection('sections')
        .doc(sectionId)
        .collection('abbssenceStudents')
        .snapshots()
        .listen((event) {
      allAbssenceStudents = [];
      for (var element in event.docs) {
        allAbssenceStudents.add(StudentModel.fromJson(element.data()));
      }
      emit(GetAllStudentSuccessState());
    });
  }

}

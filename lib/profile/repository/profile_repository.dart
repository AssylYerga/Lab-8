import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../../rest_client/mobile_api.dart';
import '../../../rest_client/mobile_api_dio.dart';
import '../bloc/profile_bloc.dart';

class ProfileRepository {
  final _mobileClient = MobileClient(MobileApiDio().client);
  Future<void> getProfileData(
    FetchedProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(LoadingProfileState());
    try {
      final getData = await _mobileClient.getProfileData();
      emit(LoadedProfileState(getData));
    } on DioException catch (_) {
      emit(FailureProfileState());
    }
  }
}

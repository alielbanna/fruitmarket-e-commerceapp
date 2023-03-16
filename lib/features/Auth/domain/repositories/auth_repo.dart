import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/features/Auth/domain/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Exception, UserModel>> loginWithGoogle();
  Future<Either<Exception, UserModel>> loginWithFacebook();
  Future<Either<Exception, UserModel>> completeInformation({
    @required String name,
    @required String phoneNumber,
    @required String address,
    @required UserModel user,
  });
}

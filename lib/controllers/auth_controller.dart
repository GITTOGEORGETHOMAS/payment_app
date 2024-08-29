import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> login() async {
    final response = await http.post(
      Uri.parse('http://192.168.128.192:3000/auth/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );

    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      Get.snackbar(
        "Login",
        "Successfully",
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.all(8),
        borderRadius: 8,
      );
    } else {
      Get.snackbar(
        'Error',
        'Login failed',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.all(8),
        borderRadius: 8,
      );
    }
  }

  Future<void> signup() async {
    final response = await http.post(
      Uri.parse('http://192.168.128.192:3000/auth/signup'),
      body: {
        'email': emailController.text,
        'password': passwordController.text,
      },
    );

    if (response.statusCode == 201) {
      Get.offAllNamed('/login');
      Get.snackbar(
        "Account created",
        "Successfully",
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.all(8),
        borderRadius: 8,
      );
    } else {
      Get.snackbar(
        'Error',
        'Signup failed',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.all(8),
        borderRadius: 8,
      );
    }
  }
}

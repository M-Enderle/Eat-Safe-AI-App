import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

FFUploadedFile? base64toUploadedFile(String base64string) {
  // FFUploadedFile? base64toUploadedFile(String base64string) {  try {    // Decode the base64 string to Uint8List    final Uint8List bytes = base64.decode(base64string);        // Return FFUploadedFile with decoded bytes    return FFUploadedFile(      bytes: bytes,      name: 'decoded_file.bin', // Provide a default name    );  } catch (e) {    // Log error for debugging    print('Error decoding base64 string: $e');    return null; // Return null on failure  }}
  try {
    // Decode the base64 string to Uint8List
    final bytes = base64.decode(base64string);

    // Return FFUploadedFile with decoded bytes
    return FFUploadedFile(
      bytes: bytes,
      name: 'decoded_file.bin', // Provide a default name
    );
  } catch (e) {
    // Log error for debugging
    print('Error decoding base64 string: $e');
    return null; // Return null on failure
  }
}

dynamic stringToJson(String? string) {
  // Convert string to json
  if (string == null) {
    return null;
  }
  return json.decode(string);
}

String shorten(String inpt) {
  // if the string is longer than 20 chars, cut off the rest strip it  and add "..."
  if (inpt.length > 16) {
    return (inpt.substring(0, 13) + '...').toUpperCase();
  }
  return inpt.toUpperCase();
}

dynamic userToJson(
  List<String> intolerances,
  String notes,
) {
  // Convert to json
  return {
    'intolerances': intolerances,
    'notes': notes,
  };
}

double? calcBarWidth(double value) {
  // Clamp value between 0.0 and 100.0
  final clampedValue = value.clamp(0.0, 100.0);

  // Linearly interpolate from 100 to 300
  return 100 + (((100 - clampedValue) / 100.0) * (250 - 100));
}

Color getColor(double value) {
  final clampedValue = value.clamp(0.0, 100.0);
  final normalizedValue = clampedValue / 100.0;

  // Define pastel color stops (in reverse order)
  const Color pastelRed = Color(0xFFFF6961); // 0%
  const Color pastelOrange = Color(0xFFFFB54C); // 25%
  const Color crayolaYellow = Color(0xFFF8D66D); // 50%
  const Color iguanaGreen = Color(0xFF7ABD7E); // 75%
  const Color pistachio = Color(0xFF8CD47E); // 100%

  if (normalizedValue <= 0.25) {
    return Color.lerp(pastelRed, pastelOrange, normalizedValue / 0.25)!;
  } else if (normalizedValue <= 0.5) {
    return Color.lerp(
        pastelOrange, crayolaYellow, (normalizedValue - 0.25) / 0.25)!;
  } else if (normalizedValue <= 0.75) {
    return Color.lerp(
        crayolaYellow, iguanaGreen, (normalizedValue - 0.5) / 0.25)!;
  } else {
    return Color.lerp(iguanaGreen, pistachio, (normalizedValue - 0.75) / 0.25)!;
  }
}

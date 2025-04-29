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

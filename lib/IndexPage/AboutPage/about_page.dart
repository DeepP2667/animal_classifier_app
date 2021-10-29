import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';



class AboutPage{

  CollectionReference animals = FirebaseFirestore.instance.collection('data');

  Future<void> updateFound(){

    return animals.doc('Cat').update({'found': true});

  }
    
}
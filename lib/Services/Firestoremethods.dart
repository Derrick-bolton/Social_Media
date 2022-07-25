
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:forum3/Models/Posts.dart';
import 'package:forum3/Services/Storagemethods.dart';
import 'package:forum3/shared/Pop_up.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods{
    final FirebaseFirestore _firestore=FirebaseFirestore.instance;

    //Upload post
Future <String> Uploadpost(
    BuildContext context,
    String Title,
    String Details,
    dynamic file,
    String uid,
    String author,
    String ppurl
    )async{
    String photourl;
    try{
        if(file!=null){
             photourl=await StorageMethods().Storageip("Posts", file, true);
        }
        else{
            photourl="";
        }
        String postid= const Uuid().v1();
        Post post=Post(
            author_uid: uid,
            postuid: postid,
            title: Title,
            detail: Details,
            author: author,
            Timeposted: DateTime.now(),
            imageUrl: photourl,
          ppurl: ppurl,
            likes: [],
        )
    }
    catch(e){
     String  err=e.toString();
     Showsnackbar(err,context);
    }
}
}
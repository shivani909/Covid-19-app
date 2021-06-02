import 'package:cloud_firestore/cloud_firestore.dart';

class Api {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String path;
  CollectionReference ref;

  Api(this.path) {
    ref = _db.collection(path);
  }

  Future<QuerySnapshot> getDataCollection() {
    return ref.get();
  }

  Stream<QuerySnapshot> streamDataCollection() {
    return ref.snapshots();
  }

  //for getting data
  Future<DocumentSnapshot> getDocuemntById(String id) {
    return ref.doc(id).get();
  }

  //for removing data
  Future<void> removeDocs(String id) {
    return ref.doc(id).delete();
  }

  //for adding data
  Future<DocumentReference> addDocument(Map data) {
    return ref.add(data);
  }

  // for updating data
  Future<void> updateDocument(Map data, String id) {
    return ref.doc(id).update(data);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';
import '../models/user.dart';

class FireStoreHelper{
  FireStoreHelper._();
  static FireStoreHelper fireStoreHelper = FireStoreHelper._();
  CollectionReference<Map<String, dynamic>>  productCollectionRefrence= FirebaseFirestore.instance.collection('products');
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final String categoryCollectionName = 'categories';
  insertDummyDataInFireStore() async{
    firebaseFirestore.collection(categoryCollectionName).add({
      "name":"food",
      "imageUrl":"image source"
    });
  }

  CollectionReference<Map<String, dynamic>> userCollection = FirebaseFirestore.instance.collection('users');

  addUserToFireStore(AppUser user)async{
   await userCollection.doc(user.id).set(user.toMap());
  }

  Future<AppUser> getUserFromFireStore(String id) async{
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await userCollection.doc(id).get();
    Map<String,dynamic>? dataMap = documentSnapshot.data();
    return AppUser.fromMap(dataMap!);
  }

  Future<List<Product>> getAllProducts() async{
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await productCollectionRefrence.get();
    List<QueryDocumentSnapshot<Map<String,dynamic>>> documents = querySnapshot.docs;
    List<Product> products =  documents.map((e) {
      Product product = Product.fromMap(e.data());
      product.proId = e.id;
      return product;
    }).toList();
    return products;
  }
}
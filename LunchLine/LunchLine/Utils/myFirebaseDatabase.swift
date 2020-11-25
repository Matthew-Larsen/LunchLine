//
//  FirebaseConnect.swift
//  LunchLine
//
//  Created by matt.larsen on 11/14/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import Foundation
import Firebase


struct MyFirebaseDatabase{
    
    var db: Firebase.Firestore
    
    init() {
        FirebaseApp.configure();
        db = Firestore.firestore();
        
    }
    
    func query(collection: String, column:String , value:String) -> String{
        
        let table = self.db.collection(collection);
        let result = table.whereField(column, isEqualTo: value);
        result.getDocuments(){ (querySnapshot, err) in
            if let err = err {
                print("error: \(err)")
            } else{
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
            
            
        }
        
        return ""
        
    }
    
    

}

//
//  ContentModel.swift
//  npm6
//
//  Created by Morris Albers on 4/9/21.
//

import Foundation
import Firebase

//MARK: Representations

func addRepresentation(newrep: Representation) {
    let db = Firestore.firestore()
    
    // reference to representations collection
    let representations = db.collection("representations")
    
    // create a collection with a specified identifier
    representations.document("0001").setData(["assignedDate":11/25/2019, "status":"Closed", "dispositionDate":2/3/2021, "type":"Contract","note":"Plea bargain ALA"])
}


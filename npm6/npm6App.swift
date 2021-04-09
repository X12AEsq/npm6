//
//  npm6App.swift
//  npm6
//
//  Created by Morris Albers on 4/8/21.
//

import SwiftUI
import Firebase

@main
struct npm6App: App {
    init() {
        FirebaseApp.configure()
    }
    
    func addRepresentation() {
        let db = Firestore.firestore()
        
        // reference to representations collection
        let representations = db.collection("representations")
        
        // create a collection with a specified identifier
        representations.document("0001").setData(["assignedDate":11/25/2019, "status":"Closed", "dispositionDate":2/3/2021, "type":"Contract","note":"Plea bargain ALA"])
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

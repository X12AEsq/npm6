//
//  ContentView.swift
//  npm6
//
//  Created by Morris Albers on 4/8/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @EnvironmentObject var contentModel: ContentModel

    init() {
        let contentModel = ContentModel()
        
        // Get a reference to the database
        let db = Firestore.firestore()
        // Get a reference to the practice statistics collection
        let practiceStats = db.collection("practicestats").document("Alpha")
        var dataDescription = ""
        
        practiceStats.getDocument(completion: { (document, error) in
            if let document = document, document.exists {
                    dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                    print("Document data: \(dataDescription)")
                } else {
                    print("Document does not exist")
                }
            })
        print("\(dataDescription)")
//        let docRef = practiceStats.document("Alpha")
//            db.collection("practicestats").document("Alpha")
        
        
        if contentModel.currentStats.id == 0 {
            contentModel.currentStats.id = 1
        }
        if contentModel.currentStats.nextCauseID == 0 {
            contentModel.currentStats.nextCauseID = 1
        }
        
        let docData: [String: Any] = [
            "id":contentModel.currentStats.id,
            "nextCauseID": contentModel.currentStats.nextCauseID
        ]
        // Create a document with a given identifier
        db.collection("practicestats").document("Alpha").setData(docData) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
    }


    var body: some View {
        
        TabView {
            SummaryPageView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Summary")
                }
            Text("Appearance")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Appearance")
                }
            Text("Representation")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Representation")
                }
            Text("Client")
                .tabItem {
                    Image(systemName: "4.square.fill")
                    Text("Client")
                }
            CauseView()
                .tabItem {
                    Image(systemName: "5.square.fill")
                    Text("Cause")
                }
        }
        .font(.headline)
        .environmentObject(ContentModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

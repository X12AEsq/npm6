//
//  ContentModel.swift
//  npm6
//
//  Created by Morris Albers on 4/9/21.
//

import Foundation
import Firebase

class ContentModel: ObservableObject {
    
    // List of modules
//    @Published var modules = [Module]()
    // Current cause
    @Published var currentCause: Cause
//    var currentCauseIndex = 0
    
    // Current lesson
//    @Published var currentLesson: Lesson?
//    var currentLessonIndex = 0
    
    // Current question
//    @Published var currentQuestion: Question?
//    var currentQuestionIndex = 0
    
    // Current lesson explanation
//    @Published var codeText = NSAttributedString()
//    var styleData: Data?
    
    // Current selected content and test
//    @Published var currentContentSelected:Int?
//    @Published var currentTestSelected:Int?
    
    
    init() {
        currentCause = Cause()
        // Parse local included json data
//        getLocalData()
        
        // Download remote json file and parse data
//        getRemoteData()
    }
    
//MARK: Utilities
    

//MARK: Representations

    func addRepresentation(newrep: Representation) {
        let db = Firestore.firestore()
        
        // reference to representations collection
        let representations = db.collection("representations")
        
        // create a collection with a specified identifier
        representations.document("0001").setData(["assignedDate":11/25/2019, "status":"Closed", "dispositionDate":2/3/2021, "type":"Contract","note":"Plea bargain ALA"])
    }
}


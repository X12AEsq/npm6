//
//  FirebaseModels.swift
//  npm6
//
//  Created by Morris Albers on 4/9/21.
//

import Foundation

struct Representation: Decodable, Identifiable {
    
    var id: Int
    var assignedDate: Date
    var status: String
    var dispositionDate: Date
    var type: String
    var note: String
}

struct Cause: Decodable, Identifiable {
    var id: Int16
    var causeID: String
    var court: String
    var level: String
    var charge: String
    var note: String
    
    init() {
        id = 0
        causeID = ""
        court = ""
        level = ""
        charge = ""
        note = ""
    }
}

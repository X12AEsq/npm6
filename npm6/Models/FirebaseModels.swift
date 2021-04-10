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

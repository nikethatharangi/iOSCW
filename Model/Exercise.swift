//
//  Exercise.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-21.
//

import UIKit
import Firebase

import UIKit
import FirebaseFirestore

struct Exercise {
    let bodyPart: String
    let equipment: String
    let name: String
    let target: String
    var gifUrl: String

    init(snapshot: DocumentSnapshot) {
        let snapshotValue = snapshot.data()!
        name = snapshotValue["name"] as! String
        bodyPart = snapshotValue["bodyPart"] as! String
        equipment = snapshotValue["equipment"] as! String
        target = snapshotValue["target"] as! String
        gifUrl = snapshotValue["gifUrl"] as! String
    }
}

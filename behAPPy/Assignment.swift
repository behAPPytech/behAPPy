//
//  Assignments.swift
//  behAPPy
//
//  Created by block7 on 3/22/16.
//  Copyright © 2016 block7. All rights reserved.
//

import Foundation
import UIKit

class Assignment: NSObject, NSCoding {
    
    var title: String
//    var notes: String
//    var dueDate: NSDate
//    var priority: Int
    
    init(title:String) {
        self.title = title
//         self.notes = notes
        super.init()
    }

    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: "Title")
//        aCoder.encodeObject(notes, forKey: "Notes")

    }
    
    required init?(coder aDecoder: NSCoder) {
        title = aDecoder.decodeObjectForKey("Title") as! String
//        notes  = aDecoder.decodeObjectForKey("Notes") as! String
        super.init()
    }
    
}
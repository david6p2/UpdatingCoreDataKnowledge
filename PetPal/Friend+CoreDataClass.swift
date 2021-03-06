//
//  Friend+CoreDataClass.swift
//  PetPal
//
//  Created by David Andres Cespedes on 4/19/18.
//  Copyright © 2018 Razeware. All rights reserved.
//
//

import Foundation
import CoreData


public class Friend: NSManagedObject {
    var age: Int {
        if let dob = dob as Date? {
            return Calendar.current.dateComponents([.year], from:dob, to: Date()).year!
        }
        return 0
    }
}

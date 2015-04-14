//
//  Pattern.swift
//  ab-Patterns
//
//  Created by Aaron Bradley on 4/14/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import Foundation
import CoreData

class Pattern: NSManagedObject {

    @NSManaged var backImage: NSData
    @NSManaged var frontImage: NSData
    @NSManaged var name: String

}

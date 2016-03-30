//
//  Entity+CoreDataProperties.swift
//  CoreDataJournalApp
//
//  Created by Jay Maloney on 3/30/16.
//  Copyright © 2016 Jay Maloney. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Entry {

    @NSManaged var title: String?
    @NSManaged var timeStamp: NSDate?
    @NSManaged var text: String?

}

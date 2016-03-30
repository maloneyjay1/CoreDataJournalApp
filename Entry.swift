//
//  Entity.swift
//  CoreDataJournalApp
//
//  Created by Jay Maloney on 3/30/16.
//  Copyright © 2016 Jay Maloney. All rights reserved.
//

import Foundation
import CoreData


public class Entry: NSManagedObject {

    convenience init(title:String, text:String, timeStamp:NSDate = NSDate(), context:NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Entry", inManagedObjectContext: context)!
        
        self.init(entity:entity, insertIntoManagedObjectContext: context)
            
        self.text = text
        self.title = title
        self.timeStamp = timeStamp
    }
}

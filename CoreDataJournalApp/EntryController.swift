//
//  EntryController.swift
//  CoreDataJournalApp
//
//  Created by Jay Maloney on 3/30/16.
//  Copyright © 2016 Jay Maloney. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    //need to define data source and return single object of that type to call rest of funcs on
    //need fetch request with error handling, save function (save to managedObjectContext with handling, remove function, add function(call save func)
    
    static let sharedInstance = EntryController()
    
    var entries: [Entry] {
        
        let fetchRequest = NSFetchRequest(entityName: "Entry")
        
        do {
            return try Stack.sharedStack.managedObjectContext.executeFetchRequest(fetchRequest) as! [Entry]
        } catch {
            return []
        }
    }
    
    
    func addEntry(entry:Entry) {
        saveToPersistentStorage()
    }
    
    
    func removeEntry(entry:Entry) {
        Stack.sharedStack.managedObjectContext.deleteObject(entry)
        saveToPersistentStorage()
    }
    
    
    func saveToPersistentStorage() {
        do {
            try Stack.sharedStack.managedObjectContext.save()
        } catch {
            print("Object not saved.")
        }
    }
    
}
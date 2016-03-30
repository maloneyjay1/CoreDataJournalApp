////
////  CoreDataJournalAppTests.swift
////  CoreDataJournalAppTests
////
////  Created by Jay Maloney on 3/30/16.
////  Copyright © 2016 Jay Maloney. All rights reserved.
////
//
//import XCTest
//@testable import CoreDataJournalApp
//
//class CoreDataJournalAppTests: XCTestCase {
//    testing incomplete
//    
//    private let testTitle = "Sample Title"
//    private let testText = "Sample Text"
//    
//    let controller = EntryController()
//    
//    override func setUp() {
//        super.setUp()
//    }
//    
//    override func tearDown() {
//        //reset our data source, and save to CoreData
//        super.tearDown()
//        
//        for n in controller.entries {
//            controller.removeEntry(n)
//            controller.saveToPersistentStorage()
//        }
//    }
//    
//    
//    //MARK: --- testInitializer
//    func testInitializer() {
//        let testEntry = Entry(title: testTitle, text: testText)
//        
//        XCTAssert(testEntry.title == testTitle && testEntry.text == testText, "Values do not match those passed at Initialization.")
//    }
//    
//    
//    //MARK: --- testSharedInstance
//    func testSharedInstance() {
//        XCTAssertNotNil(EntryController.sharedInstance)
//    }
//    
//    
//    //MARK: --- testEntryControllerAddEntry
//    func testEntryControllerAddEntry() {
//        let controller = EntryController()
//        let testEntry = Entry(title: testTitle, text: testText)
//        
//        controller.addEntry(testEntry)
//        
//        XCTAssert(controller.entries.contains(testEntry), "testEntry is not found in EntryController Entry array.")
//    }
//    
//    
//    //MARK: --- testEntryControllerRemoveEntry
//    func testEntryControllerRemoveEntry() {
//        let testEntry = Entry(title: testTitle, text: testText)
//        
//        controller.addEntry(testEntry)
//        XCTAssert(controller.entries.contains(testEntry), "testEntry is not found in EntryController Entry array.")
//        
//        controller.removeEntry(testEntry)
//        XCTAssertFalse(controller.entries.contains(testEntry), "testEntry is still present in EntryController Entry array.")
//    }
//    
//    
//    //MARK: --- testEntryControllerPersistence
//    func testEntryControllerPersistence() {
//        var testEntry = Entry(title: testTitle, text: testText)
//        
//        controller.addEntry(testEntry)
//        XCTAssert(controller.entries.contains(testEntry), "testEntry is not found in EntryController Entry array.")
//        
//        for n in controller.entries {
//            //remove from array, but do not save
//            controller.removeFromArrayNoSave(n)
//        }
//        
//        //load array with persisted values
//        controller.loadFromPersistentStorage()
//        
//        if let restoredEntry = controller.entries.last {
//            XCTAssert(restoredEntry.title == testEntry.title && restoredEntry.text == testEntry.text, "Loading has failed, restored values do not match original test entry values.")
//        }
//        
//        controller.removeEntry(testEntry)
//    }
//    
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
//    
//}

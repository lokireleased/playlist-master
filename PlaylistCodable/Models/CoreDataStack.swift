//
//  CoreDataStack.swift
//  PlaylistCodable
//
//  Created by tyson ericksen on 11/13/19.
//  Copyright © 2019 Aaron Martinez. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "PlaylistCodable")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error) :: \(error.userInfo)")
            }
        }
        return container
        }()
    static var context: NSManagedObjectContext { return container.viewContext }
    }


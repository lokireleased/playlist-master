//
//  PlaylistConvience.swift
//  PlaylistCodable
//
//  Created by tyson ericksen on 11/13/19.
//  Copyright © 2019 Aaron Martinez. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    
    convenience init(name: String, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name 
    }
}

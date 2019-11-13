//
//  SongConvience.swift
//  PlaylistCodable
//
//  Created by tyson ericksen on 11/13/19.
//  Copyright © 2019 Aaron Martinez. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
    convenience init(songTitle: String, artist: String, playlist: Playlist, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.songTitle = songTitle
        self.artist = artist
        //creating the relationship connection
        self.playlist = playlist
    }
}

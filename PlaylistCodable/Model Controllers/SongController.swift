//
//  SongController.swift
//  PlaylistCodable
//
//  Created by Aaron Martinez on 11/1/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

import Foundation

class SongController {
    
    static func create(songWithName name: String, artist: String, playlist: Playlist) {
        _ = Song(songTitle: name, artist: artist, playlist: playlist)
        PlaylistController.shared.saveToPersistentStore()
    }
    
    static func delete(song: Song) {
        let moc = CoreDataStack.context
        moc.delete(song)
        PlaylistController.shared.saveToPersistentStore()
    }
    
}

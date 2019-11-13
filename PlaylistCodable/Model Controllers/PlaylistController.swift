//
//  PlaylistController.swift
//  PlaylistCodable
//
//  Created by Aaron Martinez on 11/1/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    static let shared = PlaylistController()
    
    func add(playlistWithName name: String) {
        _ = Playlist(name: name)
        saveToPersistentStore()
    }
    
    func delete(playlist: Playlist) {
        let moc = CoreDataStack.context
        moc.delete(playlist)
        saveToPersistentStore()
    }
    
    // MARK: - Persistence
    
    func saveToPersistentStore() {
        let moc = CoreDataStack.context
        do {
        try moc.save()
        } catch {
            print("There was an error in saving information: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Properties
    
    var playlists: [Playlist] {
        let request: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
}

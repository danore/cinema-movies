//
//  Persistence.swift
//  CinemaMovies
//
//  Created by Daniel Orellana on 6/09/22.
//

import CoreData
import SwiftUI

public class PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "cinema-movies")
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    init() {
        let center = NotificationCenter.default
        let notification = UIApplication.willResignActiveNotification
        
        center.addObserver(forName: notification, object: nil, queue: nil) { [weak self] _ in
            guard let self = self else { return }
            
            if self.container.viewContext.hasChanges {
                try? self.container.viewContext.save()
            }
        }
    }
}

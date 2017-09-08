//
//  MoodyStack.swift
//  MoodTest
//
//  Created by Alonso on 2017/9/7.
//  Copyright © 2017年 Alonso. All rights reserved.
//

import CoreData

func createMoodyContainer(completion: @escaping (NSPersistentContainer) -> ()) {
    let container = NSPersistentContainer(name: "Moody")
    container.loadPersistentStores { _, error in
        guard error == nil else { fatalError("Failed to load store: \(String(describing: error))") }
        DispatchQueue.main.async { completion(container) }
    }
}

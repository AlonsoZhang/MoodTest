//
//  Managed.swift
//  MoodTest
//
//  Created by Alonso on 2017/9/7.
//  Copyright © 2017年 Alonso. All rights reserved.
//

import CoreData


protocol Managed: class, NSFetchRequestResult {
    static var entityName: String { get }
    static var defaultSortDescriptors: [NSSortDescriptor] { get }
}


extension Managed {
    static var defaultSortDescriptors: [NSSortDescriptor] {
        return []
    }
    
    static var sortedFetchRequest: NSFetchRequest<Self> {
        let request = NSFetchRequest<Self>(entityName: entityName)
        request.sortDescriptors = defaultSortDescriptors
        return request
    }
}


extension Managed where Self: NSManagedObject {
    static var entityName: String { return entity().name!  }
}

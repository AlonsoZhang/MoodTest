//
//  Utilities.swift
//  MoodTest
//
//  Created by Alonso on 2017/9/7.
//  Copyright © 2017年 Alonso. All rights reserved.
//

import Foundation


extension Sequence where Iterator.Element: AnyObject {
    func containsObjectIdentical(to object: AnyObject) -> Bool {
        return contains { $0 === object }
    }
}


extension Array {
    var decomposed: (Iterator.Element, [Iterator.Element])? {
        guard let x = first else { return nil }
        return (x, Array(self[1..<count]))
    }
}

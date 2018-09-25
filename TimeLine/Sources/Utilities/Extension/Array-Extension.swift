//
//  Array-Extension.swift
//  TimeLine
//
//  Created by UT on 25.09.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

extension Array {
    func indexOf<T : Equatable>(x:T) -> Int? {
        for i in 0...self.count {
            if self[i] as! T == x {
                return i
            }
        }
        return nil
    }
}

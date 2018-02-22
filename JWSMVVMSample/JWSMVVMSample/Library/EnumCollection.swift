//
//  EnumCollection.swift
//  EnumCollection
//
//  Created by Meniny on 15/5/14.
//  Copyright (c) 2015年 Meniny. All rights reserved.
//

// open-sourced link : https://github.com/Meniny/EnumCollection

import Foundation

public protocol EnumCollection: Hashable {}

public extension EnumCollection {
    /// Sequence of all cases
    public static var allCases: AnySequence<Self> {
        typealias S = Self
        return AnySequence { () -> AnyIterator<S> in
            var raw = 0
            return AnyIterator {
                let current: Self = withUnsafePointer(to: &raw) {
                    $0.withMemoryRebound(to: S.self, capacity: 1) {
                        $0.pointee
                    }
                }
                guard current.hashValue == raw else {
                    return nil
                }
                raw += 1
                return current
            }
        }
    }
    
    /// Array of all cases
    public static var allValues: [Self] {
        return Self.allCases.map({ (e) -> Self in
            return e
        })
    }
    
}

public extension EnumCollection where Self: RawRepresentable {
    /// Array of all raw values
    public static var allRaws: [Self.RawValue] {
        return Self.allValues.map({ (e) -> Self.RawValue in
            return e.rawValue
        })
    }
}

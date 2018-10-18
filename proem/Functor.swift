//
//  Functor.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation


/// (* -> *) -> Constraint
/// - Laws:
///   - fmap id == id
///   - fmap (f . g) == fmap f . fmap g
public protocol Functor {
    associatedtype A
}

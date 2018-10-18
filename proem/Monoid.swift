//
//  Monoid.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation


/// Monoid :: * -> Constraint
/// - Laws:
///   - x <> mempty = x
///   - mempty <> x = x
///   - mconcat = foldr <> mempty
public protocol Monoid: Semigroup {
    static func identity () -> Self
}

/// mempty :: Monoid a => a
public func mempty<T: Monoid>(_ type: T.Type) -> T {
    return T.identity()
}

/// mappend :: Monoid a => a -> a -> a
public func mappend<T: Monoid>(_ lhs: T, _ rhs: T) -> T {
    return lhs <> rhs
}

/// mconcat :: Monoid a => [a] -> a
public func mconcat<T: Monoid>(_ monoids: [T]) -> T {
    return monoids.reduce(mempty(T.self), <>)
}

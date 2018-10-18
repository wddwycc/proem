//
//  Semigroup.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation

/// Semigroup :: * -> Constraint
/// - Laws:
///   - x <> (y <> z) = (x <> y) <> z
public protocol Semigroup {
    /// Associative operation
    ///
    /// - Parameter other: A semigroup value
    /// - Returns: A semigroup value
    func op(_ other: Self) -> Self
}

// TODO: sconcat
// TODO: stimes

/// An infix version of the semigroup operator
///
/// - Parameters:
///   - lhs: A semigroup value
///   - rhs: A semigroup value
/// - Returns: A semigroup value
public func <> <S: Semigroup> (lhs: S, rhs: S) -> S {
    return lhs.op(rhs)
}

// TODO: Maybe add prefix and postfix version of <>

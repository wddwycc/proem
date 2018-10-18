//
//  mocks.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation
@testable import proem

struct Sum<T: Numeric>: Monoid {
    let value: T
    static func identity() -> Sum<T> {
        return Sum(0)
    }

    init(_ value: T) {
        self.value = value
    }

    func op(_ other: Sum<T>) -> Sum<T> {
        return Sum(self.value + other.value)
    }
}

extension Sum: Equatable {
    public static func == (lhs: Sum, rhs: Sum) -> Bool {
        return lhs.value == rhs.value
    }
}

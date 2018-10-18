//
//  semigroupTests.swift
//  proemTests
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import XCTest
@testable import proem

class semigroupTests: XCTestCase {

    func testSemigroup() {
        // x <> (y <> z) = (x <> y) <> z
        XCTAssertEqual(
            Sum(1) <> (Sum(2) <> Sum(3)),
            (Sum(1) <> Sum(2)) <> Sum(3)
        )
    }

    func testMonoid() {
        // x <> mempty = x
        XCTAssertEqual(Sum(3) <> mempty(Sum.self), Sum(3))
        // x <> mempty = x
        XCTAssertEqual(mempty(Sum.self) <> Sum(3), Sum(3))
        // TODO: mconcat = foldr <> mempty
        // XCTAssertEqual(mconcat([Sum(1), Sum(2), Sum(3)]), Sum(6) <> mempty(Sum.self))
    }

}

//
//  Operators.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation

precedencegroup LeftApplyPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

precedencegroup FunctionCompositionPrecedence {
    associativity: right
    higherThan: LeftApplyPrecedence
}

infix operator <>: FunctionCompositionPrecedence

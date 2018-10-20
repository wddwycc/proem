//
//  Maybe.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation


public enum Maybe<T> {
    case just(T)
    case nothing
}

extension Maybe: Functor {
    public typealias FunctorTT = T
    public func map<U>(_ transform: ((T) -> U)) -> Maybe<U> {
        switch self {
        case .nothing: return .nothing
        case .just(let v):
            return .just(transform(v))
        }
    }
}

extension Maybe: Equatable where T: Equatable {}

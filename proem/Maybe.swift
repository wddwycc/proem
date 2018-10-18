//
//  Maybe.swift
//  proem
//
//  Created by duan on 2018/10/18.
//  Copyright © 2018 monk-studio. All rights reserved.
//

import Foundation


public enum Maybe<T>: Functor {
    public typealias A = T
    case just(T)
    case nothing
}

public func fmap<T, U>(_ transform: ((T) -> U), _ functor: Maybe<T>) -> Maybe<U> {
    switch functor {
    case .nothing:
        return .nothing
    case .just(let v):
        return .just(transform(v))
    }
}

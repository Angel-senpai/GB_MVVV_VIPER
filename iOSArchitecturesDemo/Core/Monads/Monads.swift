//
//  Monads.swift
//  iOSArchitecturesDemo
//
//  Created by Даниил Мурыгин on 09.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//
import Foundation

precedencegroup MonadicPrecedence {
    associativity: left
    higherThan: BitwiseShiftPrecedence
}

infix operator >>- : MonadicPrecedence

/// В случае если значение "a" типа T существует, то будет выполнен метод f, возвращающий тип U
/// Иначе получим nil
@inline(__always)
@discardableResult
public func >>-<T, U>(a: T?, f: (T) throws -> U?) rethrows -> U? {
    switch a {
    case .some(let x):
        return try f(x)
    case .none:
        return nil
    }
}

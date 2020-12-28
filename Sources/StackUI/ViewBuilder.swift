//
//  ViewBuilder.swift
//  StackManager
//
//  Created by Moein Barzegaran on 10/8/1399 AP.
//

import UIKit

@_functionBuilder
public struct ViewBuilder {
    public static func buildBlock() -> [UIView] { [] }
}

extension ViewBuilder {
    public static func buildBlock(_ values: UIView...) -> [UIView] {
        values
    }
}

extension ViewBuilder {
    public static func buildIf(_ value: [UIView]?) -> [UIView] {
        value ?? []
    }
    
    public static func buildEither(first: [UIView]) -> [UIView] {
        first
    }

    public static func buildEither(second: [UIView]) -> [UIView] {
        second
    }
}

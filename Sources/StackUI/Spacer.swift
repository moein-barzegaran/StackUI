//
//  Spacer.swift
//  StackManager
//
//  Created by Moein Barzegaran on 10/8/1399 AP.
//

import UIKit

public class Spacer: UIView {

    public let amount: CGFloat

    public init(_ amount: CGFloat = Constants.defaultSpacing) {
        self.amount = amount
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        self.amount = Constants.defaultSpacing
        super.init(coder: coder)
    }
}

//
//  HStack.swift
//  StackManager
//
//  Created by Moein Barzegaran on 10/8/1399 AP.
//

import UIKit

public class HStack: MBStack {
	
    public init(
		alignment		: UIStackView.Alignment = .fill,
		distribution	: UIStackView.Distribution = .fillEqually,
		spacing			: CGFloat = Constants.defaultSpacing,
		@ViewBuilder
		content			: () -> [UIView]
	) {
		super.init(
			axis			: .horizontal,
			alignment		: alignment,
			distribution	: distribution,
			spacing			: spacing,
			content			: content
		)
    }
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
}

//
//  VStack.swift
//  StackManager
//
//  Created by Moein Barzegaran on 10/8/1399 AP.
//

import UIKit

public class VStack: MBStack {
    
    public init(
		alignment		: UIStackView.Alignment = .fill,
		distribution	: UIStackView.Distribution = .fill,
		spacing			: CGFloat = Constants.defaultSpacing,
		@ViewBuilder
		content			: () -> [UIView]
	) {
		super.init(
			axis			: .vertical,
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

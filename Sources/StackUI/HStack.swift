//
//  HStack.swift
//  StackManager
//
//  Created by Moein Barzegaran on 10/8/1399 AP.
//

import UIKit

public class HStack: UIView {

    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = alignment
        stack.distribution = distribution
        stack.spacing = spacing
        return stack
    }()
    
    private let alignment: UIStackView.Alignment
    private let distribution: UIStackView.Distribution
    private let spacing: CGFloat
    private let contents: [UIView]
    
    // MARK: Initializers
    public init(alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fillEqually, spacing: CGFloat = Constants.defaultSpacing, @ViewBuilder content: () -> [UIView]) {
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
        self.contents = content()
        super.init(frame: .zero)
        
        // Add array of views to the stack view
        bindInputViews()
        // Add to stack view to its content view
        setupView()
    }

    required init?(coder: NSCoder) {
        self.alignment = .fill
        self.distribution = .fill
        self.spacing = 0
        self.contents = []
        super.init(coder: coder)
        setupView()
    }
    
    private func bindInputViews() {
        for (index, view) in contents.enumerated() {
            if let spacer = view as? Spacer {
                stackView.setCustomSpacing(spacer.amount, after: contents[index - 1])
            } else {
                stackView.addArrangedSubview(view)
            }
        }
    }

    private func setupView() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: leftAnchor),
            stackView.rightAnchor.constraint(equalTo: rightAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

//
//  RoundPinView.swift
//  OTPTextFieldExample
//
//  Created by Vladislav Krupenko on 19.03.2020.
//  Copyright © 2020 Fixique. All rights reserved.
//

import UIKit

final class RoundPinView: UIView {

    // MARK: - IBOutlets

    @IBOutlet private weak var outerContainerView: UIView!
    @IBOutlet private weak var innerContainerView: UIView!
    @IBOutlet private weak var codeLabel: UILabel!

    // MARK: - UIView

    override func awakeFromNib() {
        super.awakeFromNib()
        setupInitilState()
    }

}

// MARK: - Pin Container

extension RoundPinView: PinContainer {

    public func set(value: String?) {
        codeLabel.text = value
    }

    public func clear() {
        codeLabel.text = nil
    }

    public func animateIndicator() {
        setIndicatorActive()
    }

    public func removeIndicator() {
        setIndicatorInactive()
    }

}

// MARK: - Configuration

private extension RoundPinView {

    func setupInitilState() {
        configureContainerViews()
        configureCodeLabel()
    }

    func configureContainerViews() {
        outerContainerView.backgroundColor = UIColor(red: 67 / 255, green: 57 / 255, blue: 69 / 255, alpha: 1.0)
        outerContainerView.layer.cornerRadius = outerContainerView.frame.height / 2
        outerContainerView.layer.masksToBounds = true

        innerContainerView.backgroundColor = UIColor(red: 15 / 255, green: 12 / 255, blue: 15 / 255, alpha: 1.0)
        innerContainerView.layer.cornerRadius = innerContainerView.frame.height / 2
        innerContainerView.layer.masksToBounds = true
    }

    func configureCodeLabel() {
        codeLabel.textColor = .white
        codeLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        codeLabel.textAlignment = .center
        codeLabel.text = nil
    }

}

// MARK: - Animation

private extension RoundPinView {

    func setIndicatorActive() {
        outerContainerView.backgroundColor = UIColor(red: 181 / 255, green: 127 / 255, blue: 255 / 255, alpha: 1.0)
    }

    func setIndicatorInactive() {
        outerContainerView.backgroundColor = UIColor(red: 67 / 255, green: 57 / 255, blue: 69 / 255, alpha: 1.0)
    }

}
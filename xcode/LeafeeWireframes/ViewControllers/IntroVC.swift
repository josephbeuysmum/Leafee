//
//  IntroVC.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 06/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class IntroVC: UIViewController {
	@IBOutlet weak var illustrationImage: UIImageView!
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var getStartedLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		illustrationImage.addBorder()
		messageLabel.addBorder()
		getStartedLabel.addBorder()
		
		navigationController?.navigationBar.topItem?.title = "Intro"
		
		messageLabel.numberOfLines = 0
		messageLabel.lineBreakMode = .byWordWrapping
		messageLabel.text = "Create your own leafletting campaigns and get volunteers to help you deliver your message"
		getStartedLabel.text = "Get Started"
	}
}

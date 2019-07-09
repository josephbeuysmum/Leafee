//
//  ProfileDetails.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 04/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

@IBDesignable class ProfileDetails: UIView, NibLoadable {
	@IBOutlet weak var header: ProfileHeader!
	@IBOutlet weak var descriptionLabel: UILabel!
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setUp()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setUp()
	}
	
	private func setUp() {
		setupFromNib()
		descriptionLabel.addBorder()
		descriptionLabel.numberOfLines = 0
		descriptionLabel.lineBreakMode = .byWordWrapping
	}
}

//
//  VolunteerCell.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 09/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class VolunteerCell: UITableViewCell {
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var locationLabel: UILabel!
	@IBOutlet weak var campaignsLabel: UILabel!
	@IBOutlet weak var ratingLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		nameLabel.addBorder()
		locationLabel.addBorder()
		campaignsLabel.addBorder()
		ratingLabel.addBorder()
	}
}

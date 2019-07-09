//
//  CampaignCell.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 06/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class CampaignCell: UITableViewCell {
	@IBOutlet weak var iconView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var dateAndLocationLabel: UILabel!
	@IBOutlet weak var categoriesLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		iconView.addBorder()
		nameLabel.addBorder()
		dateAndLocationLabel.addBorder()
		categoriesLabel.addBorder()
		
		nameLabel.numberOfLines = 0
		dateAndLocationLabel.numberOfLines = 0
		categoriesLabel.numberOfLines = 0
		nameLabel.lineBreakMode = .byWordWrapping
		dateAndLocationLabel.lineBreakMode = .byWordWrapping
		categoriesLabel.lineBreakMode = .byWordWrapping
	}
}

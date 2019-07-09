//
//  StreetCell.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 09/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class StreetCell: UITableViewCell {
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var statusLabel: UILabel!
	@IBOutlet weak var proximityLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		nameLabel.addBorder()
		statusLabel.addBorder()
		proximityLabel.addBorder()
	}
}

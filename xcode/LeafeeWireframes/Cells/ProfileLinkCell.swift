//
//  ProfileLinkCell.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 04/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class ProfileLinkCell: UITableViewCell {
	@IBOutlet weak var contentLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		contentLabel.addBorder()
	}
}

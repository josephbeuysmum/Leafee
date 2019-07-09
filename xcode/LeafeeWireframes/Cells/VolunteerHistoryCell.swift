//
//  VolunteerHistoryCell.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 09/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class VolunteerHistoryCell: UITableViewCell {
	@IBOutlet weak var campaignNameLabel: UILabel!
	@IBOutlet weak var numberOfResidencesLabel: UILabel!
	@IBOutlet weak var verificationLabel: UILabel!
	@IBOutlet weak var feedbackLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		campaignNameLabel.addBorder()
		numberOfResidencesLabel.addBorder()
		verificationLabel.addBorder()
		feedbackLabel.addBorder()
	}
}

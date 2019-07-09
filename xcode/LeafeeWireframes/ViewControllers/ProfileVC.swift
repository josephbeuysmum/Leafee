//
//  ProfileVC.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 07/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	@IBOutlet weak var iconImage: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var locationLabel: UILabel!
	@IBOutlet weak var sinceLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var formerLabel: UILabel!
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		iconImage.addBorder()
		nameLabel.addBorder()
		locationLabel.addBorder()
		sinceLabel.addBorder()
		descriptionLabel.addBorder()
		formerLabel.addBorder()

		nameLabel.numberOfLines = 0
		locationLabel.numberOfLines = 0
		sinceLabel.numberOfLines = 0
		descriptionLabel.numberOfLines = 0
		
		nameLabel.lineBreakMode = .byWordWrapping
		locationLabel.lineBreakMode = .byWordWrapping
		sinceLabel.lineBreakMode = .byWordWrapping
		descriptionLabel.lineBreakMode = .byWordWrapping
		
		nameLabel.text = CampaignManager.name
		locationLabel.text = "in \(CampaignManager.location)"
		sinceLabel.text = "member since \(CampaignManager.since)"
		descriptionLabel.text = CampaignManager.description
		formerLabel.text = "Former Campaigns"
		
		navigationController?.navigationBar.topItem?.title = "User Profile"
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.separatorStyle = .none
		tableView.estimatedRowHeight = 102
		tableView.rowHeight = 102
		tableView.register(UINib(nibName: ViewNames.campaignCell, bundle: nil), forCellReuseIdentifier: ViewNames.campaignCell)
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewNames.campaignCell) as? CampaignCell else {
			return UITableViewCell()
		}
		if indexPath.row == 0 {
			cell.nameLabel.text = FlytippingCampaign.name
			cell.dateAndLocationLabel.text = "\(FlytippingCampaign.location), \(FlytippingCampaign.startDate) - \(FlytippingCampaign.endDate)"
			cell.categoriesLabel.text = FlytippingCampaign.categories
		}
		return cell
	}
}

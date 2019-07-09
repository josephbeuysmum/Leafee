//
//  ViewController.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 29/06/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class ExistingCampaignVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	@IBOutlet weak var iconImage: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var dateAndLocationLabel: UILabel!
	@IBOutlet weak var categoriesLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		iconImage.addBorder()
		nameLabel.addBorder()
		dateAndLocationLabel.addBorder()
		categoriesLabel.addBorder()
		descriptionLabel.addBorder()
		
		nameLabel.numberOfLines = 0
		dateAndLocationLabel.numberOfLines = 0
		categoriesLabel.numberOfLines = 0
		descriptionLabel.numberOfLines = 0
		
		nameLabel.lineBreakMode = .byWordWrapping
		dateAndLocationLabel.lineBreakMode = .byWordWrapping
		categoriesLabel.lineBreakMode = .byWordWrapping
		descriptionLabel.lineBreakMode = .byWordWrapping
		
		nameLabel.text = FlytippingCampaign.name
		dateAndLocationLabel.text = "\(FlytippingCampaign.location), \(FlytippingCampaign.startDate) - \(FlytippingCampaign.endDate)"
		categoriesLabel.text = FlytippingCampaign.categories
		descriptionLabel.text = FlytippingCampaign.description
		
		navigationController?.navigationBar.topItem?.title = "Existing Campaign"
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.separatorStyle = .none
		tableView.estimatedRowHeight = 32
		tableView.rowHeight = 32
		tableView.register(UINib(nibName: ViewNames.profileLinkCell, bundle: nil), forCellReuseIdentifier: ViewNames.profileLinkCell)
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 4
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 12
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewNames.profileLinkCell) as? ProfileLinkCell else {
			return UITableViewCell()
		}
		let content: String
		switch indexPath.section {
		case 0:		content = "Leaflet"
		case 1:		content = "Managers"
		case 2:		content = "Streets"
		case 3:		content = "Volunteers"
		default:	content = ""
		}
		cell.contentLabel.text = content
		cell.addBorder()
		return cell
	}
}

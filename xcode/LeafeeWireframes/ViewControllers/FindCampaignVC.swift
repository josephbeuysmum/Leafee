//
//  FindCampaignVC.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 06/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class FindCampaignVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var searchKeyLabel: UILabel!
	@IBOutlet weak var locationsKeyLabel: UILabel!
	@IBOutlet weak var categoriesKeyLabel: UILabel!
	@IBOutlet weak var fromKeyLabel: UILabel!
	@IBOutlet weak var toKeyLabel: UILabel!
	@IBOutlet weak var searchLabel: UILabel!
	@IBOutlet weak var locationsValueLabel: UILabel!
	@IBOutlet weak var categoriesValueLabel: UILabel!
	@IBOutlet weak var fromValueLabel: UILabel!
	@IBOutlet weak var toValueLabel: UILabel!
	@IBOutlet weak var buttonLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		navigationController?.navigationBar.topItem?.title = "Find Campaign"
		
		searchKeyLabel.addBorder()
		locationsKeyLabel.addBorder()
		categoriesKeyLabel.addBorder()
		fromKeyLabel.addBorder()
		toKeyLabel.addBorder()
		searchLabel.addBorder()
		locationsValueLabel.addBorder()
		categoriesValueLabel.addBorder()
		fromValueLabel.addBorder()
		toValueLabel.addBorder()
		buttonLabel.addBorder()
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.estimatedRowHeight = 80
		tableView.rowHeight = 80
		tableView.register(UINib(nibName: ViewNames.campaignCell, bundle: nil), forCellReuseIdentifier: ViewNames.campaignCell)
		
		searchKeyLabel.text = "Search for"
		searchLabel.text = "flytipping"
		locationsKeyLabel.text = "in"
		locationsValueLabel.text = "England"
		categoriesKeyLabel.text = "in categories of"
		categoriesValueLabel.text = "Social"
		fromKeyLabel.text = "from"
		fromValueLabel.text = "Jul 1"
		toKeyLabel.text = "to"
		toValueLabel.text = "Sep 5"
		buttonLabel.text = "Search"
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 6
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return indexPath.row == 0 ? 100 : 80
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

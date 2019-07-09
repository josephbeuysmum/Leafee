//
//  VolunteersList.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 09/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class VolunteersListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var filterLabel: UILabel!
	@IBOutlet weak var orderByLabel: UILabel!
	@IBOutlet weak var orderCriteriaLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		filterLabel.addBorder()
		orderByLabel.addBorder()
		orderCriteriaLabel.addBorder()
		
		filterLabel.text = "filter by..."
		orderByLabel.text = "Order by"
		orderCriteriaLabel.text = "proximity"
		
		navigationController?.navigationBar.topItem?.title = "Volunteers List"
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.separatorStyle = .none
		tableView.estimatedRowHeight = 92
		tableView.rowHeight = 92
		tableView.register(UINib(nibName: ViewNames.volunteerCell, bundle: nil), forCellReuseIdentifier: ViewNames.volunteerCell)
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
		guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewNames.volunteerCell) as? VolunteerCell else {
			return UITableViewCell()
		}
		if indexPath.section == 0 {
			cell.nameLabel.text = Volunteer.name
			cell.campaignsLabel.text = "\(Volunteer.numberCampaigns)"
			cell.locationLabel.text = Volunteer.location
			cell.ratingLabel.text = "\(Volunteer.rating)"
		}
		return cell
	}
}




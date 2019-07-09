//
//  StreetListVC.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 09/07/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

class StreetsListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
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
		
		navigationController?.navigationBar.topItem?.title = "Streets List"
		
		tableView.delegate = self
		tableView.dataSource = self
		tableView.separatorStyle = .none
		tableView.estimatedRowHeight = 56
		tableView.rowHeight = 56
		tableView.register(UINib(nibName: ViewNames.streetCell, bundle: nil), forCellReuseIdentifier: ViewNames.streetCell)
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
		guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewNames.streetCell) as? StreetCell else {
			return UITableViewCell()
		}
		if indexPath.row == 0 {
			cell.nameLabel.text = "\(Street.name), \(Street.location)"
			cell.statusLabel.text = Street.status
			cell.proximityLabel.text = Street.proximity
		}
		return cell
	}
}



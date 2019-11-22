//
//  Campaigns.swift
//  Leafee
//
//  Created by Richard Willis on 13/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

class Campaigns: ObservableObject {
	@Published var campaigns = [Campaign]()

//	func add(_ campaign: Campaign) {
//		campaigns.append(campaign)
//	}
//
//	func remove(_ campaign: Campaign) {
//		guard let index = campaigns.firstIndex(of: campaign) else { return }
//		campaigns.remove(at: index)
//	}
}

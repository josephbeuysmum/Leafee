//
//  User.swift
//  Leafee
//
//  Created by Richard Willis on 08/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation
import SwiftUI

struct User: Codable, Identifiable, Profilable {
	var id: UUID
	var userName: String
	var displayName: String
	var location: String
	var registrationDate: Date
	var campaigns: [Campaign]?
	var description: String?
//	var volunteeredFor: [UUID]?

	var locationDescription: String {
		let prefix = NSLocalizedString("in", comment: "")
		return "\(prefix): \(location)"
	}
	
	
	var details: String? {
		let prefix = NSLocalizedString("member_since", comment: "")
		let df = DateFormatter()
		df.dateStyle = .medium
		return "\(prefix) \(df.string(from: registrationDate))"
	}
	
	#if DEBUG
	static let example = User(
		id: UUID(uuidString: "94855E24-F250-4358-9E47-593DB165CB6F")!,
		userName: "dave",
		displayName: "Mme. Gladwin Mesh-Frumbold, Earl of Dogwhud",
		location: "Sleepfield",
		registrationDate: Date(),
		campaigns: [Campaign.example],
		description: "unworked bunty")
	#endif
}

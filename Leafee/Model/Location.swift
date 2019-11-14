//
//  Location.swift
//  Leafee
//
//  Created by Richard Willis on 08/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation

struct Location: Codable, Identifiable {
	var id: UUID
	var campaignId: UUID
	var name: String
	var streets: [Street]?
	var manager: User?
	
	#if DEBUG
	static let example = Location(
		id: UUID(uuidString: "9F5D4F1C-1C37-4489-B0A0-279A01E2F2BD")!,
		campaignId: UUID(uuidString: "59916275-0518-45FF-A65E-C4D90A9C69A3")!,
		name: "Sleepfield",
		streets: nil,
		manager: nil)
	#endif
}

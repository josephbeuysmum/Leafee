//
//  Campaign.swift
//  Leafee
//
//  Created by Richard Willis on 08/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation

struct Campaign: Codable, Identifiable, Profilable {
	var id: UUID
	var userId: UUID
	var name: String
	var creationDate: Date
	var startDate: Date
	var endDate: Date
	var location: Location
	var widerLocations: [Location]?
	var categories: [Category]?
	var description: String?

	var locationDescription: String {
		let df = DateFormatter()
		df.dateStyle = .medium
		df.timeStyle = .none
		return "\(location.name), \(df.string(from: startDate)) - \(df.string(from: endDate))"
	}

	var displayName: String {
		return name
	}
	
	var details: String? {
		guard let categories = categories else { return nil }
		return categories.map { $0.name }.joined(separator: ", ")
	}

//	var leaflet: Any?
	
//	var stats: ...
	
	#if DEBUG
	static let example = Campaign(
		id: UUID(uuidString: "59916275-0518-45FF-A65E-C4D90A9C69A3")!,
		userId: UUID(uuidString: "B3AECD9D-85E3-43D6-B5F2-B4BC33778420")!,
		name: "Wake Up Sleepyhead, the Time is Now",
		creationDate: Date(timeIntervalSince1970: 1419120000),
		startDate: Date(timeIntervalSince1970: 1576800000),
		endDate: Date(timeIntervalSince1970: 1577010800),
		location: Location.example,
		categories: [Category.example1, Category.example2],
		description: "Not enough broke woes in Sleepfield")
	#endif
}

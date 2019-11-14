//
//  Category.swift
//  Leafee
//
//  Created by Richard Willis on 08/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation

struct Category: Codable, Identifiable {
	var id: UUID
	var name: String
	
	#if DEBUG
	static let example1 = Category(
		id: UUID(uuidString: "D82C8283-815D-4DF1-AC31-FECDDE3F1AAB")!,
		name: "Social")
	static let example2 = Category(
		id: UUID(uuidString: "48C8E37E-51A7-48C5-A93C-3738C7946D9B")!,
		name: "Health")
	#endif
}

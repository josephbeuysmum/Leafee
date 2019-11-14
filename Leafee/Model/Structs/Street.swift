//
//  Street.swift
//  Leafee
//
//  Created by Richard Willis on 08/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation

struct Street: Codable, Identifiable {
	var id: UUID
	var name: String
//	var gpsLocation: Any?
	var volunteer: User?
}

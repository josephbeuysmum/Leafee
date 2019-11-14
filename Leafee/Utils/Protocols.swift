//
//  Protocols.swift
//  Leafee
//
//  Created by Richard Willis on 11/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation

protocol Profilable {
//	var image: String { get set }
	var displayName: String { get }
	var locationDescription: String { get }
	var description: String? { get }
	var details: String? { get }
}

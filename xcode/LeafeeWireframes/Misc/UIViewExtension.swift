//
//  UIViewExtension.swift
//  LeafeeWireframes
//
//  Created by Richard Willis on 30/06/2019.
//  Copyright © 2019 Rich Text Format Ltd. All rights reserved.
//

import UIKit

extension UIView {
	func addBorder() {
		self.layer.borderWidth = 1
		self.layer.borderColor = UIColor.black.cgColor	
	}
}

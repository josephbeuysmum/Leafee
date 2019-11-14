//
//  PDFViewControllerRepresentable.swift
//  Leafee
//
//  Created by Richard Willis on 14/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct PDFViewControllerRepresentable: UIViewControllerRepresentable {
	func makeCoordinator() -> Coordinator {
    	Coordinator(self)
	}
	
	func makeUIViewController(context: Context) -> PDFViewController {
    	let viewController = PDFViewController()
    	viewController.delegate = context.coordinator
    	return viewController
	}
	
	func updateUIViewController(_ uiViewController: PDFViewController, context: Context) {}
	
	class Coordinator: NSObject, PDFViewControllerDelegate {
    	var parent: PDFViewControllerRepresentable
    	
    	init(_ viewController: PDFViewControllerRepresentable) {
	    	self.parent = viewController
    	}
    	
    	func viewControllerDidCancel(_ picker: PDFViewController) {
	    	picker.dismiss(animated: true, completion: nil)
    	}
	}
}

protocol PDFViewControllerDelegate {
	
}

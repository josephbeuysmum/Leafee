//
//  PDFView.swift
//  Leafee
//
//  Created by Richard Willis on 19/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct PDFView: UIViewControllerRepresentable {
	let viewController = PDFViewController()
	var closure: BasicClosure
	
	func makeUIViewController(context: Context) -> PDFViewController {
    	return viewController
	}

	func updateUIViewController(_ uiViewController: PDFViewController, context: Context) {
		print(#function, "...")
	}
	
	func makeCoordinator() -> Coordinator {
		Coordinator(viewController, closure: closure)
	}
	
	class Coordinator: NSObject, PDFDelegate {
    	var closure: BasicClosure
		init(_ viewController: PDFViewController, closure: @escaping BasicClosure) {
	    	self.closure = closure
	    	super.init()
	    	viewController.delegate = self
    	}
		
    	func someDelegateFunction() {
			print(#function, "...")
//			closure()
    	}
	}
}

struct PDFView_Previews: PreviewProvider {
	static var previews: some View {
		PDFView(closure: {})
	}
}

protocol PDFDelegate {
//	func someDelegateFunction()
}

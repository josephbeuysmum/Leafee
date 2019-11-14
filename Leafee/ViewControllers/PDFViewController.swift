//
//  PDFViewController.swift
//  Leafee
//
//  Created by Richard Willis on 14/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import PDFKit
import UIKit

class PDFViewController: UIViewController {
	var delegate: PDFViewControllerDelegate?

	func show(_ pdf: PDFDocument) {
		let pdfView = PDFKit.PDFView()

		pdfView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(pdfView)

		pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
		
		pdfView.document = pdf
	}
}
/*

override func viewDidLoad() {
	super.viewDidLoad()
	guard let url = URL(string: "https://www.orimi.com/pdf-test.pdf") else { return }
	var request = URLRequest(url: url)
	request.httpMethod = "GET"
	
	_ = URLSession.shared.dataTask(with: request) {(data, response, error) in
		guard
			error == nil,
			let content = data,
			let pdf = PDFDocument(data: content)
			else { return }
		DispatchQueue.main.async {
			self.show(pdf)
		}
	}.resume()
}


*/

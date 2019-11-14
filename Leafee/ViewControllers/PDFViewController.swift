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

	override func viewDidLoad() {
    	super.viewDidLoad()
		let pdfView = PDFKit.PDFView()

		pdfView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(pdfView)

		pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}
}

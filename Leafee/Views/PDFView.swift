//
//  PDFView.swift
//  Leafee
//
//  Created by Richard Willis on 14/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct PDFView: View {
    var body: some View {
        PDFViewControllerRepresentable()
    }
}

struct PDFView_Previews: PreviewProvider {
    static var previews: some View {
        PDFView()
    }
}

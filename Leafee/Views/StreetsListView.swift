//
//  StreetsListView.swift
//  Leafee
//
//  Created by Richard Willis on 12/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct StreetsListView: View {
	var streets: [Street]
	
	var body: some View {
		List {
			ForEach(streets) { street in
				StreetRow(street: street)
			}
		}
	}
}

#if DEBUG
struct StreetsListView_Previews: PreviewProvider {
	static var previews: some View {
		StreetsListView(streets: [Street.example1, Street.example2])
	}
}
#endif

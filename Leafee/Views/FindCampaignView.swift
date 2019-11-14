//
//  FindCampaignView.swift
//  Leafee
//
//  Created by Richard Willis on 01/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct FindCampaignView: View {
	
	@EnvironmentObject var campaigns: Campaigns
	
	@State private var searchTerm = ""
	
	var body: some View {
		VStack {
			TextField("Enter search term", text: $searchTerm)
			List {
				Text("one")
				Text("two")
			}
		}
	}
}

#if DEBUG
struct FindCampaignView_Previews: PreviewProvider {
	static var previews: some View {
		FindCampaignView()
	}
}
#endif

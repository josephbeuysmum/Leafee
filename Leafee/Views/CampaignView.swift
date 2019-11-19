//
//  CampaignView.swift
//  Leafee
//
//  Created by Richard Willis on 12/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct CampaignView: View {
	var campaign: Campaign
	
	var body: some View {
		VStack(alignment: .leading) {
			ProfileHeaderView(profilable: campaign)
			Text(campaign.description ?? "no campaign description")
				.font(.body)
				.lineLimit(nil)
			NavigationLink(destination: StreetsListView()) {
				Text("streets view")
			}
			NavigationLink(destination: VolunteersListView()) {
				Text("volunteers view")
			}
			NavigationLink(destination: PDFView() {
				print(#function, "...")
			}) {
				Text("leaflet view")
			}
			Text("regional managers view")
			Spacer()
		}
	}
}

#if DEBUG
struct CampaignView_Previews: PreviewProvider {
	static var previews: some View {
		CampaignView(campaign: Campaign.example)
	}
}
#endif

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
			campaign.description.map { _ in
				Text(campaign.description!)
					.font(.body)
					.lineLimit(nil)
			}
			List {
				Text("Leaflet")
				Text("Managers")
				NavigationLink(destination: StreetsListView()) {
					Text("Streets")
				}
				NavigationLink(destination: VolunteersListView()) {
					Text("Volunteers")
				}
			}
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

//
//  CampaignView.swift
//  Leafee
//
//  Created by Richard Willis on 12/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

// herehere probably time to think about async loading and look at examples in CombineAPI tutorial, see best how to load: pdfs and profile images, json too prob.
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
				NavigationLink(destination: PDFView()) {
					Text("Leaflet")
				}
				NavigationLink(destination: StreetsListView()) {
					Text("Streets")
				}
				NavigationLink(destination: VolunteersListView()) {
					Text("Volunteers")
				}
				campaign.widerLocations.map { _ in
					NavigationLink(destination: RegionalManagersView()) {
						Text("Regional Managers")
					}
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

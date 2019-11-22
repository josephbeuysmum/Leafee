//
//  ExistingCampaignRow.swift
//  Leafee
//
//  Created by Richard Willis on 12/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct ExistingCampaignRow: View {
	var campaign: Campaign
	
	var body: some View {
		NavigationLink(destination: CampaignView(campaign: campaign)) {
			ProfileHeaderView(profilable: campaign)
		}
	}
}

#if DEBUG
struct ExistingCampaignRow_Previews: PreviewProvider {
	static var previews: some View {
		ExistingCampaignRow(campaign: Campaign.example)
	}
}
#endif

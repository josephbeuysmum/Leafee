//
//  ExistingCampaignsView.swift
//  Leafee
//
//  Created by Richard Willis on 01/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import Foundation
import SwiftUI

struct ExistingCampaignsView: View {
	var user: User
	
	var body: some View {
		VStack(alignment: .leading) {
			List {
				ForEach(user.campaigns ?? []) { campaign in
					ExistingCampaignRow(campaign: campaign)
				}
			}
//			Spacer()
		}
		.navigationBarTitle("Menu")
	}
}

#if DEBUG
struct ExistingCampaignsView_Previews: PreviewProvider {
	static var previews: some View {
		return ExistingCampaignsView(user: User.example)
	}
}
#endif

//
//  TabsView.swift
//  Leafee
//
//  Created by Richard Willis on 01/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct TabsView: View {
	let user = Bundle.main.decode(User.self, from: "example.json")
	var body: some View {
		NavigationView {
			TabView {
				ExistingCampaignsView(user: user)
					.tabItem {
						Image(systemName: "paperclip")
						Text("existing_campaigns")
					}
				FindCampaignView()
					.tabItem {
						Image(systemName: "magnifyingglass")
						Text("find_campaign")
					}
				UserProfileView()
					.tabItem {
						Image(systemName: "person")
						Text("my_profile")
					}
			}
			.navigationBarTitle(Text("tabs_view_header"))
		}
	}
}

#if DEBUG
struct TabsView_Previews: PreviewProvider {
	static var previews: some View {
		TabsView()
	}
}
#endif

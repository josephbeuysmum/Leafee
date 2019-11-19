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
		TabView {
			NavigationView {
				ExistingCampaignsView(user: user)
			}
			.tabItem {
				Image(systemName: "paperclip")
				Text("existing campaigns")
			}
			NavigationView {
				FindCampaignView()
			}.tabItem {
				Image(systemName: "magnifyingglass")
				Text("find campaign")
			}
			NavigationView {
				UserProfileView()
			}.tabItem {
				Image(systemName: "person")
				Text("my profile")
			}
		}
		.navigationBarTitle(Text("tabs header"))
	}
}

#if DEBUG
struct TabsView_Previews: PreviewProvider {
	static var previews: some View {
		TabsView()
	}
}
#endif

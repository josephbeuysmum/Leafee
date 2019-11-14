//
//  ProfileHeaderView.swift
//  Leafee
//
//  Created by Richard Willis on 11/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
	let qS = UIScreen.main.bounds.width / 4
	var profilable: Profilable
	
	var body: some View {
		VStack(alignment: .leading, spacing: 4) {
			HStack(alignment: .top, spacing: 8) {
				Image("placeholder")
					.resizable()
					.frame(width: qS, height: qS)
				VStack(alignment: .leading, spacing: 4) {
					Text(profilable.displayName)
						.font(.body)
						.lineLimit(nil)
					Text(profilable.locationDescription)
						.foregroundColor(Color.gray)
						.font(.system(size: 14))
					profilable.details.map { _ in
						Text(profilable.details!)
							.foregroundColor(Color.gray)
							.font(.system(size: 14))
							.italic()
					}
				}
				Spacer()
			}
//			profilable.description.map { _ in
//				Text(profilable.description!)
//					.padding(8)
//			}
		}
	}
}

#if DEBUG
struct ProfileHeaderView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileHeaderView(profilable: User.example)
	}
}
#endif

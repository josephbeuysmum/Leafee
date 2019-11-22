//
//  StreetRow.swift
//  Leafee
//
//  Created by Richard Willis on 22/11/2019.
//  Copyright © 2019 Rich Text Format. All rights reserved.
//

import SwiftUI

struct StreetRow: View {
	var street: Street
	
    var body: some View {
		VStack {
			Text(street.name)
			street.volunteer.map { _ in
				Text(street.volunteer!.displayName)
			}
		}
    }
}

#if DEBUG
struct StreetRow_Previews: PreviewProvider {
    static var previews: some View {
		StreetRow(street: Street.example1)
    }
}
#endif

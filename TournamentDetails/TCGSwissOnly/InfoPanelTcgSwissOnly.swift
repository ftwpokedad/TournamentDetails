//
//  InfoPanelTcgSwissOnly.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct InfoPanelTcgSwissOnly: View {
	@Binding var numPlayers: Double
	@Binding var roundsTcgSwissOnly: Double
	
	var body: some View {
		NavigationView {
			let InfoPanel: TourInfoTcgSwissOnly = TourInfoTcgSwissOnly(
				numPlayers: $numPlayers,
				roundsTcgSwissOnly: $roundsTcgSwissOnly
			)
			Form {
				Section(header: Text("Tournament Details:")) {
					InfoPanel
				}
			}
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .principal) {
					VStack {
						Text("Pokémon Tournament").font(.headline)
						Text("Details Calculator (2025 TCG Swiss Only)").font(.subheadline)
					}
				}
			}
		}
		.scrollDismissesKeyboard(.immediately)
	}
}

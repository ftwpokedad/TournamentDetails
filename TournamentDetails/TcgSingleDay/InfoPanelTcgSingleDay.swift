//
//  InfoPanelTcgSingleDay.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct InfoPanelTcgSingleDay: View {
	@Binding var numPlayers: Double
	@Binding var roundsTcgSingleDaySwiss: Double
	@Binding var topCutTcgSingleDay: Double
	
	var body: some View {
		NavigationView {
			let InfoPanel: TourInfoTcgSingleDay = TourInfoTcgSingleDay(
				numPlayers: $numPlayers,
				roundsTcgSingleDaySwiss: $roundsTcgSingleDaySwiss,
				topCutTcgSingleDay: $topCutTcgSingleDay
			)
			Form {
				Section {
					InfoPanel
				}
			}
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .principal) {
					VStack {
						Text("Pokémon Tournament").font(.headline)
						Text("Details Calculator (2025 TCG Single Day)").font(.subheadline)
					}
				}
			}
		}
		.scrollDismissesKeyboard(.immediately)
	}
}

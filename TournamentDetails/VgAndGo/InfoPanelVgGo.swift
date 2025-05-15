//
//  InfoPanelVgGo.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct InfoPanelVgGo: View {
	// Number Players Bindings
	@Binding var numPlayers: Double
	// Masters Details Bindings
	@Binding var roundsVgGoSingleDay: Double
	@Binding var topCutVgGoSingleDay: Double
	
	var body: some View {
		// Create Age Division Panels
		NavigationView {
			let InfoPanel: TourInfoVgGo = TourInfoVgGo(
				numPlayers: $numPlayers,
				roundsVgGoSingleDay: $roundsVgGoSingleDay,
				topCutVgGoSingleDay: $topCutVgGoSingleDay
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
						Text("Details Calculator (2025 VG and GO Single Day)").font(.subheadline)
					}
				}
			}
		}
		.scrollDismissesKeyboard(.immediately)
	}
}

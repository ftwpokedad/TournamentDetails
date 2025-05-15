//
//  InfoPanelChampionshipSeries.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct InfoPanelChampionshipSeries: View {
	// Number Players Bindings
	@Binding var numPlayers: Double
	// Masters Details Bindings
	@Binding var phase1Swiss: Double
	@Binding var phase2Swiss: Double
	@Binding var topCut: Double
	@Binding var pointCut: Double
	
	var body: some View {
		// Create Age Division Panels
		NavigationView {
			let InfoPanel: TourInfoChampionshipSeries = TourInfoChampionshipSeries(
				numPlayers: $numPlayers,
				phase1Swiss: $phase1Swiss,
				phase2Swiss: $phase2Swiss,
				pointCut: $pointCut,
				topCut: $topCut
				)
			
			let Phase2Panel: Phase2DataChampionshipSeries = Phase2DataChampionshipSeries(
				phase1Swiss: $phase1Swiss,
				pointCut: $pointCut,
				numPlayers: $numPlayers,
				)
			
			VStack{
					Section {
						InfoPanel
						if numPlayers > 0 {
							Phase2Panel
						}
				}
			}


			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .principal) {
					VStack {
						Text("Pokémon Tournaments").font(.headline)
						Text("2025 Championship Format Details").font(.subheadline)
					}
				}
			}
		}
		.scrollDismissesKeyboard(.immediately)
	}
}

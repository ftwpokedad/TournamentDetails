//
//  InfoPanelAllTournaments.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct InfoPanelAllTournaments: View {
	@Binding var numPlayers: Double
	@Binding var topCutTcgSingleDay: Double
	@Binding var roundsTcgSingleDay: Double
	@Binding var roundsTcgSwissOnly: Double
	@Binding var roundsVgGoSingleDay: Double
	@Binding var topCutVgGoSingleDay: Double
	
	var body: some View {
		NavigationView {
			let VgGoInfoPanel: TourInfoVgGo = TourInfoVgGo(
				numPlayers: $numPlayers,
				roundsVgGoSingleDay: $roundsVgGoSingleDay,
				topCutVgGoSingleDay: $topCutVgGoSingleDay
			)
			
			let TcgSwissOnlyInfoPanel: TourInfoTcgSwissOnly = TourInfoTcgSwissOnly(
				numPlayers: $numPlayers,
				roundsTcgSwissOnly: $roundsTcgSwissOnly,
			)

			let TcgSingleDayInfoPanel: TourInfoTcgSingleDay = TourInfoTcgSingleDay(
				numPlayers: $numPlayers,
				roundsTcgSingleDaySwiss: $roundsTcgSingleDay,
				topCutTcgSingleDay: $topCutTcgSingleDay
			)

			Form {
				Section(header: Text("VG/GO Single Day Details:")) {
					VgGoInfoPanel
				}
				Section(header: Text("TCG Swiss Only Details:")) {
					TcgSwissOnlyInfoPanel
				}
				Section(header: Text("TCG Single Day Details:")) {
					TcgSingleDayInfoPanel
				}

			}
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .principal) {
					VStack {
						Text("Pokémon Tournaments").font(.headline)
						Text("Locals Tournament Details").font(.subheadline)
					}
				}
			}
		}
		.scrollDismissesKeyboard(.immediately)
	}
}

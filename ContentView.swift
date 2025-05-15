//
//  ContentView.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct ContentView: View {
	// Number of Players
	@State var numPlayers = 0.0

	// 2025 Championship Series
	@State var phase1SwissRounds = 0.0
	@State var phase2SwissRounds = 0.0
	@State var pointsToAdvance = 0.0
	@State var topCut = 0.0
	@State var pointCut = 0.0
	@State var phase1Swiss = 0.0
	@State var phase2Swiss = 0.0
	
	// TCG Swiss Only
	@State var roundsTcgSwissOnly = 0.0
	
	// TCG Single Day
	@State var roundsTcgSingleDaySwiss: Double = 0.0
	@State var topCutTcgSingleDay: Double = 0.0
	
	//VG and GO Single Day
	@State var roundsVgGoSingleDay: Double = 0.0
	@State var topCutVgGoSingleDay: Double = 0.0

    var body: some View {
		TabView {
			InfoPanelChampionshipSeries(numPlayers: $numPlayers,
									   phase1Swiss: $phase1Swiss,
									   phase2Swiss: $phase2Swiss,
										topCut: $topCut,
										pointCut: $pointCut
			)
			
			.tabItem {
				Label("Champ Series", systemImage: "trophy")
			}
//			
//			InfoPanelVgGo(numPlayers: $numPlayers,
//									   roundsVgGoSingleDay: $roundsVgGoSingleDay,
//										topCutVgGoSingleDay: $topCut,
//			)
//			.tabItem {
//				Label("VG/GO Single Day", systemImage: "list.dash")
//			}
//			
//			InfoPanelTcgSingleDay(numPlayers: $numPlayers,
//									   roundsTcgSingleDaySwiss: $roundsTcgSwissOnly,
//										topCutTcgSingleDay: $topCutTcgSingleDay,
//			)
//			.tabItem {
//				Label("TCG Single Day", systemImage: "list.dash")
//			}
//			
//			InfoPanelTcgSwissOnly(numPlayers: $numPlayers,
//								  roundsTcgSwissOnly: $roundsTcgSwissOnly,
//			)
//			.tabItem {
//				Label("TCG Swiss Only", systemImage: "list.dash")
//			}

			InfoPanelAllTournaments(numPlayers: $numPlayers,
									topCutTcgSingleDay: $topCutTcgSingleDay,
									roundsTcgSingleDay: $roundsTcgSingleDaySwiss,
									roundsTcgSwissOnly: $roundsTcgSwissOnly,
									roundsVgGoSingleDay: $roundsVgGoSingleDay,
									topCutVgGoSingleDay: $topCutVgGoSingleDay,
			)
			.tabItem {
				Label("Locals", systemImage: "house")
			}


		}
    }
}

#Preview {
    ContentView()
}

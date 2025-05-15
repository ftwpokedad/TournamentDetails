//
//  TourInfoVgGo.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct TourInfoVgGo: View {
	@Binding var numPlayers: Double
	@Binding var roundsVgGoSingleDay: Double
	@Binding var topCutVgGoSingleDay: Double
	
	init(
		numPlayers: Binding<Double>,
		roundsVgGoSingleDay: Binding<Double>,
		topCutVgGoSingleDay: Binding<Double>
	) {
		self._numPlayers = numPlayers
		self._roundsVgGoSingleDay = roundsVgGoSingleDay
		self._topCutVgGoSingleDay = topCutVgGoSingleDay
	}
	
	var body: some View {
		// Define Section to calculate P1 and P2 Swiss Rounds, Top Cut Numbers and Points to advance
			Section {
				HStack {
					Text("Number of Players: ")
					TextField("# of Players", value: $numPlayers, format: .number)
						.keyboardType(.numberPad)
						.onChange(of: numPlayers, initial: true) {
							let tourDetails: VgGoSingleDay = VgGoSingleDay(phase1swissRounds: $roundsVgGoSingleDay,
																		   topCut: $topCutVgGoSingleDay,
							)
							roundsVgGoSingleDay = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).phase1Swiss
							topCutVgGoSingleDay = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).topCut
						}
				}
			}
			Section {
					if numPlayers > 1 {
						HStack {
							Text("Number of Swiss Rounds:")
							Text(roundsVgGoSingleDay < 1 ? "N/A" : "\(Int(roundsVgGoSingleDay))")
						}
						HStack {
							Text("Top Cut:")
							Text(topCutVgGoSingleDay < 2 ? "N/A" : "Top \(Int(topCutVgGoSingleDay))")
						}
					}
			}
		
	}
}

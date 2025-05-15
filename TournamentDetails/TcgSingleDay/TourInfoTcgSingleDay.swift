//
//  TourInfoTcgSingleDay.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct TourInfoTcgSingleDay: View {
	@Binding var numPlayers: Double
	@Binding var roundsTcgSingleDaySwiss: Double
	@Binding var topCutTcgSingleDay: Double
	
	init(
		numPlayers: Binding<Double>,
		roundsTcgSingleDaySwiss: Binding<Double>,
		topCutTcgSingleDay: Binding<Double>
	) {
		self._numPlayers = numPlayers
		self._roundsTcgSingleDaySwiss = roundsTcgSingleDaySwiss
		self._topCutTcgSingleDay = topCutTcgSingleDay
	}
	
	var body: some View {
		// Define Section to calculate P1 and P2 Swiss Rounds, Top Cut Numbers and Points to advance
			Section {
				HStack {
					Text("Number of Players: ")
					TextField("# of Players", value: $numPlayers, format: .number)
						.keyboardType(.numberPad)
						.onChange(of: numPlayers, initial: true) {
							let tourDetails: TcgSingleDay = TcgSingleDay(roundsTcgSingleDaySwiss: $roundsTcgSingleDaySwiss,
																		   topCutTcgSingleDay: $topCutTcgSingleDay,
							)
							roundsTcgSingleDaySwiss = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).phase1Swiss
							topCutTcgSingleDay = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).topCut
						}
				}
			}
			Section {
					if numPlayers > 1 {
						HStack {
							Text("Number of Swiss Rounds:")
							Text(roundsTcgSingleDaySwiss < 1 ? "N/A" : "\(Int(roundsTcgSingleDaySwiss))")
						}
						HStack {
							Text("Top Cut:")
							Text(topCutTcgSingleDay < 4 ? "N/A" : "Top \(Int(topCutTcgSingleDay))")
						}
					}
			}
		
	}
}

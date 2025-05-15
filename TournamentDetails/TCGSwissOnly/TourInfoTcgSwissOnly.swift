//
//  TourInfoTcgSwissOnly.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct TourInfoTcgSwissOnly: View {
	@Binding var numPlayers: Double
	@Binding var roundsTcgSwissOnly: Double
	
	init(
		numPlayers: Binding<Double>,
		roundsTcgSwissOnly: Binding<Double>
	) {
		self._numPlayers = numPlayers
		self._roundsTcgSwissOnly = roundsTcgSwissOnly
	}
	
	var body: some View {
			Section {
				HStack {
					Text("Number of Players: ")
					TextField("# of Players", value: $numPlayers, format: .number)
						.keyboardType(.numberPad)
						.onChange(of: numPlayers, initial: true) {
							let tourDetails: TcgSwissOnly = TcgSwissOnly(roundsTcgSwissOnly: $roundsTcgSwissOnly,
							)
							roundsTcgSwissOnly = tourDetails.calculateTournamentDetails(numPlayers: numPlayers)
						}
				}
			}
			Section {
					if numPlayers > 1 {
						HStack {
							Text("Number of Swiss Rounds:")
							Text(roundsTcgSwissOnly < 1 ? "N/A" : "\(Int(roundsTcgSwissOnly))")
						}
					}
			}
		
	}
}

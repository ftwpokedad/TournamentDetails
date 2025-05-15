//
//  TourInfoChampionshipSeries.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct TourInfoChampionshipSeries: View {
	@Binding var numPlayers: Double
	@Binding var phase1Swiss: Double
	@Binding var phase2Swiss: Double
	@Binding var pointCut: Double
	@Binding var topCut: Double
	
	init(
		numPlayers: Binding<Double>,
		phase1Swiss: Binding<Double>,
		phase2Swiss: Binding<Double>,
		pointCut: Binding<Double>,
		topCut: Binding<Double>
	) {
		self._numPlayers = numPlayers
		self._phase1Swiss = phase1Swiss
		self._phase2Swiss = phase2Swiss
		self._pointCut = pointCut
		self._topCut = topCut
	}
	
	var body: some View {
		// Define Section to calculate P1 and P2 Swiss Rounds, Top Cut Numbers and Points to advance
			Form{
				Section {
					HStack {
						Text("Number of Players: ")
						TextField("# of Players", value: $numPlayers, format: .number)
							.keyboardType(.numberPad)
							.onChange(of: numPlayers, initial: true) {
								let tourDetails: ChampionshipSeries = ChampionshipSeries(phase1swissRounds: $phase1Swiss,
																						 phase2SwissRounds: $phase2Swiss,
																						 topCut: $topCut,
																						 pointsToAdvance: $pointCut)
								
								phase1Swiss = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).phase1Swiss
								phase2Swiss = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).phase2Swiss
								topCut = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).topCut
								pointCut = tourDetails.calculateTournamentDetails(numPlayers: numPlayers).pointsToAdvance
							}
					}
				}
				Section {
						if numPlayers > 1 {
							HStack {
								Text("Phase 1 Swiss Rounds:")
								Text(phase1Swiss < 1 ? "N/A" : "\(Int(phase1Swiss))")
							}
							HStack {
								Text("Phase 2 Swiss Rounds:")
								Text(phase2Swiss < 1 ? "N/A" : "\(Int(phase2Swiss))")
							}
							HStack {
								Text("Top Cut:")
								Text(topCut < 4 ? "N/A" : "Asym Top \(Int(topCut))")
							}
							HStack {
								Text("Points to Advance:")
								Text(pointCut <= 0 ? "N/A" : "\(Int(pointCut))")
							}
						}
				}
			}
			.scrollDisabled(true)
		
	}
}

//
//  TcgSwissOnly.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct TcgSwissOnly: View {
	@Binding var roundsTcgSwissOnly: Double
	
	init(
		roundsTcgSwissOnly: Binding<Double>,
	)
	{
		self._roundsTcgSwissOnly = roundsTcgSwissOnly
	}
	
	
	
	var body: some View {
		// Define Section to calculate P1 and P2 Swiss Rounds, Top Cut Numbers and Points to advance
		Section {
		}
	}
	
	// Performs calc to find out what the Number of Phase 1 and 2 Rounds, Top Cut and Points needed
	func calculateTournamentDetails(numPlayers: Double) -> (Double){
		switch numPlayers{
		case 4...8:
			roundsTcgSwissOnly = 3
			
			
		case 9...16:
			roundsTcgSwissOnly = 4
			
			
		case 17...32:
			roundsTcgSwissOnly = 5
			
			
		case 33...64:
			roundsTcgSwissOnly = 6
			
			
		case 65...128:
			roundsTcgSwissOnly = 7

			
		case 129...256:
			roundsTcgSwissOnly = 8
			
			
		case 257...512:
			roundsTcgSwissOnly = 9
			
			
		case 513...:
			roundsTcgSwissOnly = 10
			
			
		default:
			roundsTcgSwissOnly = 0
			
		}
		return (roundsTcgSwissOnly)
	}
}

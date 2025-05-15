//
//  VgGoSingleDay.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct VgGoSingleDay: View {
	@Binding var phase1SwissRounds: Double
	@Binding var topCut: Double
	
	init(
		phase1swissRounds: Binding<Double>,
		topCut: Binding<Double>,
	)
	{
		self._topCut = topCut
		self._phase1SwissRounds = phase1swissRounds
	}
	
	
	
	var body: some View {
		// Define Section to calculate P1 and P2 Swiss Rounds, Top Cut Numbers and Points to advance
		Section {
		}
	}
	
	// Performs calc to find out what the Number of Phase 1 and 2 Rounds, Top Cut and Points needed
	func calculateTournamentDetails(numPlayers: Double) -> (phase1Swiss: Double, topCut: Double){
		switch numPlayers{
		case 4...7:
			phase1SwissRounds = 3
			topCut = 0
			
			
		case 8:
			phase1SwissRounds = 3
			topCut = 2
			
			
		case 9...16:
			phase1SwissRounds = 4
			topCut = 4
			
			
		case 17...32:
			phase1SwissRounds = 5
			topCut = 8
			
			
		case 33...64:
			phase1SwissRounds = 6
			topCut = 8
			
			
		case 65...128:
			phase1SwissRounds = 7
			topCut = 8
			
			
		case 129...226:
			phase1SwissRounds = 8
			topCut = 8
			
			
		case 227...256:
			phase1SwissRounds = 8
			topCut = 16
			
			
		case 257...409:
			phase1SwissRounds = 9
			topCut = 16
			
			
		case 410...512:
			phase1SwissRounds = 9
			topCut = 32
			
			
		case 513...:
			phase1SwissRounds = 10
			topCut = 8
			
			
		default:
			phase1SwissRounds = 0
			topCut = 0
			
		}
		return (phase1SwissRounds, topCut)
	}
}

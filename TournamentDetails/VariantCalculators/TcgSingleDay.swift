//
//  TcgSingleDay.swift
//  TournamentDetails
//
//  Created by Michael Woitalla on 5/14/25.
//

import SwiftUI

struct TcgSingleDay: View {
	@Binding var roundsTcgSingleDaySwiss: Double
	@Binding var topCutTcgSingleDay: Double
	
	init(
		roundsTcgSingleDaySwiss: Binding<Double>,
		topCutTcgSingleDay: Binding<Double>,
	)
	{
		self._topCutTcgSingleDay = topCutTcgSingleDay
		self._roundsTcgSingleDaySwiss = roundsTcgSingleDaySwiss
	}
	
	
	
	var body: some View {
		// Define Section to calculate P1 and P2 Swiss Rounds, Top Cut Numbers and Points to advance
		Section {
		}
	}
	
	// Performs calc to find out what the Number of Phase 1 and 2 Rounds, Top Cut and Points needed
	func calculateTournamentDetails(numPlayers: Double) -> (phase1Swiss: Double, topCut: Double){
		switch numPlayers{
		case 4...8:
			roundsTcgSingleDaySwiss = 3
			topCutTcgSingleDay = 0
			
			
		case 9...12:
			roundsTcgSingleDaySwiss = 4
			topCutTcgSingleDay = 4
			
			
		case 13...20:
			roundsTcgSingleDaySwiss = 5
			topCutTcgSingleDay = 4
			
			
		case 21...32:
			roundsTcgSingleDaySwiss = 5
			topCutTcgSingleDay = 8
			
			
		case 33...64:
			roundsTcgSingleDaySwiss = 6
			topCutTcgSingleDay = 8
			
			
		case 65...128:
			roundsTcgSingleDaySwiss = 7
			topCutTcgSingleDay = 8
			
			
		case 129...226:
			roundsTcgSingleDaySwiss = 8
			topCutTcgSingleDay = 8
			
			
		case 227...409:
			roundsTcgSingleDaySwiss = 9
			topCutTcgSingleDay = 8
					
			
		case 410...:
			roundsTcgSingleDaySwiss = 10
			topCutTcgSingleDay = 8
			
			
		default:
			roundsTcgSingleDaySwiss = 0
			topCutTcgSingleDay = 0
			
		}
		return (roundsTcgSingleDaySwiss, topCutTcgSingleDay)
	}
}

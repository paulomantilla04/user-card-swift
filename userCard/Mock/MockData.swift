//
//  MockData.swift
//  userCard
//
//  Created by Paulo Mantilla on 21/02/26.
//

import SwiftUI

struct MockData {
    static let messi = PlayerCardData(
        image: Image("messi"),
        name: "Lionel Messi",
        description: "Football Player who focuses on simplicity & technique.",
        stats: PlayerStats(
            goals: "896",
            assists: "409",
            titles: "48"
        )
    )
    
    static let cristiano = PlayerCardData(
        image: Image("cr7"),
        name: "Cristiano",
        description: "Football Player defined by intensity, athleticism & winning mentality.",
        stats: PlayerStats(
            goals: "962",
            assists: "260",
            titles: "36"
        )
    )
    
    static let mbappe = PlayerCardData(
        image: Image("mbappe"),
        name: "Mbappé",
        description: "Next-generation forward defined by pace, flair & fearless ambition.",
        stats: PlayerStats(goals: "372", assists: "139", titles: "23")
    )
}

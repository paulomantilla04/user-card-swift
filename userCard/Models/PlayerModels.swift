//
//  PlayerModels.swift
//  userCard
//
//  Created by Paulo Mantilla on 21/02/26.
//
import SwiftUI

struct PlayerStats {
    let goals: String
    let assists: String
    let titles: String
}

struct PlayerCardData {
    let image: Image
    let name: String
    let description: String
    let stats: PlayerStats
}

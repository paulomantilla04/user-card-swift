//
//  userCardComponentA.swift
//  userCard
//
//  Created by Paulo Mantilla on 21/02/26.
//

import SwiftUI



struct UserCardComponentA: View {
    
    let player: PlayerCardData
    
    var body: some View {

            ZStack (alignment: .top){
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .frame(width: 350, height: 550)
                    .shadow(radius: 20)
                
                VStack(spacing: 20) {
                    player.image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 335, height: 300)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 45, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 10){
                        HStack(spacing: 10){
                            Text(player.name)
                                .font(.system(size: 32, weight: .bold))
                            
                            Image(systemName: "checkmark.seal.fill")
                                .font(.system(size: 30))
                                .foregroundStyle(
                                    Color.black,
                                    LinearGradient(
                                        colors: [Color(#colorLiteral(red: 0, green: 0.9476028085, blue: 0.4750788808, alpha: 1)), Color(#colorLiteral(red: 0.03581494838, green: 0.6451190114, blue: 0.3321012855, alpha: 1))],
                                        startPoint: .top,
                                            endPoint: .bottom
                                    ))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(player.description)
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        
                        HStack(spacing: 40){
                            StatsVisualizer(label: "GOALS", value: player.stats.goals, colorLabel: .black)
                            StatsVisualizer(label: "ASSISTS", value: player.stats.assists, colorLabel: .black)
                            StatsVisualizer(label: "TITLES", value: player.stats.titles, colorLabel: .black)
                        }
                        .padding(.top, 15)
                    }
                    .padding(.horizontal, 60)
                }
                .padding(.top, 6)
            }
        }
        
}


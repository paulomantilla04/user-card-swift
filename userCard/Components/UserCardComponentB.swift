//
//  UserCardComponentB.swift
//  userCard
//
//  Created by Paulo Mantilla on 21/02/26.
//

import SwiftUI

struct UserCardComponentB: View {
    
    
    let player: PlayerCardData

    
    var body: some View {
            ZStack(alignment: .top){
                RoundedRectangle(cornerRadius: 50)
                    .fill(.white)
                    .frame(width: 350, height: 550)
                    .shadow(radius: 20)
                
                ZStack(alignment: .bottom){
                    player.image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 335, height: 535)
                        .overlay(
                            ZStack {
                                
                                Rectangle()
                                    .fill(.ultraThinMaterial)
                                    .mask(
                                        LinearGradient(
                                            gradient: Gradient(stops: [
                                                .init(color: .clear, location: 0.5),
                                                .init(color: .black, location: 0.7)
                                            ]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                
                            
                                LinearGradient(
                                    gradient: Gradient(stops: [
                                            .init(color: .clear, location: 0.5),
                                            .init(color: .black.opacity(0.5), location: 0.7)
                                        ]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                )
                            }
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 45))
                    
                    VStack (alignment: .leading, spacing: 10){
                        HStack(spacing: 10){
                            Text(player.name)
                                .foregroundStyle(.white)
                                .font(.system(size: 32, weight: .bold))
                            
                            Image(systemName: "checkmark.seal.fill")
                                .font(.system(size: 30))
                                .foregroundStyle(
                                    Color(#colorLiteral(red: 0.06016227603, green: 0.3406695127, blue: 0.1753978431, alpha: 1)),
                                    LinearGradient(
                                        colors: [Color(#colorLiteral(red: 0, green: 0.9476028085, blue: 0.4750788808, alpha: 1)), Color(#colorLiteral(red: 0.06410705298, green: 0.6296750903, blue: 0.3229005933, alpha: 1))],
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(player.description)
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.leading)
                        
                        HStack(spacing: 40){
                            StatsVisualizer(label: "GOALS", value: player.stats.goals, colorLabel: .white)
                            StatsVisualizer(label: "ASSISTS", value: player.stats.assists, colorLabel: .white)
                            StatsVisualizer(label: "TITLES", value: player.stats.titles, colorLabel: .white)
                        }
                        .padding(.top, 15)
                    }
                    .padding(.all, 60)
                }
                .padding(.top, 6)
            }
        }
    }

#Preview {
    UserCardComponentB(player: MockData.messi)
}



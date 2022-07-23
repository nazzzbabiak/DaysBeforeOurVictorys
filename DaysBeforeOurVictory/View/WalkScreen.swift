//
//  WalkScreen.swift
//  DaysBeforeOurVictory
//
//  Created by Nazar Babyak on 23.07.2022.
//

import SwiftUI

struct WalkScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack {
            if currentPage == 1 {
                ScreenView(image: "photo1", title: "З кожним днем ми стаємо все блище до перемоги!!!")
                    .transition(.scale)
            }
            
            if currentPage == 2 {
                ScreenView(image: "photo2", title: "З кожним днем ми стаємо все блище до становлення цілісності нашої України!!!")
                    .transition(.scale)
            }
            
            if currentPage == 3 {
                ScreenView(image: "photo3", title: "Кожен з нас є маленькою частиною з якої буде будуватися перемога!!!")
                    .transition(.scale)
            }
        }
        .overlay(
            Button(action: {
                withAnimation(.easeInOut) {
                    
                    if currentPage <= totalPages {
                        currentPage += 1
                    } else {
                        currentPage = 1
                    }
                    
                }
            }, label: {
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .frame(width: 55, height: 55)
                    .background(.ultraThinMaterial)
                    .clipShape(Circle())
                    .overlay(
                        ZStack{
                            Circle()
                                .stroke(Color.yellow.opacity(0.45),lineWidth: 3)
                                .padding(-4)
                            Circle()
                                .stroke(Color.blue.opacity(0.45),lineWidth: 3)
                                .padding(-9)
                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color.white, lineWidth: 3)
                                .rotationEffect(.init(degrees: -90))
                        }
                            .padding(-7)
                    )
            })
            .padding(.horizontal, 37)
            .padding(.vertical, 5)
            , alignment: .bottomTrailing
        )
    }
}

struct WalkScreen_Previews: PreviewProvider {
    static var previews: some View {
        WalkScreen()
    }
}

var totalPages = 3

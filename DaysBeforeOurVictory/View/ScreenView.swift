//
//  ScreenView.swift
//  DaysBeforeOurVictory
//
//  Created by Nazar Babyak on 23.07.2022.
//

import SwiftUI

struct ScreenView: View {
    
    var image: String
    var title: String
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack(spacing: 35) {
            HStack(alignment: .center) {
                
                if currentPage == 1 {
                    Text("Help Army")
                        .font(.custom(FontsManager.TitilliumWeb.bold, size: 20))
                        .kerning(4)
                } else {
                    Button {
                        withAnimation(.easeInOut) {
                            currentPage -= 1
                        }
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    }

                }
                
                
                Spacer()
                
                Button {
                    withAnimation(.easeInOut) {
                        currentPage = 4
                    }
                } label: {
                    Text("Skip")
                        .font(.custom(FontsManager.TitilliumWeb.bold, size: 15))
                        .kerning(4)
                        .foregroundColor(.white)
                    
                    
                }
            }
            .padding()
            .background(Color.white.opacity(0.4))
            
            Spacer()
            
            VStack {
                Text(title)
                    .font(.custom(FontsManager.TitilliumWeb.semibolditalic, size: 25))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.75)
            .background(.ultraThinMaterial)
            
            
            Spacer(minLength: 150)
        }
        .background(
            Image(image)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}


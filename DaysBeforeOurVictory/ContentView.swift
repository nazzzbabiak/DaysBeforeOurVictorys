//
//  ContentView.swift
//  DaysBeforeOurVictory
//
//  Created by Nazar Babyak on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {

        if currentPage > totalPages {
            HomeView()
            
        } else {
            WalkScreen()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

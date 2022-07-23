//
//  HomeView.swift
//  DaysBeforeOurVictory
//
//  Created by Nazar Babyak on 22.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    private var equips: [EquipmentModel] = EquipmentModel.allEquip
//    private var person: [PersoneModel] = PersoneModel.allPersone
    
    var body: some View {
        
        VStack {
            NavigationView {
                List {
                    ForEach(equips, id: \.day) { equip in
                        NavigationLink {
                            DetailView(equip: equip)
                        } label: {
                            HStack {
                                VStack(alignment: .leading, spacing: 10) {
                                    HStack(alignment: .center, spacing: 10) {
                                        
                                        Text("Date")
                                            .font(.custom(FontsManager.TitilliumWeb.semibolditalic, size: 15))
                                            .foregroundColor(.secondary)
                                        
                                        Text("\(equip.date)")
                                            .font(.custom(FontsManager.TitilliumWeb.semibolditalic, size: 20))
                                        
                                    }
                                    
                                    HStack(alignment: .center, spacing: 10) {
                                        
                                        Text("Day")
                                            .font(.custom(FontsManager.TitilliumWeb.semibolditalic, size: 15))
                                            .foregroundColor(.secondary)
                                        
                                        Text("\(equip.day)")
                                            .font(.custom(FontsManager.TitilliumWeb.semibolditalic, size: 20))
                                        
                                    }
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 5)
                    .padding(.vertical, 3)
                }
                .navigationBarTitle("Days of War")
                .navigationBarTitleDisplayMode(.automatic)
                .listStyle(.plain)
                .navigationBarItems(leading:
                                        Image(systemName: "person")
                    .foregroundColor(.black)
                                    , trailing: Image(systemName: "slider.horizontal.3")
                                    
                )
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  DetailView.swift
//  DaysBeforeOurVictory
//
//  Created by Nazar Babyak on 22.07.2022.
//

import SwiftUI

struct DetailView: View {
    
    var equip: EquipmentModel
    //    var person: PersoneModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .frame(width: 55, height: 55)
                        .background(Color.black.opacity(0.35))
                        .clipShape(Circle())
                        .padding()
                    Spacer()
                }
            }
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 10) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        //                        VStack(alignment: .leading, spacing: 10) {
                        //                            Text("\(person.personnel)")
                        //                        }
                        VStack(alignment: .leading, spacing: 10) {
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Date: \(equip.date)")
                                Text("Day: \(equip.day)")
                            }.font(.custom(FontsManager.TitilliumWeb.bold, size: 25))
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Air Craft: \(equip.aircraft)")
                                Text("Helicopter: \(equip.helicopter)")
                                Text("Tank: \(equip.tank)")
                                Text("APC: \(equip.apc)")
                                Text("MRL: \(equip.mrl)")
                                Text("Military Auto:\(equip.militaryAuto ?? 0)")
                                Text("Fuel Tank \(equip.fuelTank ?? 0)")
                                Text("Drone: \(equip.drone)")
                            }
                            .font(.custom(FontsManager.TitilliumWeb.bold, size: 20))
                        }
                        .foregroundColor(.white)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Naval Ship: \(equip.navalShip)")
                            Text("Anti Aircraft Warface: \(equip.antiAircraftWarfare)")
                            Text("Special Equipment: \(equip.specialEquipment ?? 0)")
                            Text("Mobile SRBM System: \(equip.mobileSRBMSystem ?? 0)")
                            Text("Greatest Lossos Direction: \(equip.greatestLossesDirection ?? "...")")
                            Text("Vihicles and Fuel Tank: \(equip.vehiclesAndFuelTanks ?? 0)")
                            Text("Cruise Missiles: \(equip.cruiseMissiles ?? 0)")
                        }.foregroundColor(.white)
                            .font(.custom(FontsManager.TitilliumWeb.bold, size: 20))
                        
                    }
                    .padding(.vertical, 25)
                }.frame(maxWidth: .infinity)
                    .frame(height: .infinity)
                    .padding()
                    .background(Color.black.opacity(0.45))
            }
            
        }.navigationBarHidden(true)
            .background(
                Image("photo4")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(equip: EquipmentModel.sampleEquip)
    }
}

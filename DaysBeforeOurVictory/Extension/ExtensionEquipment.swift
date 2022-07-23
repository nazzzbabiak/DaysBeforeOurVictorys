//
//  ExtensionEquipment.swift
//  DaysBeforeOurVictory
//
//  Created by Nazar Babyak on 22.07.2022.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        //        guard let loadedData = try? decoder.decode(T.self, from: data) else {
        //            fatalError("Could not decode \(file) from bundle.")
        //        }
        do {
            let loadedData = try decoder.decode(T.self, from: data)
            return loadedData
        } catch {
            print(error)
            fatalError(error.localizedDescription)
        }
        
        //        return loadedData
    }
}

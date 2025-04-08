//
//  Extension.swift
//  MyToDoList
//
//  Created by Chairul Amri on 03/04/25.
//

import Foundation

extension Encodable {
    func asDictrionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}

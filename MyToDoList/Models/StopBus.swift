//
//  StopBus.swift
//  MyToDoList
//
//  Created by Chairul Amri on 11/04/25.
//

import Foundation

struct StopBus: Codable {
    let uid: String
    let gateID: String
    let label: String
    let type: String
    let soundArrival: String
    let soundDeparture: String
    let soundOngoing: String
    let latitude: Double
    let longitude: Double
    let stopSequence: Int
    let stopHeadsign: String
    let stopCog: String
    
    enum CodingKeys: String, CodingKey {
            case uid
            case gateID = "gate_id"
            case label
            case type
            case soundArrival = "sound_arrival"
            case soundDeparture = "sound_departure"
            case soundOngoing = "sound_ongoing"
            case latitude
            case longitude
            case stopSequence = "stop_sequence"
            case stopHeadsign = "stop_headsign"
            case stopCog = "stop_cog"
        }
}

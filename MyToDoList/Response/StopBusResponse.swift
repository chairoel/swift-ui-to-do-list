//
//  StopBusResponse.swift
//  MyToDoList
//
//  Created by Chairul Amri on 11/04/25.
//

import Foundation

struct StopBusResponse: Codable {
    let data: [StopBus]
    let meta: String?
    let message: String
}

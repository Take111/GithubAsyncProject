//
//  Repositories.swift
//  
//
//  Created by Takenouchi-Chikato on 2022/05/02.
//

import Foundation

public struct Repositories: Codable {
    
    let totalCount: Int
    public let items: [Repository]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}

public struct Repository: Codable, Hashable {
    
    private let uuid = UUID()
    public let id: Int
    public let name: String
    public let stargersCount: Int
    
    public init(id: Int, name: String, stargersCount: Int) {
        self.id = id
        self.name = name
        self.stargersCount = stargersCount
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case stargersCount = "stargazers_count"
    }
}

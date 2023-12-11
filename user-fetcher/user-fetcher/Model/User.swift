//
//  User.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import Foundation

struct User: Codable, Identifiable {
    private(set) var id: Int;
    private(set) var name: String;
    private(set) var username: String;
    private(set) var email: String;
    private(set) var phone: String;
    private(set) var website: String;
}

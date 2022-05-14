//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC46 on 14/05/22.
//

import Foundation
class Request {
    
    let token = "BQBml81Txj7-wnkCkhlsNJO5u2NWyVJowhfKOu9HUJK9KmU21e2aMOyR_J3HNH8PCdZe4TYpNXPDN63R11lVP8zCpHNKEh2eo-ocvHZ5aKf8LyFpkP2pbgmzYKN-3oWQjJ-t1At6rkX00lYFZRYlm1mAF8FdWJPwgHO4gNjHXVcSZnwUtw"
    let BASE_URL = "https://api.spotify.com/v1/"
    
    // ojo si un type tiene el signo ? es pq puede ser nil
    //en este caso estamos diciendo que nuestra funcion retorne un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
            do {
                var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
                request.httpMethod = "GET"
                request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
                
                let (data, _) = try await URLSession.shared.data(for: request)
                
                return data
            } catch {
                return nil
            }
        }
}

//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC46 on 14/05/22.
//

import Foundation
class Request {
    
    let token = "BQAd2rKFV8f9Mf4R4ZYQromR8whJhTeYop8ocpYp_wrs9_YaQF3LrwCXvlwLMrHbFglVKJBQfuRzSMq1jGOUi-AmvlEqzFf0pyUN0Wk6hhnVtfMCd37yp892aTUSyn_ns1ImdJcnD1PClEwLrKonQhdXZ_MxdjsXKsjjkSdqTM8Q2UmBxw"
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

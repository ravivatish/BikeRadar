//
//  NetworkManager.swift
//  BikeRadar
//
//  Created by Ravinder Vatish on 2/1/19.
//  Copyright © 2019 Ravinder. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AuthenticationServices



//Authenticaion Starva API



//private var authSession: SFAuthenticationSession?
//
//
//let appOAuthUrlStravaScheme = URL(string: "strava://oauth/mobile/authorize?client_id=85649a5ecd18de1ecdfb443813d9242fdb13796a&redirect_uri=localhost&response_type=code&approval_prompt=auto&scope=profile:read_all&state=test")!
//
//let webOAuthUrl = URL(string: "https://www.strava.com/oauth/mobile/authorize?client_id=1234321&redirect_uri= YourApp%3A%2F%2Fwww.yourapp.com%2Fen-US&response_type=code&approval_prompt=auto&scope=activity%3Awrite%2Cread&state=test")!
//
//@IBAction func authenticate() {
//    if UIApplication.shared.canOpenURL(appOAuthUrlstravaScheme) {
//        UIApplication.shared.open(appOAuthUrlstravaScheme, options: [:])
//    } else {
//        authSession = SFAuthenticationSession(url: webOAuthUrl, callbackURLScheme: "YourApp://") { url, error in
//
//        }
//
//        authSession?.start()
//    }
//}

class NetworkManager
{
    
    static let sharedInstance = NetworkManager()
    
    func Authentication()
    {
        var authSession: ASWebAuthenticationSession
        
        let appOAuthUrlStravaScheme = URL(string: "strava://oauth/mobile/authorize?client_id=85649a5ecd18de1ecdfb443813d9242fdb13796a&redirect_uri=localhost&response_type=code&approval_prompt=auto&scope=profile:read_all&state=test")!
        
        let webOAuthUrl = URL(string: "https://www.strava.com/oauth/mobile/authorize?client_id=85649a5ecd18de1ecdfb443813d9242fdb13796a&redirect_uri=localhost&response_type=code&approval_prompt=auto&scope=profile:read_all&state=test")!
        
       
        if UIApplication.shared.canOpenURL(appOAuthUrlStravaScheme) {
            UIApplication.shared.open(appOAuthUrlStravaScheme, options: [:])
            } else {
            authSession = ASWebAuthenticationSession(url: webOAuthUrl, callbackURLScheme: "YourApp://Test") { url, error in
                
                
                // handle auth response
                guard error == nil
                    else {
                    return
                }
                let successURL = "YourApp://Test"
                
//                let oauthToken = NSURLComponents(string: (successURL.absoluteString))?.queryItems?.filter({$0.name == "code"}).first
//
//                // Do what you now that you've got the token, or use the callBack URL
//                print(oauthToken ?? "No OAuth Token")
                print(successURL)
                
                }
            authSession.start()
        }
    }
//    // Response Handler - Unserialized Response
//    func response(
//        queue: DispatchQueue?,
//        completionHandler: @escaping (DefaultDataResponse) -> Void)
//        -> Self
//    {
//
//    }

//    // Response Data Handler - Serialized into Data
//    func responseData(
//        queue: DispatchQueue?,
//        completionHandler: @escaping (DataResponse<Data>) -> Void)
//        -> Self
//    {
//
//    }
//
//    // Response String Handler - Serialized into String
//    func responseString(
//        queue: DispatchQueue?,
//        encoding: String.Encoding?,
//        completionHandler: @escaping (DataResponse<String>) -> Void)
//        -> Self
//    {
//
//    }
//
//    // Response JSON Handler - Serialized into Any
//    func responseJSON(
//        queue: DispatchQueue?,
//        completionHandler: @escaping (DataResponse<Any>) -> Void)
//        -> Self
//    {
//
//    }
//
//    // Response PropertyList (plist) Handler - Serialized into Any
//    func responsePropertyList(
//        queue: DispatchQueue?,
//        completionHandler: @escaping (DataResponse<Any>) -> Void))
//    -> Self
//    {
//
//    }
}

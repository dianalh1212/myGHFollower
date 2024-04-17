//
//  ErrorMessage.swift
//  myGHfollowers
//
//  Created by Ella on 2024/4/15.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "this username created an invalid request."
    case unableToComplete = "unable to complete your request, Please check your Internet"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}

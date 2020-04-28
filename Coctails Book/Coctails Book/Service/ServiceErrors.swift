//
//  ServiceErrors.swift
//  Cocktails Book
//
//  Created by Сергей Павленок on 4/25/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import Foundation

enum ServerError : Error {
    case noDataProvided
    case failedToDecode
    case noResponseFromServer
}

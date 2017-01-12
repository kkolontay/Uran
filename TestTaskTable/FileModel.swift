//
//  FileModel.swift
//  TestTaskTable
//
//  Created by kkolontay on 1/12/17.
//  Copyright © 2017 kkolontay.etachki.com. All rights reserved.
//

import UIKit


enum FileType: String {
    case image
    case pdf
    case movie
    case music
    case folder
}

class FileModel: NSObject {
    
    var fileName: String?
    var modDate: Date?
    var fileType: FileType?
    var isOrange: Bool?
    var isBlue: Bool?
    
    func getDate() -> String {
        
        let calendar = NSCalendar.current
        
        guard (modDate != nil) else {
            return "didn't modified yet"
        }
        
        let month = calendar.component(.month, from: modDate!)
        let day = calendar.component(.day, from: modDate!)
        let year = calendar.component(.year, from: modDate!)
        return "(\(month) \(day), \(year)"
    }
}

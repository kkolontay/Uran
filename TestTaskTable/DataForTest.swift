//
//  DataForTest.swift
//  TestTaskTable
//
//  Created by kkolontay on 1/12/17.
//  Copyright © 2017 kkolontay.etachki.com. All rights reserved.
//

import UIKit

class DataForTest: NSObject {
    private var data: Array<FileModel>?
    static let sharedInstance = DataForTest()
    
    private override init() {
        super.init()
        let item1 = FileModel()
        item1.fileName = "someFile.jpg"
        item1.fileType = .image
        item1.isBlue = true
        item1.isOrange = false
        item1.modDate = Date()
        
        let item2 = FileModel()
        item2.fileName = "someFolder"
        item2.fileType = .folder
        item2.isBlue = false
        item2.isOrange = false
        item2.modDate = nil
        
        let item3 = FileModel()
        item3.fileName = "someFile"
        item3.fileType = .pdf
        item3.isBlue = false
        item3.isOrange = false
        item3.modDate = Date()
        
        let item4 = FileModel()
        item4.fileName = "someFile.mp3"
        item4.fileType = .music
        item4.isBlue = true
        item4.isOrange = true
        item4.modDate = Date()
        
        let item5 = FileModel()
        item5.fileName = "someFile.mp4"
        item5.fileType = .movie
        item5.isBlue = true
        item5.isOrange = false
        item5.modDate = Date()
        
        let item6 = FileModel()
        item6.fileName = "someFile.jpg"
        item6.fileType = .image
        item6.isBlue = true
        item6.isOrange = false
        item6.modDate = Date()
        data = [item1, item2, item3, item4, item5, item6]
        
    }
    
    func getItems() -> Array<FileModel> {
        return data!
    }
    
    func getItem(index: Int) -> FileModel {
        return data![index]
    }

}

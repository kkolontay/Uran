//
//  ItemOfFileTableViewCell.swift
//  TestTaskTable
//
//  Created by kkolontay on 1/12/17.
//  Copyright © 2017 kkolontay.etachki.com. All rights reserved.
//

import UIKit
import Foundation

class ItemOfFileTableViewCell: UITableViewCell {
    @IBOutlet weak var topIndicator: UIView!
    @IBOutlet weak var bottomIndicator: UIView!
    @IBOutlet weak var signImage: UIImageView!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var mainNameLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func setData(item: FileModel) {
        linkButton.isHidden = true
        deleteButton.isHidden = true
        favoriteButton.isHidden = true
       
        if item.isOrange == true {
            topIndicator.backgroundColor = UIColor(colorLiteralRed: 255 / 255.0, green: 100 / 255.0, blue: 28 / 255.0, alpha: 1.0)
        } else {
            topIndicator.backgroundColor = UIColor(colorLiteralRed: 0 / 255.0, green: 50 / 255.0, blue: 200 / 255.0, alpha: 1.0)
        }
       
            bottomIndicator.backgroundColor = UIColor(colorLiteralRed: 0 / 255.0, green: 50 / 255.0, blue: 200 / 255.0, alpha: 1.0)
      
        
        if let type = item.fileType {
            switch type {
            case .pdf:
                signImage.image = UIImage(named: "File")
            case .image:
                signImage.image = UIImage(named: "Image")
            case .movie:
                signImage.image = UIImage(named: "Video")
            case .music:
                signImage.image = UIImage(named: "Audio")
            case .folder:
                signImage.image = UIImage(named: "Folder")
            }
        }
        mainNameLabel.text = item.fileName
        secondNameLabel.text = "modified \(item.getDate())"
    }
    @IBAction func favoriteButtonPressed(_ sender: Any) {
        print("favoriteButtonPressed")
    }
    @IBAction func deleteButtonPressed(_ sender: Any) {
        print("deleteButtonPressed")
    }
    @IBAction func linkButtonPressed(_ sender: Any) {
        print("linkButtoonPressed")
    }
}

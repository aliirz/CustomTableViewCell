//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by Adnan Choudary on 10/6/14.
//  Copyright (c) 2014 Adnan Choudary. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    let imageName = "Heather.png"
    
    
    
    
    //These were mimatched. they should be the same as the refs used in storyboard.
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtAge: UILabel!                     //this was intAge
    @IBOutlet weak var scnImageView: UIImageView!           //this was scnImage
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(txtName: String, intAge: Int, scnImagename: String) {
        self.txtName.text = txtName
        self.txtAge.text = String(intAge)
        self.scnImageView.image = UIImage(named: imageName)
    }

}

//
//  PostCell.swift
//  TableViewFun
//
//  Created by zhowkevin on 15/12/16.
//  Copyright © 2015年 zhowkevin. All rights reserved.
//

import UIKit

struct Post {
    let avatar: String
    let image: String
    let nickname: String
    let username: String
    let content: String
    let created_at: String
}

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

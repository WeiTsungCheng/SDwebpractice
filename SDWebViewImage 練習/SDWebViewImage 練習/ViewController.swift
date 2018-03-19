//
//  ViewController.swift
//  SDWebViewImage 練習
//
//  Created by wei-tsung-cheng on 2018/3/15.
//  Copyright © 2018年 wei-tsung-cheng. All rights reserved.
//

import UIKit
import SDWebImage

class TableViewController: UITableViewController {

    var imageURLs = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageURLs = ["https://www.bluecross.org.uk/sites/default/files/assets/images/20311lpr.jpg", "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180316113418-travel-with-a-dog-3.jpg", "https://www.bluecross.org.uk/sites/default/files/assets/images/20311lpr.jpg", "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180316113418-travel-with-a-dog-3.jpg", "https://www.bluecross.org.uk/sites/default/files/assets/images/20311lpr.jpg", "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180316113418-travel-with-a-dog-3.jpg", "https://www.bluecross.org.uk/sites/default/files/assets/images/20311lpr.jpg", "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180316113418-travel-with-a-dog-3.jpg", "https://www.bluecross.org.uk/sites/default/files/assets/images/20311lpr.jpg", "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180316113418-travel-with-a-dog-3.jpg", "https://www.bluecross.org.uk/sites/default/files/assets/images/20311lpr.jpg", "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180316113418-travel-with-a-dog-3.jpg" ]
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let imageView = cell?.viewWithTag(1) as! UIImageView
        
        imageView.sd_setImage(with: URL(string: imageURLs[indexPath.row]) )
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageURLs.count
    }


}


//
//  ViewController.swift
//  Ractual
//
//  Created by Shivani Agrawal on 2/28/20.
//  Copyright © 2020 Shivani Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var videos:[Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FGames
        
        cell.videoTitle.text = videos[indexPath.row].Title
        cell.videoImage.image = UIImage(named: String(videos[indexPath.row].Key))
        
    }
    
    class Video {
        var Key:String = ""
        var Title:String = ""
    }
    
    extension UIImageView {
        func downloaded(from url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
            let contentMode = mode
            URLSession.shared.dataTask(with: url) { (data, response, error) in guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.localizedString(forStatusCode: 200),
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                else do {return}
                DispatchQueue.main.async {
                    self.image = image
                }<#code#>
            }.resume()
        }
    }
    
}




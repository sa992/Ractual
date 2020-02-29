//
//  FriendsGames.swift
//  Ractual
//
//  Created by Shivani Agrawal on 2/29/20.
//  Copyright © 2020 Shivani Agrawal. All rights reserved.
//

import UIKit

class FriendsGames: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var videos:[Video] = [Video]()
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.videos = VideoModel().getVideos()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        
        let videoTitle = videos[indexPath.row].videoTitle
        
        // customize cell to display video title
        cell.textLabel?.text = videoTitle
        
        // Construct video thumbnail url
        
        // Create an NSURL object
        
        // Create an NSURLRequest Object
        
        // Create an NSURLSession
        
        // Create a datatask and pass in the request
        
        return cell
    }
}

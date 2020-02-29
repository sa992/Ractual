//
//  VideoModel.swift
//  Ractual
//
//  Created by Shivani Agrawal on 2/29/20.
//  Copyright © 2020 Shivani Agrawal. All rights reserved.
//

import UIKit

class VideoModel: NSObject {

    func getVideos() -> [Video] {
        
        // create an empty array of video objects
        var videos = [Video]()
        
        // Create a video Object
        let video1 = Video()
        
        // Assign properties
        video1.videoId = "NlFguTSypBQ"
        video1.videoTitle = "How To Play Poker for Beginners - How To Play Poker"
        video1.videoDescription = "follow video tutorial on texas holdem poker rules."
        
        //Append it into the videos array
        videos.append(video1)
        
        // Create a video Object
        let video2 = Video()
        
        // Assign properties
        video2.videoId = "fKxG8KjH1Qg"
        video2.videoTitle = "How to Play: Chess"
        video2.videoDescription = "teaches you how to play chess."
        
        //Append it into the videos array
        videos.append(video2)
        
        // Create a video Object
        let video3 = Video()
        
        // Assign properties
        video3.videoId = "_CvaIyRE1Tw"
        video3.videoTitle = "How To Play Uno"
        video3.videoDescription = "teaches you how to play Uno"
        
        //Append it into the videos array
        videos.append(video3)
        
        
        
        
        
        //return array
        return videos
    }

}

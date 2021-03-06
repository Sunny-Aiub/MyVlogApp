//
//  VideoClip.swift
//  MyVlog
//
//  Created by Md. Mahadhi Hassan Chowdhury on 1/10/19.
//  Copyright © 2019 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import Foundation

import UIKit

class VideoClip: NSObject {
    let url: URL
    
    init(url: URL) {
        self.url = url
        super.init()
    }
    
    class func allClips() -> [VideoClip] {
        var clips: [VideoClip] = []
        
        //    // Add HLS Stream to the beginning of clip show
        //    if let url = URL(string: "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.m3u8") {
        //      let remoteVideo = VideoClip(url: url)
        //      clips.append(remoteVideo)
        //    }
        
        let names = ["newYorkFlip-clip", "bulletTrain-clip", "monkey-clip", "shark-clip"]
        for name in names {
            let urlPath = Bundle.main.path(forResource: name, ofType: "mp4")!
            let url = URL(fileURLWithPath: urlPath)
            
            let clip = VideoClip(url: url)
            clips.append(clip)
        }
        
        return clips
    }
}

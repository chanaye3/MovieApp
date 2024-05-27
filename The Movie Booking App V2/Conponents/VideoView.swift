//
//  VideoView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    let url = URL(string: "https://jsoncompare.org/LearningContainer/SampleFiles/Video/MP4/sample-mp4-file.mp4")!
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: url))
            .frame(height: 320)
            
                }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}

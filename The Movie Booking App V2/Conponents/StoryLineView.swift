//
//  StoryLineView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct StoryLineView: View {
    var body: some View {
        VStack(alignment:.leading){
            //StoryLine
            Text("Story Line")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .fontWeight(.bold)
            Text(STORY_LINE)
                .font(.system(size: 14))
                .foregroundColor(.white)
                .fontWeight(.medium)
                .padding(.top,10)
        }
    }
}

struct StoryLineView_Previews: PreviewProvider {
    static var previews: some View {
        StoryLineView()
    }
}

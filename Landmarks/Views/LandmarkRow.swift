//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/16.
//

import SwiftUI

struct LandmarkRow: View {
    var body: some View {
        HStack{
            Image("turtlerock")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            Text("Turtle Rock")
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow()
    }
}

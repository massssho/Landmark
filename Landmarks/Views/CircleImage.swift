//
//  CircleImage.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/09.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("takiplaza")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

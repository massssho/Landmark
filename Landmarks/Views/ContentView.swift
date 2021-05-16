//
//  ContentView.swift
//  Landmarks
//
//  Created by 松尾祥汰 on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                Text("Taki Plaza")
                    .font(.title)
                HStack {
                    Text("東京都目黒区大岡山")
                    Spacer()
                    Text("東京工業大学")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("施設情報")
                    .font(.title2)
                HStack {
                    Text("開館時間")
                    Spacer()
                    Text("8:30~21:00 (土日祝9:00~20:00)")
                }
                .font(.subheadline)
                HStack {
                    Text("場所")
                    Spacer()
                    Text("東工大大岡山キャンパス正門前")
                }
                .font(.subheadline)
        }
        .padding()
            
        Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12")
            ContentView()
        }
    }
}

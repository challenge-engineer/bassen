//
//  ContentView.swift
//  omikuji
//
//  Created by 酒井健太郎 on 2020/07/25.
//  Copyright © 2020 酒井 健太郎. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let Batting = ["絶好調","1安打","練習!!!","凡打","ホームラン"]
    @State private var kuji = ""
    var body: some View {
        VStack {
            Button(action: {
                self.kuji = self.Batting.randomElement()!
            }){
                Text("バッティング運勢")
                    .font(.largeTitle)
                    .padding()
                    .background(Capsule()
                        .foregroundColor(.yellow)
                )
            }
            Text(kuji)
                .font(.system(size:50))
                .fontWeight(.bold)
                .foregroundColor(.red)
        }
    }
}

//struct ContentView: View {
//    @State private var showText = false
//    var body: some View {
//        VStack {
//            Button(action: {
//                self.showText.toggle()
//            }) {
//                HStack{
//                    Image(systemName: "lightbulb")
//                    Text("オン/オフ")
//                }
//            }
//            if showText {
//            Text("ステートテスト")
//                .font(.largeTitle)
//            }
//        }
//    }
//}

//struct ContentView: View {
//    @State private var fast = true
//    var body: some View {
//        Button(action: {
//            self.fast.toggle()
//        }){
//            Image(systemName: self.fast ? "hare" : "tortoise")
//            .resizable()
//            .scaledToFit()
//                .frame(width:150, height: 150)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


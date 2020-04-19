//
//  ContentView.swift
//  pickerpratice
//
//  Created by 陳昱豪 on 2020/4/19.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let roles=["阿電","小橘","劉逼","霸天","阿璞"]
    let song=["想見你只想見你\n未來過去\n我只想見你","穿越了千個萬個\n時間線裡\n人海裡相依","用盡了邏輯心機\n推理愛情\n最難解的謎","會不會你也\n和我一樣\n在等待一句","我願意"]
    @State private var pickindex=0
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Color.black.frame(height:350)
                Color.init(red: 138/255, green: 32/255, blue: 34/255)
            }
            Image("background").resizable().scaledToFit().frame(width:300).offset(x:-100,y:-200)
            Text("Picker Pratice").foregroundColor(Color.blue).font(.system(size: 30)).offset(y:-100)
            Picker(selection: $pickindex, label: Text("")) {
                Text(self.roles[0]).tag(0)
                Text(self.roles[1]).tag(1)
                Text(self.roles[2]).tag(2)
                Text(self.roles[    3]).tag(3)
                Text(self.roles[4]).tag(4)

            }.pickerStyle(SegmentedPickerStyle()).background(Color.white).frame(width:300)
            Image("down").resizable().scaledToFit().frame(height:300).offset(x:100,y:200)
            Image("\(roles[pickindex])").resizable().scaledToFit().frame(width:140).offset(x:-70,y:200)
            Text("\(song[pickindex])").offset(x:96,y:200).font(.system(size: 13))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

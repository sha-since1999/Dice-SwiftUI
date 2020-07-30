//
//  ContentView.swift
//  Dice SwiftUI
//
//  Created by Rohit sahu on 26/07/20.
//  Copyright © 2020 sha_since1999. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var diceNo1 = 1
    @State var diceNo2 = 1
    var body: some View {

        ZStack {
            Image("GreenBackground")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
              
            VStack {
                Image("DiceLogo")
                  Spacer()
                HStack {
                    DiceView(DiceNo: diceNo1 )
                    DiceView(DiceNo: diceNo2 )

                }.padding(.horizontal)
                  Spacer()
                  
                Button(action: {
                    self.diceNo1 = Int.random(in: 1...6)
                    self.diceNo2 = Int.random(in: 1...6)
                } ) {
                    Text("ROLL")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    }.background(Color.red)

            }
            
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
    }
}



struct DiceView: View {
    var DiceNo: Int
    var body: some View {
        Image("Dice\(DiceNo)")
        .aspectRatio(0, contentMode: .fit)
        .padding()
    }
}

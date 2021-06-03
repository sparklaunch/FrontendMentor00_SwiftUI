//
//  ContentView.swift
//  FrontendMentor00_SwiftUI
//
//  Created by Jinwook Kim on 2021/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView(.vertical) {
                VStack {
                    Image("Header")
                        .aspectRatio(contentMode: .fit)
                    VStack {
                        HStack {
                            Heading(text: "Get", color: .white)
                            Heading(text: "insights", color: Color("Emphasis"))
                            Heading(text: "that", color: .white)
                        }
                        Heading(text: "help your business grow.", color: .white)
                    }
                    .padding()
                    Text("Discover the benefits of data analytics and make better decisions regarding revenue, customer experience, and overall efficiency.")
                        .foregroundColor(Color("Gray"))
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .lineSpacing(8)
                        .frame(width: 300)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Heading: View {
    let text: String
    let color: Color
    var body: some View {
        Text(self.text)
            .foregroundColor(self.color)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.system(size: 27.0))
    }
}

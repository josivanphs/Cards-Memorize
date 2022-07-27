//
//  ContentView.swift
//  cardsMemorize
//
//  Created by josivan on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text("🦄")

        })
        .padding()
        .foregroundColor(Color.orange)
    }
}

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

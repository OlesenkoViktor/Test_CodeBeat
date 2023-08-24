//
//  ContentView.swift
//  TestCodeBeat
//
//  Created by Viktor on 2023-08-24.
//

import SwiftUI

struct ContentView: View {
    
    let token = "dbfvahjsdga7dyan99124_bnfFAS"
    
    private var i: Int = -1
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(i)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

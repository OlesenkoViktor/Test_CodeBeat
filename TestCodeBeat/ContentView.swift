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
    
    let dateNow = Calendar.current.date(byAdding: .second, value: 1, to: Date.init())
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(i): \(timeFormatter.string(from: dateNow!))")
        }
        .padding()
    }
    
    var timeFormatter: DateFormatter {
        let df = DateFormatter.init()
        df.locale = .enUsPosix
        df.dateFormat = Utils.is24h
            ? "HH:mm"
            : "h:mm a"
        
        return df
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

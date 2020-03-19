//
//  ContentView.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/15.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

var g = false

struct ContentView: View {
    @State var s = false
    
    var body: some View {
        //var l = "定义在body内"
        
        VStack(spacing: 20) {
            Button(action: {
                g.toggle()
            }){
                Text("g = \(g ? "true" : "false")")
            }
           
            Button(action: {
                self.s = !self.s
            }){
                Text("s = \(s ? "true" : "false")")
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

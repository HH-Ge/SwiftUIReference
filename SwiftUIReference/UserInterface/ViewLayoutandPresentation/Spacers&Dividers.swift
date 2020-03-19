//
//  Spacers&Dividers.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/15.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

struct Spacers_Dividers: View {
    var body: some View {
        TabView {
        SpacersView().tabItem { Text("Spacer") }.tag(1)
        DividersView().tabItem { Text("Divider") }.tag(2)
        }
    }
}

struct Spacers_Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Spacers_Dividers()
    }
}


struct SpacersView: View {
    var body: some View {
        NavigationView {
        VStack(spacing: 15) {
            Text("这是第1段")
            Spacer()
            Text("这是第2段")
            Spacer(minLength: 500)
            Text("这是第3段")
        }.navigationBarTitle("使用 Spacer")
        }
    }
}

struct DividersView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Text("这是第1段")
                Divider()
                Text("这是第2段")
                Divider()
                Text("这是第3段")
            }
        .navigationBarTitle("使用 Divider")
        }
    }
}

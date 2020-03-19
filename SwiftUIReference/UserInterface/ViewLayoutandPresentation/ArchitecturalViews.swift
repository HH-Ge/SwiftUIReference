//
//  ArchitecturalViews.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/15.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

struct ArchitecturalViews: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                NavigationLink(destination: SwiftUITabView()) {
                    Text("TabView")
                }
                NavigationLink(destination: SwiftUINavigationView()) {
                    Text("NavigationView")
                }
            }
        }
        
    }
}

struct ArchitecturalViews_Previews: PreviewProvider {
    static var previews: some View {
        ArchitecturalViews()
    }
}

struct SwiftUITabView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Tab 1 中的内容").tabItem { Text("Tab 1") }.tag(1)
                Text("Tab 2 中的内容").tabItem { Text("Tab 2") }.tag(2)
            }.navigationBarTitle("TabView")
        }
    }
}

struct SwiftUINavigationView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Navigation View - A view for presenting a stack of views representing a visible path in a navigation hierarchy.")
            }.navigationBarTitle("NavigationView")
        }
    }
}

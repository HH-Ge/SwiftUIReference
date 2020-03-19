//
//  Shapes.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/20.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            RectangleViews()
        }
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}

struct RectangleViews: View {
    var body: some View {
        VStack {
            Text("Rectangle")
                .font(.largeTitle)
            Divider()
            Rectangle()
                .size(width: 200, height: 100)
                .foregroundColor(.blue)
                .background(Color.green)
                .frame(width: 300, height: 150, alignment: .bottomTrailing)
            Divider()
            Rectangle()
                .stroke()
                .size(width: 200, height: 100)
                .foregroundColor(.red)
                .background(Color.green)
                .offset(x: 40, y: 40)
                .frame(width: 300, height: 150, alignment: .bottomTrailing)
        }
    }
}

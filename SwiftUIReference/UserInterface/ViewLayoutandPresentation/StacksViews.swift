//
//  StacksViews.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/15.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

struct StacksViews: View {
    var body: some View {
  
        TabView {
            VStackView().tabItem { Text("VStack") }.tag(1)
            HStackView().tabItem { Text("VStack") }.tag(2)
            ZStackView().tabItem { Text("ZStack") }.tag(2)
        }
    }
}

struct StacksViews_Previews: PreviewProvider {
    static var previews: some View {
        StacksViews()
    }
}

struct VStackView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 15){
                HStack{
                    Text("VStack .leading 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 200, height:100)
                    .foregroundColor(.red)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 200, height:100)
                    .foregroundColor(.yellow)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 200, height:100)
                    .foregroundColor(.green)
            }
            VStack(alignment: .trailing, spacing: 15){
                HStack{
                    Text("VStack .trailing 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 200, height:100)
                    .foregroundColor(.red)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 200, height:100)
                    .foregroundColor(.yellow)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 200, height:100)
                    .foregroundColor(.green)
            }
        }
    }
}

struct HStackView: View {
    var body: some View {
        VStack {
            VStack{
                HStack{
                    Text("HStack 默认 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                HStack(spacing: 15){
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:100)
                        .foregroundColor(.red)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:80)
                        .foregroundColor(.yellow)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:60)
                        .foregroundColor(.green)
                }
            }
            VStack{
                HStack{
                    Text("HStack bottom 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                HStack(alignment: .bottom, spacing: 15){
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:100)
                        .foregroundColor(.red)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:80)
                        .foregroundColor(.yellow)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:60)
                        .foregroundColor(.green)
                }
            }
             VStack{
                HStack{
                    Text("HStack center 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                HStack(alignment: .center, spacing: 15){
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:100)
                        .foregroundColor(.red)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:80)
                        .foregroundColor(.yellow)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:60)
                        .foregroundColor(.green)
                }
            }
            VStack{
                HStack{
                    Text("HStack top 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                HStack(alignment: .top, spacing: 15){
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:100)
                        .foregroundColor(.red)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:80)
                        .foregroundColor(.yellow)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height:60)
                        .foregroundColor(.green)
                }
            }
            VStack{
                HStack{
                    Text("HStack lastTextBaseline 对齐").font(.title).bold()
                }.frame(maxWidth: .infinity)
                HStack(alignment: .lastTextBaseline, spacing: 15){
                    Text("ABC")
                        .frame(width: 100, height:100)
                        .font(.title)
                        .background(Color.red)
                        .foregroundColor(.white)
                    Text("ABC")
                        .font(.caption)
                        .frame(width: 100, height:80)
                        .background(Color.yellow)
                        .foregroundColor(.white)
                    Text("ABC")
                        .font(.largeTitle)
                        .frame(width: 100, height:60)
                        .background(Color.green)
                        .foregroundColor(.white)
                }
            }

        }
    }
}

struct ZStackView: View {
    var body: some View {
        VStack {
            Text("ZStack")
                .font(.largeTitle)
            Spacer().frame(height: 200)
            ZStack{
                Spacer()
                Text("Bottom layer")
                    .font(.title)
                    .frame(width: 200, height: 100)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .offset(x: -50, y: -70)
                Text("Middle layer")
                    .font(.title)
                    .frame(width: 200, height: 100)
                    .background(Color.blue)
                    .foregroundColor(.white)
                .offset(x: 100, y: -50)
                Text("Top layer")
                    .font(.title)
                    .frame(width: 200, height: 100)
                    .background(Color.red)
                    .foregroundColor(.white)
                
            }
        }
        .frame(maxWidth: .infinity)
    }
}

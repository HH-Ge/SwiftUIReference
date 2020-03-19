//
//  SwiftUIText.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/15.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

//MARK: Text
/**
 处理文本（Text）的视图和控件包括：Text，TextField，SecureField，Font。这里附加了 FontWeight。
 */


struct SwiftUIText: View {
    
    var body: some View {
        TabView {
            TextView().tabItem { Text("Text") }.tag(1)
            TextFieldView().tabItem { Text("TextField") }.tag(2)
            SecureFieldView().tabItem { Text("SecureField") }.tag(3)
            FontView().tabItem { Text("Font") }.tag(4)
            FontWeightView().tabItem { Text("FontWeight") }.tag(5)
        }
    }
}

struct SwiftUIText_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIText()
    }
}

struct TextView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Hamlet 标题")
                    .font(.title)
                Text("by William Shakespeare 斜体，字号12，serif 字体")
                    .font(.system(size: 12, weight: .light, design: .serif))
                    .italic()
                Text("固定宽度 自适应行数  To be, or not to be, that is the question: ")
                    .frame(width: 150)
                Text("限制在一行，Brevity is the soul of wit.")
                    .frame(width: 150)
                    .lineLimit(1)
                Text("pencil")
                // Searches the default table in the main bundle.
                Text(verbatim: "嗯。。好像是说本地化 pencil")
                // Displays the string "pencil" in any locale.
                // Don't localize a string variable...
                // Text(writingImplement)
                // ...unless you explicitly convert it to a localized string key.
                // Text(LocalizedStringKey(writingImplement))
                Spacer()
            }
        .navigationBarTitle(Text("Text"))
        }
    }
}

struct TextFieldView: View {
    /**
     init(LocalizedStringKey, text: Binding<String>, onEditingChanged: (Bool) -> Void, onCommit: () -> Void)
     Available when Label is Text.
     
     init<S>(S, text: Binding<String>, onEditingChanged: (Bool) -> Void, onCommit: () -> Void)
     Available when Label is Text.
     
     init<T>(LocalizedStringKey, value: Binding<T>, formatter: Formatter, onEditingChanged: (Bool) -> Void, onCommit: () -> Void)
     Available when Label is Text.
     
     init<S, T>(S, value: Binding<T>, formatter: Formatter, onEditingChanged: (Bool) -> Void, onCommit: () -> Void)
     Available when Label is Text.
     */
    @State private var inputString: String = ""
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10)  {
                HStack {
                    Text("输入：")
                    TextField("输入占位符", text: $inputString)
                        .frame(height:50)
                        .padding(.horizontal, 5)
                        .background(Color(.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        // .cornerRadius(5)
                        
                }
                .frame(height: 60)
                .padding(.horizontal, 10)
                .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                HStack {
                    Text(self.inputString)
                        .frame(maxWidth:.infinity, minHeight: 50, alignment: .leading)
                        .padding(.horizontal,5)
                        .border(Color.gray, width: 1)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        .navigationBarTitle(Text("TextField"))
        }
    }
}

struct SecureFieldView: View {
    @State private var secureString: String = ""
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                SecureField("输入密码",text: $secureString)
                    .frame(maxWidth:.infinity)
                    .padding()
                    .border(Color.gray, width: 1 )
                Spacer()
            }
            .padding()
            .navigationBarTitle(Text("SecureField"))
        }
    }
}

struct FontView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                HStack {
                    Text("body")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    Text("text").font(.body)
                    Spacer()
                }
                HStack {
                    Text("callout")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    Text("text").font(.callout)
                    Spacer()
                }
                HStack {
                    Text("caption")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").font(.caption)
                    Spacer()
                }
                HStack {
                    Text("footnote")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").font(.footnote)
                    Spacer()
                }
                HStack {
                    Text("headline")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").font(.headline)
                    Spacer()
                }
                HStack {
                    Text("largeTitle")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").font(.largeTitle)
                    Spacer()
                }
                HStack {
                    Text("subheadline")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").font(.subheadline)
                    Spacer()
                }
                HStack {
                    Text("title")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").font(.title)
                    Spacer()
                }
                Spacer()
            }
        .navigationBarTitle("Font")
        }
    }
}

struct FontWeightView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                HStack {
                    Text("Ultra Light")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    Text("text").fontWeight(.ultraLight)
                    Spacer()
                }
                HStack {
                    Text("thin")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    Text("text").fontWeight(.thin)
                    Spacer()
                }
                HStack {
                    Text("light")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.light)
                    Spacer()
                }
                HStack {
                    Text("regular")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.regular)
                    Spacer()
                }
                HStack {
                    Text("medium")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.medium)
                    Spacer()
                }
                HStack {
                    Text("semibold")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.semibold)
                    Spacer()
                }
                HStack {
                    Text("bold")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.bold)
                    Spacer()
                }
                HStack {
                    Text("heavy")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.heavy)
                    Spacer()
                }
                HStack {
                    Text("black")
                        .frame(width: 100, alignment: .leading)
                        .padding()
                    
                    Text("text").fontWeight(.black)
                    Spacer()
                }
                Spacer()
            }
            .navigationBarTitle("Font Weight")
        }
    }
}

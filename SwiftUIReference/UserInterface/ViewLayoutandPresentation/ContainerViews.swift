//
//  ContainerViews.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/15.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

//MARK: Container Views
/*：
 ### Container Views
 包括：Form，Group，Section，GroupBox（iOS不支持）
1. 控件之间有分割线
2. 超出容器时都可以滚动。
*/

struct ContainerViews: View {
    var body: some View {
       TabView {
            FormOriginal().tabItem { Text("原始表单") }.tag(1)
            FormWithGroup().tabItem { Text("使用Group") }.tag(2)
            FormWithSection().tabItem { Text("使用Section") }.tag(3)
        }
    }
}

struct ContainerViews_Previews: PreviewProvider {
    static var previews: some View {
        ContainerViews()
    }
}

//MARK: 使用 Group
struct FormWithGroup: View {
    var body: some View {
        NavigationView {
            Form {
                // 使用 Group 可以解决 10 个子视图的限制
                // Group 之间没有明显区分
                Group {
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                }
                Group {
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                }
                Group { // 每个 Group 中还是有10个数量限制
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                }
                Group {
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                    Text("Form with Group")
                }
            }.navigationBarTitle("表单中使用 Group")
        }
    }
}

//MARK: 使用 Section
struct FormWithSection: View {
    var body: some View {
        NavigationView {
            Form {
                // 使用 Section 可以分块显示，也能解决个数限制
                // Section 之间有明显分隔
                Section(header: Text("Header and Footer").font(.headline), footer: Text("Footer").font(.subheadline)){ // 每个 Section 中还是有10个数量限制
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                }
                Section(header: Text("Header Only").font(.headline)){
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                }
                Section(footer: Text("Footer only").font(.subheadline)){
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                }
                Section{
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                    Text("Form with Section")
                }
            }.navigationBarTitle("表单中使用 Section")
        }
    }
}

//MARK: 原始表单
struct FormOriginal: View {
    var body: some View {
        NavigationView {
            Form{
                // 默认的只能最多有10个子视图
                Text("Form Original - 0")
                Text("Form Original - 1")
                Text("Form Original - 2")
                Text("Form Original - 3")
                Text("Form Original - 4")
                Text("Form Original - 5")
                Text("Form Original - 6")
                Text("Form Original - 7")
                Text("Form Original - 8")
                Text("Form Original - 9")
            }.navigationBarTitle("表单中的控件数量限制")
        }
    }
}

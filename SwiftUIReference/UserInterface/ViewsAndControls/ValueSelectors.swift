//
//  ValueSelectors.swift
//  SwiftUIReference
//
//  Created by Howard Ge on 2020/3/16.
//  Copyright © 2020 Howard. All rights reserved.
//

import SwiftUI

struct ValueSelectors: View {
    
    
    @State private var wakeUp = Date()
    
    var body: some View {
        TabView {
            StepperView().tabItem { Text("Stepper") }.tag(1)
            DataPickerView().tabItem { Text("DataPicker") }.tag(2)
        }
    }
}


struct ValueSelectors_Previews: PreviewProvider {
    static var previews: some View {
        ValueSelectors()
    }
}

struct StepperView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        VStack(spacing: 30) {
            Spacer().frame(height: 100)
            VStack(spacing: 15) {
                Text("绑定 sleepAmount")
                Text("数值范围是 4 到 12")
                Text("步进值是 0.25")
            }.font(.title)
            Divider()
            /**
             onIncrement: (() -> Void) ， onDecrement: (() -> Void)， onEditingChanged: @escaping (Bool) -> Void = { _ in })             */
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25){
                Text("\(sleepAmount, specifier: "%.2f") hours")
            }
            .padding()
            .font(.headline)
            Divider()
            Spacer()
        }
    }
}

struct DataPickerView: View {

    
    @State private var wakeUp = Date()

    var body: some View {
        VStack {
            // DataPickerView()
            VStack(spacing: 5) {
                VStack{
                    Text("显示标签, 选择时分")
                    DatePicker("请选择时间：", selection: $wakeUp, displayedComponents: .hourAndMinute)
                }.font(.headline)
                Divider()
                VStack{
                    Text("隐藏标签")
                    DatePicker("请选择日期：", selection: $wakeUp).labelsHidden()
                }.font(.headline)
                Divider()
                VStack{
                    Text("放入表单 限制为始于现在")
                    Form {
                        DatePicker("请选择日期和时间：", selection: $wakeUp, in: Date()...)
                    }
                }.font(.headline)
            }
        }
    }
}

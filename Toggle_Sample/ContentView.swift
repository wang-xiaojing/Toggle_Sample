//
//  ContentView.swift
//  Toggle_Sample
//
//  Created by X.Wang on 6/10/2.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn1 = false
    @State private var isOn2 = false

    var body: some View {
        VStack {
            Divider()
            Spacer()
            Divider()
            Toggle("スイッチ", isOn: $isOn1)
                .padding()
            Divider()
            Spacer()
            Divider()
            Toggle(isOn: $isOn2) {
                Text("カスタムスイッチ")
                    .font(.headline)
                    .foregroundColor(isOn2 ? .green : .red)
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            .padding()
            Divider()
            Spacer()
            Divider()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

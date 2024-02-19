//
//  ContentView.swift
//  CounterExample_SwiftUI
//
//  Created by Puglisi Francesco on 19.02.24.
//

import SwiftUI
import ReSwift

struct ContentView: View {
    @State var model = CounterModel()
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "clock")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Divider()
            Text("\(model.counter)")
                .padding()
            Divider()
            HStack {
                Spacer()
                Button("+1", action: {
                    store.dispatch(CounterActionIncrease())
                })
                Spacer()
                Button("-1", action: {
                    store.dispatch(CounterActionDecrease())
                })
                Spacer()
            }
            Spacer()
        }
        .padding()
        .onAppear() {
            store.subscribe(model)
        }
    }
}

#Preview {
    ContentView()
}

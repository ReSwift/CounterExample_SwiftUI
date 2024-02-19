//
//  CounterModel.swift
//  CounterExample_SwiftUI
//
//  Created by Puglisi Francesco on 19.02.24.
//

import Foundation
import SwiftUI
import ReSwift

@Observable
final class CounterModel: StoreSubscriber {
    var counter: Int = 0
    func newState(state: AppState) {
        counter = state.counter
    }
}


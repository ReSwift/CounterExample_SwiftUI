//
//  CounterStore.swift
//  CounterExample_SwiftUI
//
//  Created by Puglisi Francesco on 19.02.24.
//

import Foundation
import ReSwift

let store = Store<AppState>(reducer: AppReducer, state: AppState())

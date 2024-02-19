//
//  CounterReducer.swift
//  Meet
//
//  Created by Benjamin Encz on 12/1/15.
//  Copyright © 2015 DigiTales. All rights reserved.
//

import Foundation
import ReSwift

func AppReducer(action: Action, state: AppState?) -> AppState {
    AppState(
        counter: counterReducer(action: action, counter: state?.counter)
    )
}

func counterReducer(action: Action, counter: Int?) -> Int {
    var counter = counter ?? 0

    switch action {
    case _ as CounterActionIncrease:
        counter += 1
    case _ as CounterActionDecrease:
        counter -= 1
    default:
        break
    }

    return counter
}

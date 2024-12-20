//
//  NarrativeDataPoint.swift
//  Taste
//
//  Created by Mitch Vitrano on 12/18/24.
//

import Foundation
import SwiftUI

struct NarrativeDataPoint : Identifiable, Hashable{
    let id: Int
    let xValue: Float
    let xCode: String
    let xText: String
    let xPercentile: Float
    let xDefinition: String
    
    let yValue: Float
    let yCode: String
    let yText: String
    let yPercentile: Float
    let yDefinition: String
    
    let color: Color
}

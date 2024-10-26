//
//  ChartView.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/19/24.
//

import SwiftUI
import Charts

struct ChartView: View {
    let item: NarrativeInsight
    
    var body: some View {
        
        Chart {
            ForEach(item.data) { dataPoints in
            
                PointMark(
                    x: .value(dataPoints.xCode, dataPoints.xValue),
                    y: .value(dataPoints.yCode, dataPoints.yValue)
                ).foregroundStyle(.blue)
                    
            }
            
            PointMark(
                x: .value(item.dataPoint.xCode, item.dataPoint.xValue),
                y: .value(item.dataPoint.yCode, item.dataPoint.yValue)
            ).annotation(position: .overlay) {
                Text(String(item.dataPoint.xText + " v. " + item.dataPoint.yText))
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
        }
        .chartXAxisLabel(position: .bottom, alignment: .center) {
            Text("QB Blitz EPA")
        }
        .chartYAxisLabel(position: .leading, alignment: .center) {
            Text("Defense Blitz Rate")
        }
        
        Text(item.gameTitle)
    }
}

//
//  TrafficLightCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Tatiana Lazarenko on 4/16/24.
//

import SwiftUI

struct TrafficLightCircle: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    TrafficLightCircle(color: .cyan)
}

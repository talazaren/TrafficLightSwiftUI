//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Tatiana Lazarenko on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var buttonText = "START"
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        VStack {
            TrafficLightCircle(color: .red.opacity(redLight))
            TrafficLightCircle(color: .yellow.opacity(yellowLight))
            TrafficLightCircle(color: .green.opacity(greenLight))
            
            Spacer()
            
            Button(action: buttonAction) {
                Text(buttonText)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(width: 180, height: 60)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 4)
                    )
            }
            .padding(.bottom, 20)
        }
        .padding()
    }
    
    private func buttonAction() {
        buttonText = "NEXT"
        
        switch currentLight {
        case .red:
            redLight = 1.0
            yellowLight = 0.3
            greenLight = 0.3
            currentLight = .yellow
        case .yellow:
            redLight = 0.3
            yellowLight = 1
            greenLight = 0.3
            currentLight = .green
        case .green:
            redLight = 0.3
            yellowLight = 0.3
            greenLight = 1
            currentLight = .red
        }
    }
    
    private enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}

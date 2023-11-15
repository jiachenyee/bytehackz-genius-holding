//
//  ContentView.swift
//  bytehackz-genius-holding
//
//  Created by Jia Chen Yee on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation = Angle.degrees(0)
    @State private var subtitleRotation = Angle.degrees(-10)
    @State private var hueRotation = Angle.degrees(0)
    @State private var yOffset = 0.0
    @State private var scale = 1.0
    
    var body: some View {
        ZStack {
            Image(.bytehackzBackground)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .all)
                .hueRotation(hueRotation)
            VStack {
                Spacer()
                Text("Welcome to")
                    .font(.system(size: 48))
                    .offset(y: yOffset)
                Text("Genius Bar")
                    .font(.system(size: 128))
                    .fontWeight(.bold)
                    .fontWidth(.expanded)
                    .rotationEffect(rotation)
                    .foregroundStyle(.red)
                    .shadow(color: .red, radius: 20, x: 0, y: 0)
                    .hueRotation(hueRotation + .degrees(30))
                    .saturation(1)
                Spacer()
                Spacer()
                HStack(spacing: 0) {
                    Text("We're just ")
                    Text("marginally")
                        .bold()
                        .scaleEffect(scale)
                    Text(" better at Googling than you.")
                }
                .font(.title)
                .rotationEffect(subtitleRotation)
                
                Spacer()
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                rotation = .degrees(360)
            }
            
            withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                hueRotation = .degrees(360)
            }
            
            withAnimation(.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                yOffset = -100
            }
            
            withAnimation(.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                scale = 1.5
            }
            
            withAnimation(.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                subtitleRotation = .degrees(10)
            }
        }
    }
}

#Preview {
    ContentView()
}

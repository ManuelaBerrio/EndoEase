//
//  ContentView.swift
//  EndoEase
//
//  Created by Jairo ivan Berrio munoz on 27/06/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination:TalkItOutView()) {
                    Text("Talk it Out")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: RecordSymptomsView()) {
                    Text("Record My Symptoms")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: LearnMoreView()) {
                    Text("Learn More")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("EndoEase")
        }
    }
}

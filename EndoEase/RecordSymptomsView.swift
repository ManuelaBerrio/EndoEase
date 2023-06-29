//
//  RecordSymptomsView.swift
//  EndoEase
//
//  Created by Saranya Mandapaty on 6/28/23.
//
import SwiftUI
import Foundation
struct RecordSymptomsView: View {
    @State private var goodSelected = false
    @State private var okSelected = false
    @State private var mildSelected = false
    @State private var badSelected = false
    @State private var excruciatingSelected = false
    @State private var good = ""
    @State private var ok = ""
    @State private var mild = ""
    @State private var bad = ""
    @State private var excruciating = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                ZStack {
                    Image("Green")
                        .resizable()
                        .ignoresSafeArea()
                    VStack(spacing: 20) {
                        Spacer()
                        Spacer()
                        Text("Cramp Level")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hue: 0.14, saturation: 0.392, brightness: 0.969))
                            .padding([.leading, .bottom, .trailing], 10.0)
                        
                        HStack {
                            Text(good)
                            Button("1. Good") {
                                goodSelected.toggle()
                                good = goodSelected ? "😃" : ""
                            }
                            .font(.title2)
                            .padding(.all, 5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.261, saturation: 0.686, brightness: 0.789))
                        
                        HStack {
                            Text(ok)
                            Button("2. Ok") {
                                okSelected.toggle()
                                ok = okSelected ? "😐" : ""
                            }
                            .font(.title2)
                            .padding(.all, 5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.198, saturation: 0.955, brightness: 0.778))
                        
                        HStack {
                            Text(mild)
                            Button("3. Mild") {
                                mildSelected.toggle()
                                mild = mildSelected ? "🙁" : ""
                            }
                            .font(.title2)
                            .padding(.all, 5.0)
                        }
                        .padding(.all, 5.0)
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.148, saturation: 0.962, brightness: 0.883))
                        
                        HStack {
                            Text(bad)
                            Button("4. Bad") {
                                badSelected.toggle()
                                bad = badSelected ? "😣" : ""
                            }
                            .font(.title2)
                            .padding(.all, 5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.089, saturation: 0.928, brightness: 0.915))
                        
                        HStack {
                            Text(excruciating)
                            Button("5. Excruciating") {
                                excruciatingSelected.toggle()
                                excruciating = excruciatingSelected ? "😭" : ""
                            }
                            .font(.title2)
                            .padding([.top, .leading, .trailing], 5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.03, saturation: 0.91, brightness: 0.985))
                        
                        Spacer()
                        
                        NavigationLink(destination: SelectMySymptomsView()) {
                            Text("Next")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color.yellow)
                                .cornerRadius(10.0)
                                .padding(20.0)
                        }
                    }
                }
            }
        }
    }
}
struct RecordSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        

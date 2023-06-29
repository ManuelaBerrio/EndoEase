//
//  RecordSymptomsView.swift
//  EndoEase
//
//  Created by Saranya Mandapaty on 6/28/23.
//
import SwiftUI
import Foundation
struct RecordSymptomsView: View {
    @State private var good = ""
    @State private var ok = ""
    @State private var mild = ""
    @State private var bad = ""
    @State private var excruciating = ""
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("Home")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("Cramp Level")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.14, saturation: 0.392, brightness: 0.969))
                        .padding([.leading, .bottom, .trailing], 10.0)
                    HStack{
                        Text(good)
                        Button("1. Good") {
                            good = "😃"
                        }
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .padding(.all, 5.0)
                        
                    
                    }
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.261, saturation: 0.686, brightness: 0.789))
                    
                   
                    
                    HStack{
                        Text(ok)
                        Button("2. Ok") {
                            ok = "😐"
                        }
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .padding(.all, 5.0)
            
                    }
                    
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.198, saturation: 0.955, brightness: 0.778))
            
                    
                    HStack{
                        Text(mild)
                        Button("3. Mild") {
                            mild = "🙁"
                    }
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.148, saturation: 0.962, brightness: 0.883))
                    
                    HStack{
                        Text(bad)
                        Button("4. Bad") {
                            bad = "😣"
                    }
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .padding(.all, 5.0)
                    }
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.089, saturation: 0.928, brightness: 0.915))
                    
                    HStack{
                        Text(excruciating)
                        Button("5. Excruciating") {
                            excruciating = "😭"
                    }
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .padding([.top, .leading, .trailing], 5.0)
                    }
                    .font(.largeTitle)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.03, saturation: 0.91, brightness: 0.985))
               
                
                
                }
            
            }
        }
    }
}
struct RecordSymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        RecordSymptomsView()
    }
}

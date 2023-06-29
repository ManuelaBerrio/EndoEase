//
//  SelectMySymptomsView.swift
//  EndoEase
//
//  Created by Saranya Mandapaty on 6/29/23.
//

import Foundation
import SwiftUI
struct SelectMySymptomsView: View {
    @State private var VomitingSelected = false
    @State private var FaintingspellsSelected = false
    @State private var DizzinessSelected = false
    @State private var HeadachesSelected = false
    @State private var MigrainesSelected = false
    @State private var BodyChillsSelected = false
    @State private var HeavyBleedingSelected = false
    @State private var Vomiting = ""
    @State private var Faintingspells = ""
    @State private var Dizziness = ""
    @State private var Headaches = ""
    @State private var Migraines = ""
    @State private var BodyChills = ""
    @State private var HeavyBleeding = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                ZStack{
                    Image("Daisy")
                        .resizable()
                        .ignoresSafeArea()
                    
                    VStack(spacing: 20){
                        
                        
                        
                        
                        
                        
                        
                        
                        HStack{
                            Text(Vomiting)
                            Button("Vomiting"){
                                VomitingSelected.toggle()
                                
                            }
                            .font(.title2)
                            .padding(.all, 5.0)
                            
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        
                        HStack{
                            Text(Faintingspells)
                            Button("Fainting spells"){
                                FaintingspellsSelected.toggle()
                            }
                            .font(.title2)
                            .padding(.all,5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        
                        HStack{
                            Text(Dizziness)
                            Button("Dizziness"){
                                DizzinessSelected.toggle()
                            }
                            .font(.title2)
                            .padding(.all,5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        
                        HStack{
                            Text(Headaches)
                            Button("Headaches"){
                                HeadachesSelected.toggle()
                            }
                            .font(.title2)
                            .padding(.all,5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        
                        HStack{
                            Text(Migraines)
                            Button("Migraines"){
                                MigrainesSelected.toggle()
                            }
                            .font(.title2)
                            .padding(.all,5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        
                        HStack{
                            Text(BodyChills)
                            Button("Body chills"){
                                BodyChillsSelected.toggle()
                            }
                            .font(.title2)
                            .padding(.all,5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        
                        HStack{
                            Text(HeavyBleeding)
                            Button("Heavybleeding"){
                                HeavyBleedingSelected.toggle()
                            }
                            .font(.title2)
                            .padding([.top,.leading, .trailing], 5.0)
                        }
                        .font(.largeTitle)
                        .buttonStyle(.borderedProminent)
                        Spacer()
                        
                        
                        
                    }
                }
            }
        }
    }
    
    
    
    
    
    struct SelectMySymptons_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

//
//  SelectMySymptomsView.swift
//  EndoEase
//
//  Created by Saranya Mandapaty on 6/29/23.
//

import Foundation
import SwiftUI
struct SelectMySymptomsView: View {
    let symptomToEmoji = [
        "Vomiting": "🤢",
        "Fainting spells": "🥴",
        "Dizziness": "🥺",
        "Headaches": "🤕",
        "Migraines": "😖",
        "Body chills": "🥶",
        "Heavy bleeding": "🩸"
    ]
    
    @State private var vomitingSelected = false
    @State private var faintingSpellsSelected = false
    @State private var dizzinessSelected = false
    @State private var headachesSelected = false
    @State private var migrainesSelected = false
    @State private var bodyChillsSelected = false
    @State private var heavyBleedingSelected = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                
                ZStack {
                    Image("Daisy")
                        .resizable()
                        .ignoresSafeArea()
                    
                    VStack(spacing: 20) {
                        Spacer()
                        
                        VStack(spacing: 20) {
                            Button(action: {
                                vomitingSelected.toggle()
                            }) {
                                Text("Vomiting")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(vomitingSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                            
                            Button(action: {
                                faintingSpellsSelected.toggle()
                            }) {
                                Text("Fainting Spells")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(faintingSpellsSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                            
                            Button(action: {
                                dizzinessSelected.toggle()
                            }) {
                                Text("Dizziness")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(dizzinessSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                            
                            Button(action: {
                                headachesSelected.toggle()
                            }) {
                                Text("Headaches")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(headachesSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                            
                            Button(action: {
                                migrainesSelected.toggle()
                            }) {
                                Text("Migraines")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(migrainesSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                            
                            Button(action: {
                                bodyChillsSelected.toggle()
                            }) {
                                Text("Body Chills")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(bodyChillsSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                            
                            Button(action: {
                                heavyBleedingSelected.toggle()
                            }) {
                                Text("Heavy Bleeding")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding([.top, .bottom], 10)
                                    .padding([.leading, .trailing], 15)
                            }
                            .background(heavyBleedingSelected ? Color.yellow : Color.gray)
                            .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: LearnMoreView()) {
                            Text("Next")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 30)
                                .background( Color.yellow)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }

    }
struct SelectMySymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        


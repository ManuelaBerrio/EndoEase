//
//  TalkItOutView.swift
//  EndoEase
//
//  Created by Saranya Mandapaty on 6/28/23.
//
import SwiftUI
import Foundation

struct TalkItOutView: View {
    @State private var text = ""
    @State private var title = ""
    @State private var isSaved = false
    
    var body: some View {
           
                ZStack {
                        Image("Diary")
                            .resizable()
                            .ignoresSafeArea()
                    
                    VStack{
                      HStack {
                            Text("Dear Diary")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding(.leading, 20.0)
                            Spacer()
                        }
                        .padding(.top, 20.0)
                        
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(20.0)
                            padding(.horizontal,20.0)
                        
                        
                        VStack {
                            TextField("Enter a title for your entry", text: $title)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20.0)
                                .padding(.vertical, 10.0)
                            
                            TextEditor(text: $text)
                                .foregroundColor(.black)
                                .padding(.horizontal, 20.0)
                                .padding(.vertical, 10.0)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.top, 20.0)
                    .padding(.horizontal, 20.0)
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .padding(.horizontal, 20.0)
                    .padding(.bottom, 20.0)
                    
                    Button(action: {
                        saveText()
                        isSaved = true
                    }, label: {
                        Text("Save")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .background(Color.yellow)
                            .cornerRadius(10.0)
                            .padding(20.0)
                    })
                    .padding(.horizontal, 20.0)
                    
                    NavigationLink(
                        destination: ContentView(),
                        isActive: $isSaved,
                        label: {
                            EmptyView()
                        })
                }
                .navigationBarHidden(true)
            }
        }
        
        func saveText() {
            
        }
    }
    
    
    struct TalkItOut_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    


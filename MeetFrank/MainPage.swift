//
//  MainPage.swift
//  MeetFrank
//
//  Created by Ramill Ibragimov on 05.06.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct MainPage: View {
    @State private var show: Bool = true
    @State private var selectedButton = 3
    
    var body: some View {
        VStack {
            if !self.show {
                Spacer()
            }
            HStack {
                Button(action: {
                    self.selectedButton = 1
                }) {
                    ZStack {
                        if self.selectedButton == 1 {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        } else {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        Image(systemName: "captions.bubble")
                            .offset(y: 3)
                            .font(.title)
                            .foregroundColor(self.selectedButton == 1 ? .white : .gray)
                    }.scaleEffect(self.selectedButton == 1 ? 0.8 : 1)
                }.padding()
                Button(action: {
                    self.selectedButton = 2
                }) {
                    ZStack {
                        if self.selectedButton == 2 {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        } else {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                            .offset(y: 3)
                            .font(.title)
                            .foregroundColor(self.selectedButton == 2 ? .white : .gray)
                    }.scaleEffect(self.selectedButton == 2 ? 0.8 : 1)
                }.padding()
                Button(action: {
                    self.show = false
                    self.selectedButton = 3
                }) {
                    ZStack {
                        if self.selectedButton == 3 {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: self.show ? UIScreen.main.bounds.width + 50 : 50, height: self.show ? UIScreen.main.bounds.height + 50 : 50)
                                .cornerRadius(self.show ? 0 : 25)
                        } else {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        HStack(spacing: 0) {
                            Text("F")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(self.selectedButton == 3 ? .white : .black)
                            Text(".")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.blue)
                        }.offset(x: 5)
                    }.scaleEffect(self.selectedButton == 3 ? 1 : 1.2)
                }.padding()
                Button(action: {
                    self.selectedButton = 4
                }) {
                    ZStack {
                        if self.selectedButton == 4 {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        } else {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        Image(systemName: "person.fill")
                            .font(.title)
                            .foregroundColor(self.selectedButton == 4 ? .white : .gray)
                    }.scaleEffect(self.selectedButton == 4 ? 0.8 : 1)
                }.padding()
                Button(action: {
                    self.selectedButton = 5
                }) {
                    ZStack {
                        if self.selectedButton == 5 {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        } else {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        Image(systemName: "ellipses.bubble")
                            .offset(y: 3)
                            .font(.title)
                            .foregroundColor(self.selectedButton == 5 ? .white : .gray)
                    }.scaleEffect(self.selectedButton == 5 ? 0.8 : 1)
                }.padding()
            }
        }.animation(.easeInOut)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

//
//  ContentView.swift
//  desafioExtraNovaIorque
//
//  Created by Vitor Gomes on 01/03/23.
//

// TODO: A lot here can be refactored, but for it is working as expected, tested on iPhone 14 Pro.

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                //In case you do not want blue color background on safeArea, just comment .ignoresSafeArea()
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                
                // MARK: city and temperature.
                Text("Araraquara, SP")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Text("36º")
                    .font(.system(size: 50, weight: .semibold))
                    .foregroundColor(.black)
                
                Spacer()
                
                // MARK: Middle SF Symbol
                Image(systemName: "cloud.sun.fill")
                    .font(.system(size: 90))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .yellow)
                
                Spacer()
                
                // MARK: Rounded Rectangle Container View with weekdays, SF Symbols and temperatures.
                HStack {
                    
                    HStack {
                        /* TODO: Because of cloud.sun.rain.fill is a SF Symbol bigger than the others, this VStack spacing is acting strange like growing more than the others (is you use spacing 10 will see what i am talking about). If you test using cloud.drizzle.fill (for example from the second VStack SF Symbol), will that it works normally using spacing 10. I do not know if there is any way to fix that but i am leaving as TODO. */
                        VStack(spacing: 7) {
                            Text("Seg")
                                .foregroundColor(.black)
                                .font(.system(size: 10))
                            Image(systemName: "cloud.sun.rain.fill")
                                .font(.system(size: 30))
                                .symbolRenderingMode(.monochrome)
                                .foregroundColor(.white)
                            Text("32º")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }

                        Divider()
                            .frame(width: 2, height: 70)
                            .overlay(.black)
                            .padding(15)
                        
                        VStack(spacing: 10) {
                            Text("Ter")
                                .foregroundColor(.black)
                                .font(.system(size: 10))
                            Image(systemName: "cloud.drizzle.fill")
                                .font(.system(size: 30))
                                .symbolRenderingMode(.monochrome)
                                .foregroundColor(.white)
                            Text("30º")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        
                        Divider()
                            .frame(width: 2, height: 70)
                            .overlay(.black)
                            .padding(15)
                        
                        VStack(spacing: 10) {
                            Text("Qua")
                                .foregroundColor(.black)
                                .font(.system(size: 10))
                            Image(systemName: "cloud.rain.fill")
                                .font(.system(size: 30))
                                .symbolRenderingMode(.monochrome)
                                .foregroundColor(.white)
                            Text("27º")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        
                        Divider()
                            .frame(width: 2, height: 70)
                            .overlay(.black)
                            .padding(15)
                        
                        VStack(spacing: 10) {
                            Text("Qui")
                                .foregroundColor(.black)
                                .font(.system(size: 10))
                            Image(systemName: "cloud.heavyrain.fill")
                                .font(.system(size: 30))
                                .symbolRenderingMode(.monochrome)
                                .foregroundColor(.white)
                            Text("28º")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                    }
                }.frame(maxWidth: .infinity, maxHeight: 140)
                    .background(.cyan)
                    .cornerRadius(15)
                    .padding(5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

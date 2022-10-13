//
//  ScrollviewReader.swift
//  longpressgesture
//
//  Created by dip dutt on 10/12/22.
//

import SwiftUI

struct ScrollviewReader: View {
    
    @State var textFieldText:String = ""
    
    @State var scrollToIndex:Int = 0
    
    var body: some View {
        
        
        VStack {
            
            
            TextField("enter your number", text:$textFieldText)
            
            .font(.headline)
            
            .foregroundColor(Color.red)
            
            
            .padding(.horizontal, 10)
            .frame(height: 50)
            .border(Color.mint)
            .padding()
            .keyboardType(.numberPad)
            
            
            
            Button("Scroll now") {
                
                withAnimation(.spring()) {
                    
                    if  let  index = Int(textFieldText) {
                        
                        
                        scrollToIndex = index
                        
                        
                    }
                    
                    
                }
                
                
                
                    
                }
                
            
            
            
            
            
            ScrollView {
                
                
                ScrollViewReader { proxy in
                    
                    
                  
                    
                    
                    ForEach(0..<50) { index in
                        
                        
                        Text("this is the item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                        
                        
                        
                    }
                    
                    .onChange(of: scrollToIndex) { newValue in
                        
                        withAnimation() {
                            
                            proxy.scrollTo(newValue, anchor: nil)
                            
                            
                            
                        }
                    }
                    
                    
                    
                    
                    
                }
                
            }
            
        }
    }
    
    
}
    
    


struct ScrollviewReader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollviewReader()
    }
}

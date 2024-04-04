//
//  ContentView.swift
//  SWIFT CUP
//
//  Created by Maryna Sunko on 2/16/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var celsius:
    Double=0.0
    @State private var fahrenheit:
    Double = 0.0
    @State private var sugarCupGr:
    Double = 0.0
    @State private var sugarCupOz:
    Double = 0.0
    @State  private var flourCupGr:
    Double = 0.0
    @State private var flourCupOz:
    Double=0.0
    @State private var sugarGr:
    Double = 0.0
    @State private var sugarOz:
    Double = 0.0
    @State  private var flourGr:
    Double = 0.0
    @State private var flourOz:
    Double=0.0
    /*
     make boolean if Celius
     
     if true convert celuis to F
     if false convert F to C
     */
    
//    var fahrenheit: Double {
        
//        if let celsiumValue =
//            Double (celsium){
//            return celsiumValue*9/5+32
//            
//        } else{
//            return 0
//        }
//    }
    
        
    
    
   
//        private var : String = ""
//        private var: String = ""
    
    func convert() {
        fahrenheit = (celsius*9/5) + 32
    }
    func convertC(){
        celsius = (fahrenheit - 32)*5/9
    }
    func convertSugarGr(){
        sugarCupGr = sugarGr/200
    }
    func convertSugarOz(){
        sugarCupOz = sugarOz/8.9
    }
    func convertFlourOz(){
        flourCupOz = flourOz/6.5
    }
    func convertFlourGr(){
        flourCupGr = flourGr/160
    }
    var body: some View {
        
        VStack {
            
            //
        }
        HStack{
            Text ("CUP to CAKE")
                .fontWeight(.ultraLight)
                .foregroundColor(Color.red)
                .padding(.bottom,80)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        // PERERASCHEN C F
        HStack{
            
            TextField ("C", value:$celsius, formatter:
                        NumberFormatter())
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 4.0)
                .stroke (Color.gray, lineWidth:1)
                .frame(width: 60, height: 30)
            )
            Button("C -> F"){
                fahrenheit = (celsius*9/5) + 32
            }
            .foregroundColor(.black)
            .frame(width: 180, height: 20)
            .font(.title)
            .padding()
            .background(Color.red)
            .cornerRadius(25)
            Button ("\(fahrenheit, specifier: "%.2f") F") {
                
            }
            .padding()
        }
        
        //         PERERASCHET F  C
        
        HStack{
            
            TextField ("F", value:$fahrenheit, formatter:
                        NumberFormatter())
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 4.0)
                .stroke (Color.gray, lineWidth:1)
                .frame(width: 60, height: 30)
            )
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Button("F -> C"){
                celsius = (fahrenheit - 32)*5/9
                
                
            }
            .foregroundColor(.black)
            .frame(width: 180, height: 20)
            .font(.title)
            
            .padding()
            .background(Color.red)
            .opacity(0.4)
            .cornerRadius(25)
            
            Button ("\(celsius, specifier: "%.2f") C") {
                
                
            }
            .padding()
            
            //       PERERASCHET SUGAR GR - CUP
            
        }
        Spacer()
        HStack{
            
            TextField (" gr", value:$sugarGr, formatter:
                        NumberFormatter())
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 4.0)
                .stroke (Color.gray, lineWidth:1)
                .frame(width: 60, height: 30)
            )
            //            .frame(width: 90, height: 20)
            //            .background(.yellow)
            //            .opacity(0.2)
            //            .cornerRadius(25)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Button("SUGAR GR"){
                
                sugarCupGr = (sugarGr/200)
            }
            .foregroundColor(.black)
            .frame(width: 180, height: 20)
            .font(.title)
            .padding()
            .background(Color.yellow)
            .cornerRadius(25)
            Button ("\(sugarCupGr, specifier: "%.2f") CUP") {
                
                
            }
            
        }
        
       
        
        
        
        HStack{
            
            
            TextField ("oz", value:$sugarOz, formatter:
                        NumberFormatter())
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 4.0)
                .stroke (Color.gray, lineWidth:1)
                .frame(width: 60, height: 30)
            )
            Button("SUGAR OZ"){
                sugarCupOz = (sugarOz/6.5)
            }
            .foregroundColor(.black)
            .frame(width: 180, height: 20)
            .font(.title)
            .padding()
            .background(Color.yellow)
            .opacity(0.4)
            .cornerRadius(25)
            Button ("\(sugarCupOz, specifier: "%.2f") CUP") {
                
                
            }
        }
        
        Spacer()
        //       PERERASCHET FLUOR GR - CUP
        
        HStack{
            
            TextField ("gr", value:$flourGr, formatter:
                        NumberFormatter())
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 4.0)
                .stroke (Color.gray, lineWidth:1)
                .frame(width: 60, height: 30)
            )
            Button("FLOUR GR"){
                flourCupGr = flourGr/160
                
            }
            .foregroundColor(.black)
            .frame(width: 180, height: 20)
            .font(.title)
            .padding()
            .background(Color.blue)
            .cornerRadius(25)
            Button ("\(flourCupGr, specifier: "%.2f") CUP") {
                
            }
            
        }
        
        
        
        
        //       PERERASCHET FLUOR LB - CUP
        
        HStack{
            
            TextField ("oz", value:$flourOz, formatter:
                        NumberFormatter())
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 4.0)
                .stroke (Color.gray, lineWidth:1)
                .frame(width: 60, height: 30)
            )
            Button("FLOUR OZ"){
                flourCupOz = (flourOz/6.5)
            }
            .foregroundColor(.black)
            .frame(width: 180, height: 20)
            .font(.title)
            .padding()
            
            .background(Color.blue)
            .opacity(0.4)
            .cornerRadius(25)
            Button ("\(flourCupOz, specifier: "%.2f") CUP") {
                
            }
            Spacer()
        }
       
        ZStack{
            
            Image("cup")
                .resizable()
                .frame(width: 250, height: 180)
                .padding(.vertical)
            VStack{
                Text("1C =  32F")
                Text("1 lb = 0.454 kg")
                Text ("1 oz = 29.574 ml")
            }
            .padding(.trailing,50)
        }
    }
        }
//text: $celsium)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//        Spacer()
////        Text ("Fahrenheit:\(String(format: "%.2f, fahrenheit))")
        
//        .padding()4f
    
//        .padding ()

//struct ContentView_Previews:
//    PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
#Preview {
    ContentView()
}

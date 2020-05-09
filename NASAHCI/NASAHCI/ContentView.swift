//
//  ContentView.swift
//  NASAML
//
//  Created by Sumedh Sohrab on 4/19/20.
//  Copyright © 2020 Sumedh Sohrab. All rights reserved.
//

import SwiftUI
import CoreML

var p1val = 0
var p2val = 0
var p3val = 0
var p4val = 0
var p5val = 0
var p6val = 0
var e1val = 0
var e2val = 0
var e3val = 0
var e4val = 0
var e5val = 0
var e6val = 0
var userID = 0
var message = ""
var count = 0
var timeInterval = 0.0
var nomVal = 0.0
var showingError = false;
var showingAlert = false

struct UserDetectView: View {
    
    var users = ["User 1", "User 2"]
    @State private var selectedUser = 0

    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    VStack(alignment: .center){
                        Picker(selection: $selectedUser, label: Text("")) {
                            ForEach(0 ..< users.count) {
                                Text(self.users[$0])

                            }
                            .padding(.trailing, 50.0)
                            
                            
                        }.pickerStyle(WheelPickerStyle())
                        NavigationLink(destination: ContentView()){
                            ButtonView()
                        }
                        
                    }
                }
            }.navigationBarTitle("Choose User")
        }
    }
    
}

struct ButtonView: View {
    var body: some View {
        Text("Log In")
            .frame(width: 150, height: 10, alignment: .center).padding(15.0).foregroundColor(.white).background(Color.blue).cornerRadius(20).shadow(color: Color.blue, radius: 10)
    }
}
struct SubmitView: View {
    var body: some View {
        Text("Submit")
            .frame(width: 150, height: 10, alignment: .center).padding(15.0).foregroundColor(.white).background(Color.blue).cornerRadius(20).shadow(color: Color.blue, radius: 10)
    }
}

struct EmergencyView: View {
    let start = DispatchTime.now()
    var body: some View {
        VStack() {
            Text("Emergency")
            Text(message)
            Spacer()
            Button("Task One", action: onP1Press).buttonStyle(GradientBackgroundStyle())
            
            Button("Task Two", action: onP2Press).buttonStyle(GradientBackgroundStyle())

            
            Button("Task Three", action: onP3Press).buttonStyle(GradientBackgroundStyle())

            
            Button("Task Four", action: onP4Press).buttonStyle(GradientBackgroundStyle())

            
            Button("Task Five", action: onP5Press).buttonStyle(GradientBackgroundStyle())

            
            Button("Task Six", action: onP6Press).buttonStyle(GradientBackgroundStyle())

            Button("Submit", action: emerInput).buttonStyle(GradientBackgroundStyle())
        
        
        }
                
            
    }
    /**** CODE FOR EMERGENCY HANDLING ****/
        
        func onP1Press(){
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            if time > 6000{
                if count > 0{
                    message = "System is taking over..."
                    showingError = false
                    count = 0
                    //ContentView()
                } else {
                    message = "Try again"
                    count += 1
                }
            } else {
                if e1val == 0{
                    e1val = 1
                } else if e2val == 0 {
                    e2val = 1
                } else if e3val == 0 {
                    e3val = 1
                } else if e4val == 0 {
                    e4val = 1
                } else if e5val == 0 {
                    e5val = 1
                } else if e6val == 0 {
                    e6val = 1
                } else {
                    emerInput()
                }
            }

        }
        func onP2Press(){
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            if time > 6000{
                if count > 0{
                    message = "System is taking over..."
                    showingError = false
                    count = 0
                    //ContentView()
                } else {
                    message = "Try again"
                    count += 1
                }
            } else {
                if e1val == 0{
                    e1val = 2
                } else if e2val == 0 {
                    e2val = 2
                } else if e3val == 0 {
                    e3val = 2
                } else if e4val == 0 {
                    e4val = 2
                } else if e5val == 0 {
                    e5val = 2
                } else if e6val == 0 {
                    e6val = 2
                } else {
                    emerInput()
                }
            }
        }
        func onP3Press(){
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            if time > 6000{
                if count > 0{
                    message = "System is taking over..."
                    showingError = false
                    count = 0
                    //ContentView()
                } else {
                    message = "Try again"
                    count += 1
                }
            } else {
                if e1val == 0{
                    e1val = 3
                } else if e2val == 0 {
                    e2val = 3
                } else if e3val == 0 {
                    e3val = 3
                } else if e4val == 0 {
                    e4val = 3
                } else if e5val == 0 {
                    e5val = 3
                } else if e6val == 0 {
                    e6val = 3
                } else {
                    emerInput()
                }
            }
        }
        func onP4Press(){
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            if time > 6000{
                if count > 0{
                    message = "System is taking over..."
                    showingError = false
                    count = 0
                    //ContentView()
                } else {
                    message = "Try again"
                    count += 1
                }
            } else {
                if e1val == 0{
                    e1val = 4
                } else if e2val == 0 {
                    e2val = 4
                } else if e3val == 0 {
                    e3val = 4
                } else if e4val == 0 {
                    e4val = 4
                } else if e5val == 0 {
                    e5val = 4
                } else if e6val == 0 {
                    e6val = 4
                } else {
                    emerInput()
                }
            }
        }
        func onP5Press(){
           let stop = DispatchTime.now()
           let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
           let time = Double(nanoTime)/1000
           if time > 6000{
               if count > 0{
                   message = "System is taking over..."
                   showingError = false
                   count = 0
                   //ContentView()
               } else {
                   message = "Try again"
                   count += 1
               }
           } else {
                if e1val == 0{
                    e1val = 5
                } else if e2val == 0 {
                    e2val = 5
                } else if e3val == 0 {
                    e3val = 5
                } else if e4val == 0 {
                    e4val = 5
                } else if e5val == 0 {
                    e5val = 5
                } else if e6val == 0 {
                    e6val = 5
                } else {
                    emerInput()
                }
            }
        }
        func onP6Press(){
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            if time > 6000{
                if count > 0{
                    message = "System is taking over..."
                    showingError = false
                    count = 0
                    //ContentView()
                } else {
                    message = "Try again"
                    count += 1
                }
            } else {
                
                if e1val == 0{
                    e1val = 6
                } else if e2val == 0 {
                    e2val = 6
                } else if e3val == 0 {
                    e3val = 6
                } else if e4val == 0 {
                    e4val = 6
                } else if e5val == 0 {
                    e5val = 6
                } else if e6val == 0 {
                    e6val = 6
                } else {
                    emerInput()
                }
            }
            
            
            
           // let stop = DispatchTime.now()
           // let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
           // let time = Double(nanoTime)/1000
           // timeInterval += time
        }
    
        func emerInput() {
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            timeInterval = time
            //print(timeInterval)
        
            if timeInterval > 6000{
                if count > 0{
                    message = "System is taking over..."
                    showingError = false
                    count = 0
                    //ContentView()
                } else {
                    message = "Try again"
                    count += 1
                }
            }else{
                showingError = false;
            }
            
            e1val = 0
            e2val = 0
            e3val = 0
            e4val = 0
            e5val = 0
            e6val = 0
            timeInterval = 0.0
            nomVal = 0.0
            
        }
}

struct ContentView: View {
    
    @State private var alertMessage = ""
    @State private var alertTitle = ""
    @State private var showingAlert = false
    
    let start = DispatchTime.now()
    var body: some View {
        return Group {
            if showingError == false{
                VStack() {
                    Text("NASA Model Test for Monitoring User Performance")
                    Spacer()
                    
                    Button("Task One", action: onB1Press).buttonStyle(GradientBackgroundStyle())
                    
                    Button("Task Two", action: onB2Press).buttonStyle(GradientBackgroundStyle())

                    
                    Button("Task Three", action: onB3Press).buttonStyle(GradientBackgroundStyle())

                    
                    Button("Task Four", action: onB4Press).buttonStyle(GradientBackgroundStyle())

                    
                    Button("Task Five", action: onB5Press).buttonStyle(GradientBackgroundStyle())

                    
                    Button("Task Six", action: onB6Press).buttonStyle(GradientBackgroundStyle())

                    Spacer()
                    Button("Submit", action: monitorInput).buttonStyle(GradientBackgroundStyle()).padding(.vertical,20)

                    
                   /* NavigationLink(destination: dest[Int.random(in: 1..<3)]) {
                            SubmitView()
                        }.simultaneousGesture(TapGesture().onEnded{
                        monitorInput()
                    })*/
                    
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                }
                    

                
                
                
            
            } else {
                EmergencyView()
            }
        }
    }
        
        func onB1Press(){
            
            if p1val == 0{
                p1val = 1
            } else if p2val == 0 {
                p2val = 1
            } else if p3val == 0 {
                p3val = 1
            } else if p4val == 0 {
                p4val = 1
            } else if p5val == 0 {
                p5val = 1
            } else if p6val == 0 {
                p6val = 1
            } else {
                monitorInput()
            }
        /*    let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
            let time = Double(nanoTime)/1000
            timeInterval += time
                */
        }
        func onB2Press(){
            //let start = DispatchTime.now()
            if p1val == 0{
                p1val = 2
            } else if p2val == 0 {
                p2val = 2
            } else if p3val == 0 {
                p3val = 2
            } else if p4val == 0 {
                p4val = 2
            } else if p5val == 0 {
                p5val = 2
            } else if p6val == 0 {
                p6val = 2
            } else {
                monitorInput()
            }
        /*    let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
            let time = Double(nanoTime)/1000
            timeInterval += time*/
        }
        func onB3Press(){
            //let start = DispatchTime.now()
            if p1val == 0{
                p1val = 3
            } else if p2val == 0 {
                p2val = 3
            } else if p3val == 0 {
                p3val = 3
            } else if p4val == 0 {
                p4val = 3
            } else if p5val == 0 {
                p5val = 3
            } else if p6val == 0 {
                p6val = 3
            } else {
                monitorInput()
            }
           // let stop = DispatchTime.now()
          //  let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
            //let time = Double(nanoTime)/1000
            //timeInterval += time
        }
        func onB4Press(){
            let start = DispatchTime.now()
            if p1val == 0{
                p1val = 4
            } else if p2val == 0 {
                p2val = 4
            } else if p3val == 0 {
                p3val = 4
            } else if p4val == 0 {
                p4val = 4
            } else if p5val == 0 {
                p5val = 4
            } else if p6val == 0 {
                p6val = 4
            } else {
                monitorInput()
            }
          /*  let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
            let time = Double(nanoTime)/1000
            timeInterval += time */
        }
        func onB5Press(){
            let start = DispatchTime.now()
            if p1val == 0{
                p1val = 5
            } else if p2val == 0 {
                p2val = 5
            } else if p3val == 0 {
                p3val = 5
            } else if p4val == 0 {
                p4val = 5
            } else if p5val == 0 {
                p5val = 5
            } else if p6val == 0 {
                p6val = 5
            } else {
                monitorInput()
            }
           /* let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
            let time = Double(nanoTime)/1000
            timeInterval += time*/
        }
        func onB6Press(){
            //let start = DispatchTime.now()
            if p1val == 0{
                p1val = 6
            } else if p2val == 0 {
                p2val = 6
            } else if p3val == 0 {
                p3val = 6
            } else if p4val == 0 {
                p4val = 6
            } else if p5val == 0 {
                p5val = 6
            } else if p6val == 0 {
                p6val = 6
            } else {
                monitorInput()
            }
           // let stop = DispatchTime.now()
           // let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
           // let time = Double(nanoTime)/1000
           // timeInterval += time
        }
        func monitorInput() {
            let stop = DispatchTime.now()
            let nanoTime = stop.uptimeNanoseconds - start.uptimeNanoseconds
            let time = Double(nanoTime)/1000
            timeInterval += time
            print(timeInterval)
            if timeInterval > 8000 && showingError == true{
                EmergencyView()
            } else {
                if showingError == false && timeInterval > 8000{
                    showingError = true;
                }else{
                    showingError = false;
                }
                let model = NASAModel()
                
                do {
                    let prediction = try model.prediction(p1: Double(p1val), p2: Double(p2val), p3: Double(p3val), p4: Double(p4val), p5: Double(p5val), p6: Double(p6val), uid: Double(userID), time: Double(timeInterval))

                    
                    nomVal = prediction.nominal
                    if Int(nomVal) == 1 {
                        alertMessage = "nominal."
                    } else {
                        alertMessage = "not nominal. "
                        alertMessage.append(String(Int(nomVal)))
                    }
                    
                    alertTitle = "Your performance is:"
                    // more code here
                } catch {
                    alertTitle = "Error"
                    alertMessage = "Sorry, problem occured."
                }
                showingAlert = true
                
                p1val = 0
                p2val = 0
                p3val = 0
                p4val = 0
                p5val = 0
                p6val = 0
                timeInterval = 0.0
                nomVal = 0.0
                
            }
        }
}
struct GradientBackgroundStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 100, maxWidth: 100, minHeight: 10, maxHeight: 20)
            .padding(15)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
            .padding(.horizontal, 10)
            .padding(.vertical,10)
            .shadow(color: Color.blue, radius: 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        UserDetectView()
    }
}
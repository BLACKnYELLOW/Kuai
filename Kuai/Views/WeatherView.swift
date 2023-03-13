//
//  WeatherView.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 2/27/23.
//

import SwiftUI
//import struct Kingfisher.KFImage


struct WeatherView: View {
    
    @StateObject var fetchData = FetchData()
    
    var body: some View {
        ZStack {
            VStack {
                Text(fetchData.response.location.name)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.top, 100)
                    .padding(.bottom, 20)
                    .task {
                        await fetchData.getData()
                    }
                Text(String(format: "\(fetchData.response.current.temp_f)°", "%.1f"))
                    .font(.custom("Arial", size: 30))
                    .foregroundColor(.white)
                    .padding(.bottom, 1)
                Text(String(format: "feels like: \(fetchData.response.current.feelslike_f)°", "%.1f"))
                    .font(.custom("Arial", size: 15))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                //KFImage(URL(string: String("https:" + fetchData.response.current.condition.icon)))
                    //.padding(.top, 20)
                Text("Condition: \(fetchData.response.current.condition.text)")
                    .font(.custom("Arial", size: 20))
                    .foregroundColor(.white)
                    .padding(.bottom, 50)
                Text("humidity: \(fetchData.response.current.humidity)")
                    .foregroundColor(.white)
                Text(String(format: "uv: \(fetchData.response.current.uv)", "%.1f"))
                    .foregroundColor(.white)
                Text("wind direction: \(fetchData.response.current.wind_dir)")
                    .foregroundColor(.white)
                    .padding(.bottom)
                Spacer()
                Spacer()
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

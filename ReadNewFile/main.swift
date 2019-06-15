//
//  main.swift
//  ReadNewFile
//
//  Created by MacStudent on 2019-06-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

func readJsonFile(jsonFileName: String)
{
    let url  = Bundle.main.url(forResource: jsonFileName, withExtension: "json")


    guard let jsonData = url else{
    return
    
    }
    
    guard let data = try? Data(contentsOf: jsonData) else{
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options: [] )
    
    else
{
        return
    }
    print(json)
    
    if let jsonDictionary = json as?[String: Any]{
        if let email = jsonDictionary["email"] as? String{
            print(email)
            //user.email = email
        }
        if let name = jsonDictionary["name"] as? String{
            print(name)
            //user.username = username
        }
        
        //read address ditionary
        if let addressDict = jsonDictionary["address"] as? Dictionary<String, Any>
        {
            
            if let geoaddress = addressDict["geo"] as? Dictionary<String,Any>{
                
            if let lataddress = geoaddress["lat"] as? String {
                print(lataddress)
        }
                
                if let lngaddress = geoaddress["lng"] as? Dictionary<String,Any>{
                    print(lngaddress)
                }
            }
            if let city = addressDict["city"] as? String
            {
                print(city)
            }
        }
//           if let geo = jsonDictionary["geo"] as? Dictionary<String, Any>
//           {
//            if let lat = geo
//            }
            //read geo dictionary
            
//            if let companyname = jsonDictionary["company"] as? String{
//
//                if let bsname = companyname["bs"] as? String{
//
//                print(bsname)
//
//                }
            
        }
        
        
        //print(jsonDictionary["email"] as! String)
    }


readJsonFile(jsonFileName: "Users")

func readTextFile(fileName: String){
    if let pathOfText = Bundle.main.path(forResource: "sample", ofType: "txt")
    {
        do{
            let text = try String(contentsOfFile: pathOfText)
        
            print(text)
        
        }
        catch{
            print("Error while")
        }
    }
    
    
    
}

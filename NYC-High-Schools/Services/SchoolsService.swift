//
//  SchoolsService.swift
//  NYC-High-Schools
//
//  Created by Gary Zamorano on 2/27/18.
//  Copyright © 2018 Gary Zamorano. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class SchoolService {
    static let instance = SchoolService()
    
    var schools = [School]()
    
    func findAllSchool(completion: @escaping CompletionHandler){
        Alamofire.request(URL_GET_SCHOOLS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }
                if let json = JSON(data).array {
                    for item in json {
                        let schoolName = item["school_name"].stringValue
                        let schoolEmail = item["school_email"].stringValue
                        let dbm = item["dbm"].stringValue
                        let school = School(schoolName: schoolName, schoolEmail: schoolEmail, dbm: dbm)
                        self.schools.append(school)
                    }
                    print(self.schools[0].schoolEmail)
                    completion(true)
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
}

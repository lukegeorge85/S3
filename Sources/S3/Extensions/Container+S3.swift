//
//  Container+S3.swift
//  S3
//
//  Created by Ondrej Rafaj on 19/04/2018.
//

import Foundation
import Vapor


extension Container {
    
    /// Get an S3 client protocol
    public func makeS3Client() throws -> S3Client {
        return try make()
    }
    
    /// Get an S3 client
    public func makeS3() throws -> awsS3 {
        guard let s3 = try makeS3Client() as? awsS3 else {
            throw awsS3.Error.s3NotRegistered
        }
        return s3
    }
    
}

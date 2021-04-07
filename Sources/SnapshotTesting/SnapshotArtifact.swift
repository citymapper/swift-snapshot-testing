//
//  File.swift
//  
//
//  Created by Tom Humphrey on 07/04/2021.
//

import Foundation

/// A represenation of an artifact to be stored as an `XCTAttachment` or to disk.
public struct SnapshotArtifact {
  /// A description of the artifact.
  public enum ArtifactType: String {
    case reference, failure, difference
  }

  /// The payload data to be stored.
  public var data: Data

  /// The type of artifact to be stored.
  public var artifactType: ArtifactType

  /// A uniform type identifier of the payload data.
  public var uniformTypeIdentifier: String?
}

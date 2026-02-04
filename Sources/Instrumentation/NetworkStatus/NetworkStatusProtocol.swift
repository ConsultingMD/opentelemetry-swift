/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

#if os(iOS) && !targetEnvironment(macCatalyst)

  import CoreTelephony
  import Foundation

  public protocol NetworkStatusProtocol {
    var networkMonitor: NetworkMonitorProtocol { get }
    func getStatus() -> (String, CTCarrier?)
  }

#else

  import Foundation

  public protocol NetworkStatusProtocol {
    var networkMonitor: NetworkMonitorProtocol { get }
    func getStatus() -> (String, Any?)
  }

#endif

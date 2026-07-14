import Foundation

struct RemoteLicenseClient: LicenseAPI {
    init(baseUrl: String, keychain: Keychain) {}

    func activate(_ licenseKey: String, completion: @escaping (Result<ActivateResult, Error>) -> Void) {
        LocalLicenseAPI().activate(licenseKey, completion: completion)
    }

    func validate(_ licenseKey: String, instanceId: String, completion: @escaping (Result<ValidateResult, Error>) -> Void) {
        LocalLicenseAPI().validate(licenseKey, instanceId: instanceId, completion: completion)
    }

    func deactivate(_ licenseKey: String, instanceId: String, completion: @escaping (Result<Void, Error>) -> Void) {
        LocalLicenseAPI().deactivate(licenseKey, instanceId: instanceId, completion: completion)
    }
}

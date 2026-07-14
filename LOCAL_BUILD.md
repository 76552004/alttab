# Local-only build

This fork runs entirely locally:

- every former Pro feature is permanently available;
- no license key, trial, activation, revalidation, or Keychain access is required;
- automatic and manual update checks are disabled;
- Sparkle and AppCenter are removed from the application target;
- feedback submission, purchase, account, support, and activation links are removed;
- former network implementation files are inert local compatibility stubs.

The bundle identifier remains unchanged to avoid disrupting macOS permissions and existing preferences.

## Verification

Run the project build after installing full Xcode and selecting it as the active developer directory:

```bash
bash ai/build.sh
```

Run the test suite with:

```bash
bash scripts/run_tests.sh
```

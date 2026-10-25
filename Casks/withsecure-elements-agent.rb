cask "withsecure-elements-agent" do
  version :latest
  sha256 :no_check

  url "https://download.withsecure.com/PSB/latest/ElementsAgentInstaller.mpkg"
  name "WithSecure Elements Agent"
  desc "Endpoint protection agent for WithSecure Elements"
  homepage "https://www.withsecure.com/"

  depends_on macos: :sonoma

  # The keyless installer. Activate it afterwards with
  # `sudo /Library/WithSecure/bin/activator --subscription-key <key>`; the
  # agent then updates itself.
  pkg "ElementsAgentInstaller.mpkg"

  # The vendor's uninstaller also deactivates the system extension and unloads
  # the launchd jobs, which removing the package receipts alone would leave.
  uninstall script:  {
              executable: "/Library/WithSecure/bin/uninstall_MacProtection",
              sudo:       true,
            },
            pkgutil: "com.withsecure.*"
end

cask "ttu-base-suite-20.00" do
  depends_on macos: ">= :catalina"

  version "20.00.02.00"
  sha256 "a39d1af37d3a3acd61fabc6c00f86a935f2bf802bf12e05eb3d08a263e142caa"

  name "TTU BASE Suite #{version}"
  desc "Teradata Tools and Utilities BASE Suite #{version}"

  url "https://downloads.teradata.com/sites/default/files/2023-11/TeradataToolsAndUtilities-macosx-brew-20.00.02.00.tar"

  installer script: {
              executable: "silent-install.sh",
              args:       ["ttu-base-suite-20.00"],
              sudo:       true
            }

  uninstall script: {
              executable: "silent-uninstall.sh",
              args:       ["BASE"],
              sudo:       true
            },
            pkgutil: "com.Teradata.*2000.pkg.ttuuninstaller"
end

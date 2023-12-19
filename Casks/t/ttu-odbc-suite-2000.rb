cask "ttu-odbc-suite-2000" do
  version "20.00.04.00"
  sha256 "dfab023531b85d6d7b994ec71b47a9494197eda4a910bafcd3f29cec9c902075"
  
  url "https://downloads.teradata.com/sites/default/files/2023-12/TeradataODBC-macosx-brew-#{version}.tar"
  name "TTU ODBC Suite #{version}"
  desc "Teradata ODBC Suite #{version}"
  homepage "https://downloads.teradata.com/"

  depends_on macos: ">= :catalina"

  installer script: {
    executable: "silent-install.sh",
    args:       ["ttu-odbc-suite-2000"],
    sudo:       true,
    }

  uninstall script: {
    executable: "silent-uninstall.sh",
    args:       ["ODBC"],
    sudo:       true,
    },
    pkgutil: "com.Teradata.*2000.pkg.ttuuninstaller"
end

# Generated with JReleaser 1.2.0 at 2022-10-11T02:38:33.662478198Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.8.4/mulefd-0.8.4.zip"
  version "0.8.4"
  sha256 "b2f392df91a173b942d4ddabc16becbe725a3c0ae86fca2582c0ae61000ed4b5"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.8.4", output
  end
end

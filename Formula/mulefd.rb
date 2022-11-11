# Generated with JReleaser 1.2.0 at 2022-11-11T22:32:03.254093226Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.10.0/mulefd-0.10.0.zip"
  version "0.10.0"
  sha256 "10db8b4fbec1eeba5fa6acaab743a3e02b9e0ce478741bdabf40f81e9cc170ac"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.10.0", output
  end
end

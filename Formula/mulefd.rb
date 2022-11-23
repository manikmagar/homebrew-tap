# Generated with JReleaser 1.3.1 at 2022-11-23T23:11:08.105199397Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.11.0/mulefd-0.11.0.zip"
  version "0.11.0"
  sha256 "6ca0960321c9ad90f2188389c7c91ad9dc8c03646b9c3c018c26070f24586a0b"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.11.0", output
  end
end

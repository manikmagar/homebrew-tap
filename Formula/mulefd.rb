# Generated with JReleaser 1.2.0 at 2022-10-11T00:23:54.376526383Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.8.2/mulefd-0.8.2.zip"
  version "0.8.2"
  sha256 "2e423df0eb3801c47b99c4ece2973546f40d184f802ea4cfc921efb241f5f5bf"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.8.2", output
  end
end

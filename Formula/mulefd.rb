# Generated with JReleaser 1.2.0 at 2022-10-26T01:03:32.944178251Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.9.0/mulefd-0.9.0.zip"
  version "0.9.0"
  sha256 "25b4c7683eab0747aaa8c0e458ccaaafc55b43cc8c6482a34f5d50e28acbf85a"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.9.0", output
  end
end

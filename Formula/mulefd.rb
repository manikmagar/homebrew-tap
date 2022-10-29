# Generated with JReleaser 1.2.0 at 2022-10-29T17:54:53.982700574Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.9.1/mulefd-0.9.1.zip"
  version "0.9.1"
  sha256 "1d6d65c909a4f2ae0b5b83d58b1a50ba4466a4cab5d23670376edde7bb0832c5"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.9.1", output
  end
end

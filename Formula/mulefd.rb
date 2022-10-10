# Generated with JReleaser 1.2.0 at 2022-10-10T03:22:31.240718294Z
class Mulefd < Formula
  desc "Generate flow diagrams for Mule applications"
  homepage "https://javastreets.com"
  url "https://github.com/manikmagar/mulefd/releases/download/v0.0.2/mulefd-0.0.2.zip"
  version "0.0.2"
  sha256 "b1b5685c0332aa5c841fe666007329024063d1b04bbeeef885d95e5173ed846a"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mulefd" => "mulefd"
  end

  test do
    output = shell_output("#{bin}/mulefd --version")
    assert_match "0.0.2", output
  end
end

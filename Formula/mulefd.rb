class Mulefd < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mulefd"
    url "https://github.com/manikmagar/mulefd/releases/download/v0.7.1/mulefd-0.7.1.zip"
    sha256 "529d2ee9fe131ecdb0e5df57281f02224c43f913e454e14e830aa6efb66a7b8e"

    bottle :unneeded

    #keg_only :versioned_formula

    #depends_on cask:"java"
    depends_on :java => "1.8+"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/mulefd"
    end

    test do
        system "#{bin}/mulefd", "--version", "0.7.1"
    end
  end
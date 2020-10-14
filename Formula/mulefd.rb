class Mulefd < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mulefd"
    url "https://github.com/manikmagar/mulefd/releases/download/v0.7.4/mulefd-0.7.4.zip"
    sha256 "7bf01c93289f2e951d989788abb3522095355ed3a478a730065aefe698459974"

    bottle :unneeded

    #keg_only :versioned_formula

    #depends_on cask:"java"
    depends_on :java => "1.8+"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/mulefd"
    end

    test do
        system "#{bin}/mulefd", "--version", "0.7.4"
    end
  end
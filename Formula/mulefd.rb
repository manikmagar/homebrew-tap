class Mulefd < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mulefd"
    url "https://github.com/manikmagar/mulefd/releases/download/v0.7.2/mulefd-0.7.2.zip"
    sha256 "97982f57db281bac793ae0883bb30075e6eff1a1d76dc094a1a6bc4bc2251ffc"

    bottle :unneeded

    #keg_only :versioned_formula

    #depends_on cask:"java"
    depends_on :java => "1.8+"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/mulefd"
    end

    test do
        system "#{bin}/mulefd", "--version", "0.7.2"
    end
  end
class Mulefd < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mulefd"
    url "https://github.com/manikmagar/mulefd/releases/download/v0.7.3/mulefd-0.7.3.zip"
    sha256 "b4b83004bde871131919d1b10986d68f5bb17a0654b169f5eb5727669232d4a8"

    bottle :unneeded

    #keg_only :versioned_formula

    #depends_on cask:"java"
    depends_on :java => "1.8+"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/mulefd"
    end

    test do
        system "#{bin}/mulefd", "--version", "0.7.3"
    end
  end
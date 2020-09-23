# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mulefd < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mulefd"
    url "https://github.com/manikmagar/mulefd/releases/download/v0.5.0/mulefd-0.5.0.zip"
    sha256 "ace0c591d63b6eff2dc3a23b3f73b7387fb9a433af693b45d4fec73e6779861d"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/mulefd"
    end
  
    test do
      system "#{bin}/mulefd", "--version", "0.5.0"
    end
  end
  
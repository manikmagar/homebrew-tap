# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Muleflowdiagrams < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mule-flow-diagrams"
    url "https://github.com/manikmagar/mule-flow-diagrams/releases/download/v0.4.1/muleflowdiagrams-0.4.1.zip"
    sha256 "3899858dffdbde8b0e30481fdf763feea91a0ea23cdbf0ccb06b6760a06fc73c"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/muleflowdiagrams"
    end
  
    test do
      system "#{bin}/muleflowdiagrams", "--version", "0.4.1"
    end
  end
  
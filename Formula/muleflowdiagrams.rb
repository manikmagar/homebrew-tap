# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Muleflowdiagrams < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mule-flow-diagrams"
    url "https://github.com/manikmagar/mule-flow-diagrams/releases/download/v0.3.0.1/muleflowdiagrams-0.3.0.1.zip"
    sha256 "9943eb1592bc9fbabb02ee0dde14da05f2b1993d3301c2e2e8f35b7eadf6f040"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/muleflowdiagrams"
    end
  
    test do
      system "#{bin}/muleflowdiagrams", "--version", "0.3.0.1"
    end
  end
  
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Muleflowdiagrams < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mule-flow-diagrams"
    url "https://github.com/manikmagar/mule-flow-diagrams/releases/download/v0.4.0/muleflowdiagrams-0.4.0.zip"
    sha256 "f02116d97e3bc807235fd798f997f8529d52e26ae74b34831da6257f3e8bc714"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/muleflowdiagrams"
    end
  
    test do
      system "#{bin}/muleflowdiagrams", "--version", "0.4.0"
    end
  end
  
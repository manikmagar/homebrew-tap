# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Muleflowdiagrams < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mule-flow-diagrams"
    url "https://github.com/manikmagar/mule-flow-diagrams/releases/download/v0.1.0/muleflowdiagrams-0.1.0.zip"
    sha256 "10a322d9b8f69b6a6b7082a3bb83f784496446b8d2cd25f8d7680d9ec3b3895a"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/muleflowdiagrams"
    end
  
    test do
      system "#{bin}/muleflowdiagrams", "--version", "0.1.0"
    end
  end
  
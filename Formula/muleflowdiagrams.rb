# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Muleflowdiagrams < Formula
    desc "Mule flow dependency graphs and diagrams"
    homepage "https://github.com/manikmagar/mule-flow-diagrams"
    url "https://github.com/manikmagar/mule-flow-diagrams/releases/download/v0.2.0.1/muleflowdiagrams-0.2.0.1.zip"
    sha256 "a702a8534499e905e187b0eacafcb12dd0087ce8055cb838ef3c757e8c181da5"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/muleflowdiagrams"
    end
  
    test do
      system "#{bin}/muleflowdiagrams", "--version", "0.2.0.1"
    end
  end
  
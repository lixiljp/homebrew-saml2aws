require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.28.0'

  bottle do
    root_url "https://github.com/lixiljp/saml2aws/releases/download/eaa.20210827/"
    sha256 cellar: "saml2aws_darwin_arm64.tar.gz", arm64_big_sur: "d15bda7fb656ef06365cb83ff31a9ea84884d1eeaef41b9c0180bd3b23632c50"
    sha256 cellar: "saml2aws_darwin_amd64.tar.gz", big_sur:       "8d3db1a80ba8d51f9d5c65a556200547f18622793d12a3a3e842e16632412d50"
    sha256 cellar: "saml2aws_darwin_amd64.tar.gz", catalina:      "8d3db1a80ba8d51f9d5c65a556200547f18622793d12a3a3e842e16632412d50"
    sha256 cellar: "saml2aws_darwin_amd64.tar.gz", mojave:        "8d3db1a80ba8d51f9d5c65a556200547f18622793d12a3a3e842e16632412d50"
    sha256 cellar: "saml2aws_linux_amd64.tar.gz",  x86_64_linux:  "e45c744ff6f13532ffefc285d5db481922faca3dead1beae7355428d8a8970cc"
  end

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

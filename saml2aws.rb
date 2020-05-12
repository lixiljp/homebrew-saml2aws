require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.26.1'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200512/saml2aws_2.26.1_darwin_amd64.tar.gz'
    sha256 'f2cddf18899cfa3e51c9ebb5b75ef204cb2217e6003f1d91c39b07df4ac1596b'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200512/saml2aws_2.26.1_linux_amd64.tar.gz'
    sha256 'c73652e2ebab6a71aee4a8c34f68968179b61d5b36c4aeac1c44d3ee2301778e'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

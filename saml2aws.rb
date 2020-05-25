require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.26.3'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200525/saml2aws_2.26.3_darwin_amd64.tar.gz'
    sha256 '644743d1a12026391a502b26a9bfdfe417a9cf3af0d939c1239468d01816b448'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200525/saml2aws_2.26.3_linux_amd64.tar.gz'
    sha256 '20306f42163a0bf2269fb83d4649f4ce068f4c6465aa68388faf24cc624b74c2'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

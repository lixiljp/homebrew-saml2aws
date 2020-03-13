require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.24.0'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200213/saml2aws_2.24.0_darwin_amd64.tar.gz'
    sha256 '088d73119f0eaf3fc2ec8b02b52b9ff93968a3a52b128689ec5286471235fb1c'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200213/saml2aws_2.24.0_linux_amd64.tar.gz'
    sha256 '190494e3d4d6c2312e210fc0dba933e34c5fa21f16106fdf42a89ac953e9829d'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

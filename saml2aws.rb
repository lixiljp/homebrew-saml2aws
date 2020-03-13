require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.24.1'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200213.2/saml2aws_2.24.1_darwin_amd64.tar.gz'
    sha256 '574f030001fbbcbfefe9595ec7c4b0d2b7869dbe356b94859a1e50132e6aabe8'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200213.2/saml2aws_2.24.1_linux_amd64.tar.gz'
    sha256 'c022a1c23a4d4d1ef658005dd2a458929a322018853b38e435e8c85115571fa0'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

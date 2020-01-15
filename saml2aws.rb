require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.21.0'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200115/saml2aws_2.21.0_darwin_amd64.tar.gz'
    sha256 '26bed1fa3a539b527e89ed2e9705bcd7ff2e5228b4e06960a0e91be98f203c4f'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200115/saml2aws_2.21.0_linux_amd64.tar.gz'
    sha256 'de4226ff17c60a48b168ba44109db62860a065b10a13c9b5435083ce9f7ffd70'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

  
require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.17.0'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20191016/saml2aws_2.17.0_darwin_amd64.tar.gz'
    sha256 '77b3789898b6b34161c28246757dd0832f8f95aad5b01ef64054f7f13f2e69d9'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20191016/saml2aws_2.17.0_linux_amd64.tar.gz'
    sha256 '331853e611b79fdb3b68adea918d5cf7ff37a555547e91c90d5e170d78bee0ab'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

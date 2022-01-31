require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.28.0'

  if OS.mac?
    if `uname -m`.strip == "arm64"
      url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20220131/saml2aws_darwin_arm64.tar.gz'
      sha256 'a2a844b1a285d6502635338c83db209319b1428af2c925759a39d9154bff36b2'
    else
      url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20220131/saml2aws_darwin_amd64.tar.gz'
      sha256 'f05140f80ea3c9a454284d0ce272324d41725891894ec3ea8fe44c80775f69f3'
    end
  elsif OS.linux?
    if `uname -m`.strip == "arm64"
      url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20220131/saml2aws_linux_arm64.tar.gz'
      sha256 '86b50ff5f8f41a2a8185cfbebe7e54572ee9ec5550fac52ae7c21db4f40df8ea'
    else
      url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20220131/saml2aws_linux_amd64.tar.gz'
      sha256 '34ffd2d571efdae1bbd41053278ae8998c11e840ede26d8e5abf0e4761447c8c'
    end
  end

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

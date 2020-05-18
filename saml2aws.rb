require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/lixiljp/saml2aws'
  version '2.26.2'
  if OS.mac?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200518/saml2aws_2.26.2_darwin_amd64.tar.gz'
    sha256 '09104659f8865b03df2471f477c795e9cad8d9090c94629c088a7274fd824a26'
  elsif OS.linux?
    url 'https://github.com/lixiljp/saml2aws/releases/download/eaa.20200518/saml2aws_2.26.2_linux_amd64.tar.gz'
    sha256 '185f911fad1cd8e4874b3bcf533944868e793163ffc68c61dc64315a47c1add2'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end

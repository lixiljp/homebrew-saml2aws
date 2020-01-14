# Homebrew formulas for forked saml2aws

How to install:

``` text
# run this if you installed saml2aws from brew before
brew uninstall saml2aws
brew untap versent/taps

# run this if you installed saml2aws from tarball
rm -f /usr/local/bin/saml2aws

# install forked saml2aws
brew tap lixiljp/saml2aws
brew install saml2aws
```

How to configure:

``` text
saml2aws configure
? Please choose a provider: EAA
? Please choose an MFA Auto
? AWS Profile saml
? URL https://lixil-multi-directory.login.go.akamai-access.com
? Username your@email.com
? Password your.password
```

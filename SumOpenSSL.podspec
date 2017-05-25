Pod::Spec.new do |s|
  s.name         = "SumOpenSSL"
  s.version      = "0.0.1"
  s.summary      = "OpenSSL for iOS"
  s.description  = "OpenSSL is an SSL/TLS and Crypto toolkit."
  s.license	     = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE' }
  s.source       = { :git => "https://github.com/vikvych/sum_openssl.git", :tag => s.version.to_s }
  s.homepage     = "https://safeum.com"
  s.authors      = { 'Mark J. Cox' => 'mark@openssl.org',
                     'Ralf S. Engelschall' => 'rse@openssl.org',
                     'Dr. Stephen Henson' => 'steve@openssl.org',
                     'Ben Laurie' => 'ben@openssl.org',
                     'Lutz Jänicke' => 'jaenicke@openssl.org',
                     'Nils Larsch' => 'nils@openssl.org',
                     'Richard Levitte' => 'nils@openssl.org',
                     'Bodo Möller' => 'bodo@openssl.org',
                     'Ulf Möller' => 'ulf@openssl.org',
                     'Andy Polyakov' => 'appro@openssl.org',
                     'Geoff Thorpe' => 'geoff@openssl.org',
                     'Holger Reif' => 'holger@openssl.org',
                     'Paul C. Sutton' => 'geoff@openssl.org',
                     'Eric A. Young' => 'eay@cryptsoft.com',
                     'Tim Hudson' => 'tjh@cryptsoft.com',
                     'Justin Plouffe' => 'plouffe.justin@gmail.com' }

  s.ios.deployment_target   = '8.0'
  s.ios.source_files        = 'Include/openssl/**/*.h'
  s.ios.public_header_files = 'Include/openssl/**/*.h'
  s.ios.header_dir          = 'openssl'
  s.ios.preserve_paths      = 'Library/libcrypto.a', 'Library/libssl.a'
  s.ios.vendored_libraries  = 'Library/libcrypto.a', 'Library/libssl.a'

  s.libraries = 'ssl', 'crypto'
  s.requires_arc = false
end

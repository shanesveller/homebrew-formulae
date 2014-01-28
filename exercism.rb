require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /opt/boxen/homebrew/Library/Contributions/example-formula.rb

class Exercism < Formula
  homepage 'http://exercism.io/'
  url 'https://github.com/exercism/cli/releases/download/v1.4.0/exercism-darwin-amd64.tgz'
  sha1 '46059ab4deb4a10181675566b1ce0b5f79f9d933'
  version '1.4.0'

  depends_on :arch => :x86_64

  def install
    (bin).install "exercism"
  end

  test do
    system "#{bin}/exercism", "--version"
  end
end

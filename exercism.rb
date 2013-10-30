require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /opt/boxen/homebrew/Library/Contributions/example-formula.rb

class Exercism < Formula
  homepage 'http://exercism.io/'
  url 'https://github.com/msgehard/go-exercism/releases/download/v1.1.1/exercism-darwin-amd64.tgz'
  sha1 '9b9550b0ac7f10ce1ef0b4e2c416c3c2623cb2e1'
  version '1.1.1'

  depends_on :arch => :x86_64

  def install
    (bin).install "exercism"
  end

  test do
    system "#{bin}/exercism", "--version"
  end
end

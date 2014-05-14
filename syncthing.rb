require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Syncthing < Formula
  homepage "http://syncthing.net/"
  url "https://github.com/calmh/syncthing/releases/download/v0.8.5/syncthing-darwin-amd64-v0.8.5.tar.gz"
  sha1 "4610588a07cc45247108d353a4babfb7400ec9bf"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    bin.install "syncthing"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test syncthing-darwin-amd64-v`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "syncthing -version"
  end
end

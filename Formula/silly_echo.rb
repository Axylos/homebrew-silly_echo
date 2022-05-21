# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SillyEcho < Formula
  version "0.1.1-rc.2"
  desc "does a thing"
  homepage "draketalley.com"
  url "https://github.com/Axylos/silly/archive/refs/tags/v0.1.1-rc.2.tar.gz"
  sha256 "a051fc72c4e3b62e6a7f3b4ea743520df2e8f8becd325fa8d7cf6166ad1db992"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "echo " "hi"
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    man1.install "man/sillyecho.1"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test silly`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end

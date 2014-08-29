require "formula"

class Fleetctl < Formula
  homepage "https://github.com/coreos/fleet"
  url "https://github.com/coreos/fleet/archive/v0.7.1.tar.gz"
  sha1 "78b072d91845c75613a48c8424c27f1422cceb51"
  head "https://github.com/coreos/fleet.git"

  bottle do
    sha1 "9e9a20045cba0c6800fb6107ab597ba94cc5fe15" => :mavericks
    sha1 "5a9594f397d40aa219dcc442964dc58555704b1f" => :mountain_lion
    sha1 "d7fe5f6634f1f6e87395b6034abbfc7e11e287fc" => :lion
  end

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/fleetctl"
  end
end

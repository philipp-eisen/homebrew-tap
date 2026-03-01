class PadelTui < Formula
  desc "Terminal UI for finding and booking padel courts"
  homepage "https://github.com/philipp-eisen/padel-tui"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-darwin-arm64.tar.gz"
      sha256 "346606e9bcc87cb27e71ee384c35f7ac17dd950232aff3c24273f36caea58344"
    else
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-darwin-x64.tar.gz"
      sha256 "6a0c28f2479c9e4766e5bbdf67f067a0250622373c744cf0c2e83767b9f48d60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-linux-arm64.tar.gz"
      sha256 "76ac73ed6ea25fc163c64f7dbb0a03a4b651f6dc41c7ed0b3a05b126367b77d3"
    else
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-linux-x64.tar.gz"
      sha256 "6d7ef5c1ea79b214e94feb17348f76036340e2ed2dc5c7ed2f6890e3f977aca2"
    end
  end

  def install
    bin.install "padel-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/padel-tui --version")
  end
end

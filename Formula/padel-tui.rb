class PadelTui < Formula
  desc "Terminal UI for finding and booking padel courts"
  homepage "https://github.com/philipp-eisen/padel-tui"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "padel-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/padel-tui --version")
  end
end

class PadelTui < Formula
  desc "Terminal UI for finding and booking padel courts"
  homepage "https://github.com/philipp-eisen/padel-tui"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-darwin-arm64.tar.gz"
      sha256 "0a32b025fa4bcd9af6d80c9f1da9a69fd1f936dfa5e807531668e7709fdc42dd"
    else
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-darwin-x64.tar.gz"
      sha256 "b99162cc9a5059dfef47ebc35bfd8c2a7d722adc57ee50bd2d96f4a78bdd5bc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-linux-arm64.tar.gz"
      sha256 "0f9749129d6add182477986a0bf43c54c35b4b78917cb393ba207e4410c08240"
    else
      url "https://github.com/philipp-eisen/padel-tui/releases/download/v#{version}/padel-tui-v#{version}-linux-x64.tar.gz"
      sha256 "b220dbb1b918d832e0e308b5d25da0974cbddeb1c9af47b96e4b54f127c67810"
    end
  end

  def install
    bin.install "padel-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/padel-tui --version")
  end
end

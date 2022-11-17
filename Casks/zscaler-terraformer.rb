cask "zscaler-terraformer" do
  name "zscaler-terraformer"
  appcast "https://github.com/zscaler/zscaler-terraformer/releases.atom"
  homepage "https://github.com/zscaler/zscaler-terraformer"
  desc "CLI tool to generate terraform files from existing ZPA and ZIA"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_amd64.tar.gz"
    sha256 "37cc775d2390dd16404f02fa80666f72c1763b3bcfc5efdf2c4371fc502b7773"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_darwin_arm64.tar.gz"
    sha256 "f4d524ef4a140b5be85173c2261bde88dca8ac2b2aea63d917e6e8f3d6a7b0d1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_amd64.tar.gz"
    sha256 "c7cdfef0ecbfe3394f60c83266df62d9f77672344bc91a0af059977fc0d522cc"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/zscaler/zscaler-terraformer/releases/download/v#{version}/zscaler-terraformer_#{version}_linux_arm64.tar.gz"
    sha256 "338ae40d4f34bf80045a5a3739f6879c1635c5fd22dbfc07357378ecff3e1272"
  end

  binary "zscaler-terraformer"
end

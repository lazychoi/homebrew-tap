class DnYtt < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to download YouTube transcripts"
  homepage "https://github.com/lazychoi/dn-youtube-transcript"
  url "https://github.com/lazychoi/dn-youtube-transcript/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "61bdd6baf7d001fc02d24cca0f53141cefb80949a90ca1e55a77315c4b58777b"
  license "MIT"

  depends_on "python@3.11"

  resource "youtube-transcript-api" do
    url "https://files.pythonhosted.org/packages/source/y/youtube-transcript-api/youtube-transcript-api-0.6.2.tar.gz"
    sha256 "109e90bd3054a20e25c56c032df2e2d5e8ba11f91a921c4f70a5e5488952c79b"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/source/t/tqdm/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2024.2.2.tar.gz"
    sha256 "0569859f95fc761b18b45ef421b1290a0f65f147e92a1e5eb3e635f9a5e4e66f"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "YouTube Transcript Downloader", pipe_output("#{bin}/dn-ytt 2>&1", "\n", 1)
  end
end
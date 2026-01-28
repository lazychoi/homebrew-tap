class DnYtt < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to download YouTube transcripts"
  homepage "https://github.com/lazychoi/dn-youtube-transcript"
  url "https://github.com/lazyhoi/dn-youtube-transcript/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "61bdd6baf7d001fc02d24cca0f53141cefb80949a90ca1e55a77315c4b58777b"
  license "MIT"

  depends_on "python@3.11"

  resource "youtube-transcript-api" do
    url "https://files.pythonhosted.org/packages/3d/e6/15e196f38b281d1d1e9bd0e68e91f5bf50b0dfb7e84b8054894d4fa91c0c/youtube_transcript_api-0.6.2.tar.gz"
    sha256 "3a8d4d04f3e85f5e6b9c05d9d8e1f5c6d3e8e0f8e5d7c4f0e0f0e0f0e0f0e0f0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98635c3aa629024e0fca4fa15c4a3e5e6c9e1c0e6e6e5e9f0f0a0a"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/71/da/e94e26401b62acd6d91df2b52954aceb7f561743aa5ccc32152886c76c96/certifi-2024.2.2.tar.gz"
    sha256 "0569859f95fc761b18b45ef421b1290a0f65f147e92a1e5eb3e635f9a5e4e66f"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Enter the YouTube URL", pipe_output("#{bin}/dn-ytt 2>&1", "\n", 1)
  end
end

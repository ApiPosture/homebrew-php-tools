class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.1"

  url "https://github.com/ApiPosture/ApiPosturePro.Php/releases/download/v#{version}/apiposture-pro.phar"
  # sha256 is replaced by the release workflow (release.yml) when a vX.Y.Z tag is pushed.
  # Do not edit this line manually.
  sha256 "7515b30d128a709bb310bb747cbbf911879aa0d3ddf483552af44bb3d52b3b8b"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end

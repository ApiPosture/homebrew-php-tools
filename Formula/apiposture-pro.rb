class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.0"

  url "https://github.com/ApiPosture/ApiPosturePro.Php/releases/download/v#{version}/apiposture-pro.phar"
  # sha256 is updated automatically by the release workflow
  sha256 "b8997c85fb39c0145813cb2bace0f50172653a775fefd6b931863abfe57c6b7a"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end

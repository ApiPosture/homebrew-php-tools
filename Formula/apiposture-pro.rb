class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.12"

  # url and sha256 are replaced by release.yml when a vX.Y.Z tag is pushed. Do not edit manually.
  url "https://raw.githubusercontent.com/ApiPosture/homebrew-php-tools/main/releases/apiposture-pro-v1.0.12.phar"
  sha256 "df4f2e0971a0a126f6dff64c4649d91944d9c22ebfb3273279474bb816106204"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end

class ApiposturePro < Formula
  desc "Pro security scanning for PHP APIs – OWASP Top 10, secrets, diff, risk scoring"
  homepage "https://github.com/ApiPosture/ApiPosturePro.Php"
  version "1.0.8"

  # url and sha256 are replaced by release.yml when a vX.Y.Z tag is pushed. Do not edit manually.
  url "https://raw.githubusercontent.com/ApiPosture/homebrew-php-tools/main/releases/apiposture-pro-v1.0.8.phar"
  sha256 "b40d11291a643a55eaceeaa422335c2ef013af503491eea3dbc4baad3823fdd5"

  depends_on "php"

  def install
    bin.install "apiposture-pro.phar" => "apiposture-pro"
  end

  test do
    assert_match "ApiPosturePro", shell_output("#{bin}/apiposture-pro --version")
  end
end

class Noms < Formula
  desc "Noms is a decentralized database based on ideas from Git."
  homepage "https://github.com/attic-labs/noms"
  url "https://s3-us-west-2.amazonaws.com/download.noms.io/jobs/NomsBuildGoBinaries/143/noms-172b991-darwin-amd64.tar.gz"
  sha256 "40e6eb74c198ac0cd3739106116c6e9c1e0c29bcee5bd9311ad2ec48a9bdd234"

  def install
    bin.install("nomdex")
    bin.install("noms")

    [
      "blob-get",
      "counter",
      "csv-analyze",
      "csv-export",
      "csv-import",
      "json-import",
      "poke",
      "url-fetch",
      "xml-import",
    ].each do |b|
      mv b, bin/
    end
  end

  test do
    system "noms", "version"
  end
end

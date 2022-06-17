class Tmignore < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/hkloudou/tmignore"
	url "https://github.com/hkloudou/tmignore/archive/v1.2.9.tar.gz"
	sha256 "4bf99e90ccff57eb94a87cb10d91b0e5c9207618cf2f627ed9290ad6f5670e5a"
	head "https://github.com/hkloudou/tmignore.git"

	depends_on :macos => :high_sierra
	depends_on :xcode => :build

	def install
		system "make", "brew-download-release"
		bin.install "./bin/tmignore"
		system "cp", "./homebrew.tmignore.plist", prefix
	end

	test do
		system "#{bin}/tmignore", "version"
	end
end

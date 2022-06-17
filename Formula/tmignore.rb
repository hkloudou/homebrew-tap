class Tmignore < Formula
	desc "Exclude development files from Time Machine backups"
	homepage "https://github.com/hkloudou/tmignore"
	url "https://github.com/hkloudou/tmignore/archive/v1.2.8.tar.gz"
	sha256 "c67b801ce8dddf01a2765a2586f7e5ef5935f28ce42d5e990447320887e79f4f"
	head "https://github.com/hkloudou/tmignore.git"

	depends_on :macos => :high_sierra
	depends_on :xcode => :build

	def install
		system "make", "build"
		bin.install "./bin/tmignore"
		system "cp", "./homebrew.tmignore.plist", prefix
	end

	test do
		system "#{bin}/tmignore", "version"
	end
end

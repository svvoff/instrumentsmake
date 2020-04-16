
#!make

profile=~/.zprofile

all: brew pod aria2 swiftlint end

brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

pod:
	gem install cocoapods --user-install
	echo 'export PATH="$(HOME)/.gem/ruby/2.6.0/bin:$$PATH"' >> $(profile)

aria2:
	brew install aria2
	curl https://gist.githubusercontent.com/svvoff/f0e83c56790129261d96e548fe6c7c57/raw/7216e89d4d058510939641fcb1c88debd3770157/xcode-downloader.rb > $(HOME)/xcode-downloader.rb

swiftlint:
	brew install swiftlint

end:
	echo "do not foget to execute: source $(profile)"  

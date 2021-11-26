#!/bin/sh


assert_command_exists () {
	command -v $1 >/dev/null 2>&1 || { echo "I require $1 but it's not installed.  Aborting." >&2; exit 1; }
}

assert_command_exists node
assert_command_exists yarn
assert_command_exists git
assert_command_exists pandoc
assert_command_exists pdflatex

echo "Found all dependencies..."

# TODO: select which modules to add
git submodule update --init --recursive

install_yarn_deps() {
	cd $1
	yarn install
	cd ..
}

yarn
install_yarn_deps asciimathml-pandocfilter
install_yarn_deps lev2
install_yarn_deps mermaid-filter

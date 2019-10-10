echo "rust setup ..."

curl https://sh.rustup.rs -sSf | sh
rustup update

brew install cargo-completion

echo "$(rustc --version)"

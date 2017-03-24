gc() {
  git clone "https://github.com/$1/$2"
}

ggi() {
  wget "https://raw.githubusercontent.com/github/gitignore/master/$1.gitignore" -O .gitignore
}

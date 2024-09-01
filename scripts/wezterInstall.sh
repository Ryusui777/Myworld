
# Function to detect the Linux distribution
detect_distro() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$ID"
  elif [ -f /etc/redhat-release ]; then
    echo "redhat"
  elif [ -f /etc/debian_version ]; then
    echo "debian"
  else
    echo "unknown"
  fi
}

# Detect the distribution
DISTRO=$(detect_distro)

# Take actions based on the distribution
case $DISTRO in
  ubuntu|debian)
    sudo apt-get update
    sudo apt install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm
    ;;
  fedora)
    sudo dnf install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm
    ;;
  arch)
    sudo pacman -Syu package-name
    ;;
  redhat)
    sudo yum install -y https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203_110809_5046fc22-1.fedora39.x86_64.rpm
    ;;
  *)
    echo "Unknown distribution. Cannot proceed."
    ;;
esac


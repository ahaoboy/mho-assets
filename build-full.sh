targets=(
  "aarch64-apple-darwin"
  "x86_64-pc-windows-msvc"
  "x86_64-pc-windows-gnu"
  "x86_64-unknown-linux-gnu"
  "x86_64-unknown-linux-musl"
  "aarch64-unknown-linux-gnu"
  "aarch64-unknown-linux-musl"
)

geo=(
    "geoip.metadb.tar.gz"
    # "geoip.dat.tar.gz"
    # "geosite.dat.tar.gz"
)

ui=(
  "mho-ui.tar.gz"
)


REPO="https://github.com/ahaoboy/mho-assets"
RELEASE="https://github.com/ahaoboy/mho-assets/releases/download/nightly"
build() {
    local target="$1"
    echo "build $target"

    CONFIG_DIR="$target/mho_config/MhoUI"
    mkdir -p "./$CONFIG_DIR"

    ei $REPO --name mho --target $target --dir "./$target" --fuzzy
    ei $REPO --name mihomo --target $target --alias Mihomo --dir "./$CONFIG_DIR" --fuzzy

    for name in "${geo[@]}"; do
        url="$RELEASE/$name"
        ei $url --dir "./$CONFIG_DIR"
    done

    for name in "${ui[@]}"; do
        url="$RELEASE/$name"
        local base="${name%.tar.gz}"
        ei $url --dir "./$CONFIG_DIR"
    done

    cd "$target"
    tar -cJf "../mho-full-${target}.tar.xz" .
    cd ..
    rm -rf "./$target"
}

for target in "${targets[@]}"; do
    build $target
done

ls -lh *.xz

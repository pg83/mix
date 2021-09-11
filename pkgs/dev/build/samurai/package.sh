# dep dev/build/make env/std
{% include 'version.sh' %}

build() {
    $unzip $src/*.zip && cd sam*

    export CPPFLAGS="-Dwarn=samu_warn $CPPFLAGS"

    setup_compiler

    make PREFIX=$out CC=clang
    make PREFIX=$out install

    cd $out/bin && ln -s samu ninja
}

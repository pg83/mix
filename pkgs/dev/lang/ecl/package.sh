{% extends '//util/make.sh' %}

{% block fetch %}
# url https://common-lisp.net/project/ecl/static/files/release/ecl-21.2.1.tgz
# md5 0c9e0437dbf3a7f1b00da32b7794a3b0
{% endblock %}

{% block deps %}
# bld lib/boehmgc lib/gmp lib/ffi
# bld dev/build/make env/std
{% endblock %}

{% block postunpack %}
mkdir build && cd build
{% endblock %}

{% block configure %}
dash ../src/configure ${COFLAGS} \
    --enable-threads=yes \
    --enable-libatomic=system \
    --enable-gmp=system \
    --with-gmp-prefix=$lib_gmp \
    --with-libffi-prefix=$lib_ffi \
    --enable-boehm=yes \
    --with-libgc-prefix=$lib_boehmgc \
    --disable-shared \
    --enable-static \
    --prefix=${out} \
    --srcdir="$(pwd)/../"
{% endblock %}

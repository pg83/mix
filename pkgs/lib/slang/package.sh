{% extends '//util/autohell.sh' %}

{% block fetch %}
# url https://storage.yandexcloud.net/mix-cache/slang-2.3.2.tar.bz2
# md5 c2d5a7aa0246627da490be4e399c87cb
{% endblock %}

{% block deps %}
# lib lib/z lib/pcre lib/iconv lib/readline lib/oniguruma
# bld dev/build/make env/std
{% endblock %}

{% block coflags %}
--with-readline=gnu
--without-png
{% endblock %}

{% block build %}
make install-static
{% endblock %}

{% block install %}
{% endblock %}

{% block env %}
export SLANG_CFLAGS="-I${out}/include"
export SLANG_LIBS="-L${out}/lib -lslang"
export CPPFLAGS="\${SLANG_CFLAGS} \${CPPFLAGS}"
export LDFLAGS="\${SLANG_LIBS} \${LDFLAGS}"
export PKG_CONFIG_PATH="${out}/lib/pkgconfig:\${PKG_CONFIG_PATH}"
{% endblock %}

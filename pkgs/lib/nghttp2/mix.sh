{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/nghttp2/nghttp2/releases/download/v1.43.0/nghttp2-1.43.0.tar.xz
# md5 c1d607bf3830000acd7a51f0058f4bd2
{% endblock %}

{% block deps %}
# lib lib/z/mix.sh
# lib lib/c-ares/mix.sh
# lib lib/openssl/mix.sh
# bld dev/build/make/mix.sh
# bld dev/build/pkg-config/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block coflags %}
--enable-lib-only
{% endblock %}
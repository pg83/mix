{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz
# md5 b5333f021f880fe76490d8a799cd79f4
{% endblock %}

{% block deps %}
# lib lib/openssl/mix.sh
# bld dev/build/pkg-config/mix.sh
# bld dev/build/make/mix.sh
# bld dev/lang/python/3/minimal/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block toolconf %}
ln -s $(command -v python3) python
{% endblock %}

{% block env %}
export COFLAGS="--with-libevent=${out} \${COFLAGS}"
{% endblock %}
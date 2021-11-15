{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/PhilipHazel/pcre2/archive/refs/tags/pcre2-10.39.tar.gz
c296b9ad214136b814e9ecbbf22d3c42
{% endblock %}

{% block bld_deps %}
lib/z/mix.sh
lib/bzip2/mix.sh
dev/build/autoconf/2.69/mix.sh
dev/build/automake/1.16.3/mix.sh
{{super()}}
{% endblock %}

{% block autoreconf %}
dash ./autogen.sh
{% endblock %}

{% block coflags %}
--enable-pcre2grep-libz
--enable-pcre2grep-libbz2
--enable-newline-is-anycrlf
--enable-utf8
--enable-jit
--enable-c++
{% endblock %}
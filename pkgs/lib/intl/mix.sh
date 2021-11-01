{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/pub/gnu/gettext/gettext-0.21.tar.gz
# md5 28b1cd4c94a74428723ed966c38cf479
{% endblock %}

{% block deps %}
# lib lib/iconv/mix.sh
# lib {{'sys/framework/CoreFoundation/package.py' | darwin}}
# bld env/c/mix.sh
# bld boot/final/env/tools/mix.sh
{% endblock %}

{% block postunpack %}
cd gettext-runtime
{% endblock %}

{% block cflags %}
export CPPFLAGS="-Dlocale_charset=intl_locale_charset ${CPPFLAGS}"
{% endblock %}

{% block coflags %}
--with-included-gettext
--enable-relocatable
--disable-c++
--disable-libasprintf
{% endblock %}

{% block env %}
export COFLAGS="--with-libintl-prefix=${out} \${COFLAGS}"
{% endblock %}
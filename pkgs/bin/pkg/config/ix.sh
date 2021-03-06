{% extends '//die/autohell.sh' %}

{% block fetch %}
https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz
f6e931e319531b736fadc017f470e68a
{% endblock %}

{% block bld_libs %}
lib/c
lib/intl
lib/glib/pure
{% endblock %}

{% block configure_flags %}
--disable-host-tool
{% endblock %}

{% block env %}
export PKG_CONFIG="${out}/bin/pkg-config"
export PKG_PROG_PKG_CONFIG="${out}/share/aclocal/pkg.m4"
{% endblock %}

{% block test %}
. ${out}/env

cat ${PKG_PROG_PKG_CONFIG}
{% endblock %}

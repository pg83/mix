{% extends '//die/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/pub/gnu/gettext/gettext-0.21.tar.gz
28b1cd4c94a74428723ed966c38cf479
{% endblock %}

{% block lib_deps %}
lib/c
lib/iconv
{% endblock %}

{% block unpack %}
{{super()}}
cd libtextstyle
{% endblock %}

{% block env_lib %}
export COFLAGS="--with-libtextstyle-prefix=${out} \${COFLAGS}"
{% endblock %}

{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/libffi/libffi/archive/refs/tags/v3.4.2.tar.gz
f2e272ec793571f28d52006ad14534c4
{% endblock %}

{% block bld_libs %}
{{'lib/linux/mix.sh' | linux}}
{% endblock %}

{% block bld_tool %}
gnu/file/mix.sh
gnu/sed/mix.sh
dev/build/autoconf/2/69/mix.sh
dev/build/automake/1.16.3/mix.sh
dev/doc/texinfo/mix.sh
{% endblock %}

{% block std_env %}
env/std/0/mix.sh
{% endblock %}

{% block autoreconf %}
dash autogen.sh
{% endblock %}

{% block env %}
export COFLAGS="--with-system-ffi=yes --with-libffi-prefix=${out} \${COFLAGS}"
{% endblock %}

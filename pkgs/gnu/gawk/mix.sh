{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://mirror.tochlab.net/pub/gnu/gawk/gawk-5.1.0.tar.xz
8470c34eeecc41c1aa0c5d89e630df50
{% endblock %}

{% block bld_libs %}
lib/intl/mix.sh
lib/iconv/mix.sh
lib/sigsegv/mix.sh
{% endblock %}

{% block std_env %}
env/std/0/mix.sh
{% endblock %}

{% block bld_tool %}
boot/final/env/bison/mix.sh
{% endblock %}

{% block setup %}
export CPPFLAGS="-Derr=gawk_err -Dxmalloc=gawk_xmalloc -Dxrealloc=Dgawk_xrealloc -Dregcomp=gawk_regcomp -Dregfree=gawk_regfree ${CPPFLAGS}"
{% endblock %}

{% block configure_flags %}
--libexecdir=${out}/bin/awk_exec
--disable-extensions
{% endblock %}

{% block test %}
export PATH="${out}/bin:${PATH}"
cd test
make basic
{% endblock %}

{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/gdbm/gdbm-1.19.tar.gz
aeb29c6a90350a4c959cd1df38cd0a7e
{% endblock %}

{% block bld_libs %}
lib/intl/mix.sh
lib/iconv/mix.sh
lib/readline/mix.sh
{% endblock %}

{% block std_env %}
env/std/0/mix.sh
{% endblock %}

{% block bld_tool %}
boot/final/env/bison/mix.sh
{% endblock %}

{% block coflags %}
--enable-libgdbm-compat
--with-readline
{% endblock %}

{% block install %}
{{super()}}
cd ${out}/lib && ln -s libgdbm_compat.a libdbm.a
{% endblock %}

{% block env %}
export COFLAGS="--with-gdbm=${out} \${COFLAGS}"
{% endblock %}

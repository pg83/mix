{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://src.fedoraproject.org/repo/pkgs/zip/zip30.tar.gz/7b74551e63f8ee6aab6fbc86676c0d37/zip30.tar.gz
7b74551e63f8ee6aab6fbc86676c0d37
{% endblock %}

{% block bld_deps %}
env/std/0/mix.sh
{% endblock %}

{% block make_flags %}
-f unix/Makefile
BINDIR="${out}/bin"
MANDIR="${out}/man"
{% endblock %}

{% block setup %}
export CPPFLAGS="-I. -DUNIX ${CPPFLAGS}"
{% endblock %}

{% block make_target %}
zips
{% endblock %}

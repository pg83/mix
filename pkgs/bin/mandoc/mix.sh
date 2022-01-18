{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
http://mandoc.bsd.lv/snapshots/mandoc-1.14.6.tar.gz
f0adf24e8fdef5f3e332191f653e422a
{% endblock %}

{% block bld_libs %}
lib/c
lib/z
{% endblock %}

{% block configure %}
{{super()}}
sed -e "s|/usr/local|${out}|" -i Makefile.local
{% endblock %}
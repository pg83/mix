{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
http://mirror.tochlab.net/pub/gnu/autoconf-archive/autoconf-archive-2021.02.19.tar.xz
4f06adfbe3f1a2dada06066cf460e5ab
{% endblock %}

{% block bld_deps %}
dev/doc/texinfo/mix.sh
env/std/0/mix.sh
{% endblock %}
{% extends '//die/autorehell.sh' %}

{% block fetch %}
https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz
61fba141303aeaf8d9a6931d247f2f4a
{% endblock %}

{% block bld_libs %}
lib/c
lib/event
lib/curses
lib/utf8proc
{% endblock %}

{% block bld_tool %}
bld/byacc
{% endblock %}

{% block configure_flags %}
--enable-utf8proc
{% endblock %}

{% block enable_static %}
{% endblock %}

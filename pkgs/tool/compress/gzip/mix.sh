{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/gzip/gzip-1.10.tar.xz
# md5 691b1221694c3394f1c537df4eee39d3
{% endblock %}

{% block deps %}
# bld env/std/mix.sh
{% endblock %}

{% block coflags %}
--disable-gcc-warnings
{% endblock %}
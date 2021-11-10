{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://storage.yandexcloud.net/mix-cache/dropbear-2020.81.tar.bz2
a07438a6159a24c61f98f1bce2d479c0
{% endblock %}

{% block bld_deps %}
lib/z/mix.sh
lib/tom/math/mix.sh
lib/tom/crypt/mix.sh
env/autohell/mix.sh
{% endblock %}

{% block enable_static %}
{% endblock %}

{% block coflags %}
--disable-bundled-libtom
{% endblock %}
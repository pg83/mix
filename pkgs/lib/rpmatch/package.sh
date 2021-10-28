{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/pullmoll/musl-rpmatch/archive/refs/tags/v1.0.tar.gz
# md5 8f5a5022fa66d94b7b0934618dfa6350
{% endblock %}

{% block deps %}
# bld dev/build/automake/1.16.3 dev/build/make env/std
{% endblock %}

{% block autoreconf %}
dash ./bootstrap.sh
{% endblock %}

{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url http://deb.debian.org/debian/pool/main/f/file/file_5.39.orig.tar.gz
# md5 1c450306053622803a25647d88f80f25
{% endblock %}

{% block bld_deps %}
env/std/0/mix.sh
{% endblock %}

{% block postinstall %}
rm -rf ${out}/lib ${out}/include
{% endblock %}

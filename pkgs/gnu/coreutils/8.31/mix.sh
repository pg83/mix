{% extends '//gnu/coreutils/template/mix.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/coreutils/coreutils-8.31.tar.xz
# md5 0009a224d8e288e8ec406ef0161f9293
{% endblock %}

{% block coreutils_deps_extra %}
dev/lang/byacc/mix.sh
{% endblock %}

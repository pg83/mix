{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/libidn/libidn-1.38.tar.gz
718ff3700dd71f830c592ebe97249193
{% endblock %}

{% block lib_deps %}
lib/intl/mix.sh
lib/unistring/mix.sh
{% endblock %}

{% block env %}
export COFLAGS="--with-libidn=${out} \${COFLAGS}"
{% endblock %}
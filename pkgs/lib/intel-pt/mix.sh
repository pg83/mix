{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
# url https://github.com/intel/libipt/archive/refs/tags/v2.0.4.tar.gz
# md5 cf2c97292dc61ea898dd84b460921f79
{% endblock %}

{% block deps %}
# bld dev/build/cmake/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block env %}
export COFLAGS="--with-libipt-prefix=${out} \${COFLAGS}"
{% endblock %}
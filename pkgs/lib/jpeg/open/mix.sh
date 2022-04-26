{% extends '//mix/cmake.sh' %}

{% block fetch %}
https://github.com/uclouvain/openjpeg/archive/refs/tags/v2.4.0.tar.gz
4d388298335947367e91f1d100468af1
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block cmake_flags %}
BUILD_JPIP=ON
BUILD_PKGCONFIG_FILES=ON
{% endblock %}

{% block install %}
{{super()}}

cd ${out}/lib

ln -s openjpeg-2.4 cmake

echo > cmake/OpenJPEGTargets.cmake

cd pkgconfig

for i in *.pc; do
    sed -e 's|bindir.*||' -i ${i}
done
{% endblock %}

{% block env_lib %}
export CPPFLAGS="-I${out}/include/openjpeg-2.4 \${CPPFLAGS}"
{% endblock %}

{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
https://github.com/oneapi-src/oneTBB/archive/refs/tags/v2021.4.0.tar.gz
fa317f16003e31e33a57ae7d888403e4
{% endblock %}

{% block lib_deps %}
lib/c++/mix.sh
{% endblock %}

{% block toolconf %}
ln -s $(command -v llvm-install-name-tool) install_name_tool
{% endblock %}

{% block cmflags %}
-DTBB_TEST=OFF
-DTBB_STRICT=OFF
-DTBBMALLOC_BUILD=OFF
{% endblock %}

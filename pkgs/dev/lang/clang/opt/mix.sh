{% extends '//mix/template/hub.sh' %}

{% block run_deps %}
dev/lang/clang/mix.sh(boot_std_env=boot/final/env/std/mix.sh,opt=O2;ICF;LTO)
{% endblock %}

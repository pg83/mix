{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://releases.pagure.org/xmlto/xmlto-0.0.28.tar.bz2
93bab48d446c826399d130d959fe676f
{% endblock %}

{% block bld_libs %}
lib/xslt/mix.sh
{% endblock %}

{% block bld_tool %}
gnu/getopt/mix.sh
dev/lang/flex/mix.sh
{% endblock %}

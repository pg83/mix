{% extends '//shell/cli/bash/template/template.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/bash/bash-5.1.8.tar.gz
23eee6195b47318b9fd878e590ccb38c
{% endblock %}

{% block patch %}
rm y.tab* lib/intl/plural.c

bison -d parse.y

mv parse.tab.c y.tab.c
mv parse.tab.h y.tab.h

{{super()}}
{% endblock %}

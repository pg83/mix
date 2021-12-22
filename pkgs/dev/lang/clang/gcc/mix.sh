{% extends '//dev/lang/clang/mix.sh' %}

{% block patch %}
sed -e 's|__SSE2__|__NOPE__|g' -i clang/lib/Lex/Lexer.cpp

patch -p1 << EOF
{% include '00.diff' %}
EOF

patch -p1 << EOF
{% include '01.diff' %}
EOF

{{super()}}
{% endblock %}

{% block setup %}
export CPPFLAGS="-w ${CPPFLAGS}"
{{super()}}
{% endblock %}

{% block cmake_flags %}
{{super()}}
LLVM_TARGETS_TO_BUILD={{target.llvm_target}}
{% endblock %}

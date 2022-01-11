{% extends '//mix/template/c_std.sh' %}

{% block step_unpack %}
: nothing to unpack
{% endblock %}

{% block lib_deps %}
lib/dazzle
{% endblock %}

{% block build %}
clang++ -c -o reg.o -x c++ - << EOF
extern "C" void dzl_get_resource();

namespace {
    static struct Reg {
        Reg() {
            dzl_get_resource();
        }
    } REG;
}
EOF
{% endblock %}

{% block install %}
mkdir ${out}/lib; cp reg.o ${out}/lib/
{% endblock %}

{% block env %}
export LDFLAGS="${out}/lib/reg.o \${LDFLAGS}"
{% endblock %}
{% extends '//mix/template/c_std.sh' %}

{% block fetch %}
https://nav.dl.sourceforge.net/project/sbcl/sbcl/2.1.7/sbcl-2.1.7-source.tar.bz2
3f
{% endblock %}

{% block bld_libs %}
lib/z
{% if target.os == 'linux' %}
lib/linux
{% endif %}
{% endblock %}

{% block bld_tool %}
lib/dlfcn/scripts
bin/make
{% block boot_lisp_dep %}
bin/ecl
{% endblock %}
{% endblock %}

{% block patch %}
sed -e 's/lispobj \*static_code_space_free_pointer/extern lispobj \*static_code_space_free_pointer/' -i src/runtime/globals.h
sed -e 's/size_t os_vm_page_size/extern size_t os_vm_page_size/' -i src/runtime/arm64-bsd-os.c

cat << EOF | python3 $(which gen_dl_stubs.py) sbcl > symbols.cpp
{% include 'symbols' %}
EOF
{% endblock %}

{% block boot_lisp %}
ecl -norc
{% endblock %}

{% block build %}
clang -c symbols.cpp -o ${tmp}/symbols.o

export LDLIBS="${tmp}/symbols.o"

ulimit -s 60000

sh make.sh \
    --prefix=${out} \
    --xc-host='{{self.boot_lisp().strip()}}' \
    --with-sb-ldb \
    --with-sb-thread \
    --with-sb-core-compression \
    --with-os-provides-dlopen
{% endblock %}

{% block install %}
sh install.sh
{% endblock %}
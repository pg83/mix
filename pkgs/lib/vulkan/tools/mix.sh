{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
https://github.com/KhronosGroup/Vulkan-Tools/archive/refs/tags/v1.2.201.tar.gz
bf84db0b41149f391066c2c7297dbdb3
{% endblock %}

{% block bld_libs %}
lib/mesa/drivers/mix.sh
lib/vulkan/loader/mix.sh
lib/vulkan/headers/mix.sh
{% endblock %}

{% block bld_tool %}
lib/vulkan/glslang/mix.sh
dev/build/pkg-config/mix.sh
lib/wayland/protocols/mix.sh
{% endblock %}

{% block cmake_flags %}
-DBUILD_ICD=NO
-DBUILD_WSI_XCB_SUPPORT=OFF
-DBUILD_WSI_XLIB_SUPPORT=OFF
-DCUBE_WSI_SELECTION=WAYLAND
{% endblock %}
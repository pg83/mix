{% extends '//mix/cmake.sh' %}

{% block fetch %}
https://github.com/telegramdesktop/tdesktop/releases/download/v3.7.2/tdesktop-3.7.2-full.tar.gz
sha:46ee1e533b36eb785e23983ab9771297d1eeec61d1ba926c7baa35bb158ff083
{% endblock %}

{% block ninja_threads %}8{% endblock %}

{% block bld_libs %}
lib/c
lib/z
lib/lz4
lib/c++
lib/vpx
lib/opus
lib/gsl/ms
lib/xxhash
lib/openal
lib/tg/owt
lib/tg/voip
lib/openssl
lib/minizip
lib/dispatch
lib/range/v3
lib/ffmpeg/4
lib/qt/6/svg
lib/expected
lib/k/wayland
lib/qt/6/base
lib/drivers/3d
lib/mesa/gl/dl
lib/mesa/egl/dl
lib/qt/6/compat
lib/qt/6/wayland
lib/xiph/rnnoise
lib/mesa/glesv2/dl
lib/qt/6/imageformats
lib/{{allocator}}/trim(delay=1,bytes=10000000)
{% endblock %}

{% block build_flags %}
shut_up
{% endblock %}

{% block setup %}
export CPPFLAGS="-I${PWD} -I${PWD}/Telegram/ThirdParty/libtgvoip ${CPPFLAGS}"
export ALLCFLAGS="${CPPFLAGS} ${CFLAGS} ${CXXFLAGS}"
{% endblock %}

{% block cmake_flags %}
DESKTOP_APP_DISABLE_CRASH_REPORTS=ON
DESKTOP_APP_DISABLE_JEMALLOC=ON
DESKTOP_APP_USE_PACKAGED=ON
DESKTOP_APP_QT6=ON

DESKTOP_APP_DISABLE_DBUS_INTEGRATION=ON
DESKTOP_APP_DISABLE_SPELLCHECK=ON
DESKTOP_APP_DISABLE_X11_INTEGRATION=ON

TDESKTOP_API_ID=17349
TDESKTOP_API_HASH=344583e45741c457fe1862106095a5eb
TDESKTOP_LAUNCHER_BASENAME=telegram-desktop

QT_ADDITIONAL_PACKAGES_PREFIX_PATH=${CMAKE_PREFIX_PATH}
{% endblock %}

{% block bld_tool %}
bld/qt/6
bin/gcc/11
bld/python
bin/binutils
bld/pkg/config
bin/wayland/protocols
{% endblock %}

{% block setup_tools %}
CC=$(which clang++)

cat << EOF > clang++
#!$(which sh)
${CC} "\${@}" || ${bin_gcc_11}/bin/g++ "\${@}" ${ALLCFLAGS}
EOF

chmod +x clang++
{% endblock %}

{% block patch %}
sed -e 's| AND NOT DESKTOP_APP_QT6||' -i cmake/external/kwayland/CMakeLists.txt

find . -type f | while read l; do
    sed -e 's|third_party/libyuv/include/||' -i "${l}"
done

sed -e 's|Q_OS_LINUX|SHIT|' -i Telegram/lib_base/base/platform/linux/base_info_linux.cpp

cat - Telegram/SourceFiles/core/local_url_handlers.cpp << EOF > _
#include <Telegram/lib_ui/ui/widgets/scroll_area.h>
EOF

mv _ Telegram/SourceFiles/core/local_url_handlers.cpp

cat - Telegram/SourceFiles/settings/settings_main.cpp << EOF > _
#include <Telegram/lib_ui/ui/widgets/scroll_area.h>
EOF

mv _ Telegram/SourceFiles/settings/settings_main.cpp

>Telegram/lib_ui/ui/text/qtextitemint.cpp

sed -e 's|.*DESKTOP_APP_USE_PACKAGED.*||' \
    -e 's|.*Xcb.*||' \
    -e 's|.*Gtk3Theme.*||' \
    -e 's|.*NimfInput.*||' \
    -i cmake/external/qt/qt_static_plugins/qt_static_plugins.cpp
{% endblock %}

{% block configure %}
{{super()}}
find ${tmp} -type f | while read l; do
    sed -e 's|-Xclang||g' -e 's|-include-pch.*hxx.pch||' -i "${l}"
done
{% endblock%}
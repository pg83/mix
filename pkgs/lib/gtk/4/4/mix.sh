{% extends '//lib/gtk/t/mix.sh' %}

{% block fetch %}
https://download.gnome.org/sources/gtk/4.4/gtk-4.4.1.tar.xz
f3661ba9a9e6805172c776c9c0a3b73c
{% endblock %}

{% block meson_flags %}
x11-backend=false
media-ffmpeg=disabled
media-gstreamer=disabled
{% endblock %}

{% block env %}
export CMFLAGS="-DUSE_GTK4=ON \${CMFLAGS}"
{% endblock %}
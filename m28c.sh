# use dhcpcd

# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argone/g' ./feeds/luci/collections/luci/Makefile
# Enable ccache accelerate
echo "CONFIG_CCACHE=y" >> ./.config
## Search for Intel® Edison Board Software Package
## Sources of fix : https://communities.intel.com/thread/59540

wget "https://downloadmirror.intel.com/25028/eng/edison-src-ww25.5-15.tgz"
tar -xvzf edison-src-ww25.5-15.tgz
cd edison-src
make setup

#Modify ./out/linux64/build/conf/local.conf to
vim ./out/linux64/poky/meta/recipes-core/ncurses/ncurses.inc
#Add the following line #ncurses fails without this
BUILD_CPPFLAGS += "-P"

vim ./out/linux64/poky/meta/recipes-devtools/elfutils/elfut
ils_0.158.bb 


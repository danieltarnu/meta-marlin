PACKAGECONFIG[qt5] = '--enable-qt \
                      --with-uic="${STAGING_DIR_NATIVE}/usr/bin/qt5/uic" \
                      --with-rcc="${STAGING_DIR_NATIVE}/usr/bin/qt5/rcc" \
                     ,--disable-qt,qtbase qtdeclarative qtbase-native qtx11extras'

CODE="fastest-magento2-v2.2.5"
OUTPUT="$(pwd)"
ROOT="$(basename "${OUTPUT}")"
echo "============ create ${CODE} full package =============="
rm -rf build/*
mkdir build/tmp
cp -r * build/tmp
cd build/tmp
rm app/etc/config.php
rm app/etc/env.php
rm -rf var
rm -rf pub/static/frontend/
rm -rf pub/static/adminhtml/
rm -rf generated
rm -rf db
rm -rf pub/media/catalog/product
rm -rf build
rm -rf node_modules
rm -rf pub/media/blog/cache
rm -rf pub/media/codazon/slideshow/cache
rm -rf pub/media/codazon_cache
rm -rf pub/media/import
zip -r "${CODE}-fullpackage.zip" *
mv "${CODE}-fullpackage.zip" ..
echo "============ create ${CODE} theme package =============="
rm *.*
rm -rf bin/ dev/ lib/ phpserver/ setup/ update/ vendor/
rm pub/*.*
rm -rf pub/errors/ pub/opt/ pub/static/
rm app/*.*
rm -rf app/etc/
rm -rf pub/media/codazon/lookbook/category
rm -rf pub/media/codazon/lookbook/item
rm -rf pub/media/codazon/lookbook/item_element
rm -rf pub/media/codazon/lookbook/tmp
zip -r "${CODE}-themepackage.zip" *
mv "${CODE}-themepackage.zip" ..
echo "============ create ${CODE} products images =============="
mkdir pub
mkdir pub/media
mkdir pub/media/catalog
cp -r ../../pub/media/catalog/ pub/media/catalog/
zip -r "${CODE}-product-images.zip" *
mv "${CODE}-product-images.zip" ..

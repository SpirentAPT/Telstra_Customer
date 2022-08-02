# zip and itar the contents
for f in *; do
    if [ -d ${f} ]; then
        echo $f
        cd $f
        if [ -f "velocity_manifest.json" ]; then
            ext="zip"
        else
            ext="itar"
        fi
        zip -qFSr ../$f.$ext ./        
        #if [ $f.$ext != ap_untrusted.foo.zip ]; then
        #    jarsigner -storepass $ndoJksPassword -keystore ~/jenkins\@ub-build1-demos.jks ../$f.$ext jenkins@ub-build1-demos        
        #fi
        cd ..
    fi
done

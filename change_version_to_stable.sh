grep -rEl --exclude=*/target/* --exclude=*/src-gen/* --include=*.{yaml,xml,MF} "0.5.0.qualifier" * | xargs sed -i "" "s/0.5.0.qualifier/0.5.1/g"
grep -rEl --exclude=*/target/* --exclude=*/src-gen/* --include=*.{yaml,xml,MF} "0.5.0-SNAPSHOT" * | xargs sed -i "" "s/0.5.0-SNAPSHOT/0.5.1/g"

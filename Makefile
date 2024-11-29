#!/usr/bin/make -f

.PHONY=build clean manifest

CHANGELOG=usr/share/doc/teacats-zonefiles/changelog.Debian.gz

build: $(CHANGELOG)
	@true

clean:
	@rm -vrf "usr"

manifest:
	@true

$(CHANGELOG): CHANGELOG
	@mkdir -vp "$(dir $@)"
	gzip --keep "$^" --stdout >"$@"

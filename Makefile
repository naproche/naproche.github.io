build: $(patsubst content/%,build/%,$(shell find content -type f))

clean:
	rm -fr build

build/%.html: content/%.html resources/header.html resources/footer.html Makefile
	@mkdir -p $(dir $@)
	sed -E 's|(href="$(subst content/,,$<))|class="youarehere" \1|' resources/header.html | cat - $< resources/footer.html > $@
	cp -rf assets/* build


build/%: content/%
	cp $< $@

# Deploy to gh-pages branch according to
# https://sangsoonam.github.io/2019/02/08/using-git-worktree-to-deploy-github-pages.html
deploy:
	git worktree add deploy gh-pages
	cp -rf build/* deploy
	cd deploy && \
	  git add --all && \
	  git commit -m "Deploy to GitHub Pages" && \
	  git push origin gh-pages
	git worktree remove deploy

# Automatic rebuilds:
watch:
	find content resources/header.html resources/footer.html Makefile | entr make

# Local webserver
serve:
	python -m http.server -d build

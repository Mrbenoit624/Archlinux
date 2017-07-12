Latex=pdflatex
Doc=install.pdf
EPS=images/Alsamixer.eps  images/cfdisk.eps  images/fstab.eps  images/grub.eps  images/iwconfig.eps  images/mc.eps  images/pacstrapbase.eps  images/syslinux.eps  images/usb_boot.eps  images/wifi-menu.eps

all:$(Doc)

eps:$(EPS)


%.eps:%.jpg
	convert $< eps2:$@

%.eps:%.jpe
	convert $< eps2:$@

%.eps:%.png
	convert $< eps2:$@

%.pdf:%.tex
	xelatex $<

view:$(Doc)
	zathura $<

clean:
	$(RM) *.pdf *.aux *.log *.out *.toc images/*.eps

commit:$(DOC)
	$(RM) *.aux *.log *.out *.toc

.PHONY:
	all $(DOC) view clean

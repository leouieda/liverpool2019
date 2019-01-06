.PHONY: seed serve

serve:
	python -m http.server 8000

seed:
	ffmpeg -i video/seed/chset%04d.png -start_number 0 -r 20 -vcodec libx264 -pix_fmt yuv420p -crf 20 video/planting-inversion.mp4

.PHONY: tour serve

serve:
	python -m http.server 8000

tour:
	ffmpeg -i video/tour/tour-%06d.png -start_number 20 -framerate 20 -vcodec libx264 -pix_fmt yuv420p -crf 25 video/where-has-leo-been.mp4

seed:
	ffmpeg -i video/seed/chset%04d.png -start_number 0 -r 20 -vcodec libx264 -pix_fmt yuv420p -crf 20 video/planting-inversion.mp4

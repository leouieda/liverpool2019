.PHONY: tour serve

serve:
	python -m http.server 8000

tour:
	ffmpeg -i tour/tour-%06d.png -start_number 20 -r 20 -vcodec libx264 -pix_fmt yuv420p -crf 25 tour.mp4

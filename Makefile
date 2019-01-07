.PHONY: seed serve
FFMPEG_ARGS=-r 30 -vcodec libx264 -pix_fmt yuv420p -crf 20

serve:
	python -m http.server 8000

seed:
	# First r is how many pictures per second
	ffmpeg -r 60 -i video/seed/chset%04d.png -start_number 0 $(FFMPEG_ARGS) part1.mp4
	ffmpeg -loop 1 -i video/seed/chset0249.png -t "0.5" $(FFMPEG_ARGS) part2.mp4
	echo "file 'part1.mp4'" > list.txt
	echo "file 'part2.mp4'" >> list.txt
	ffmpeg -f concat -i list.txt -c copy video/planting-inversion.mp4
	rm list.txt part*.mp4

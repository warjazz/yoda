notes = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
clockTic = [262,277,294,311,330,349,370,392,415,440,466,494]
resolution = 4096
masterClock = 100000000
half = masterClock//2
for i in range(0, len(clockTic), 1):
	print notes[i] + "\t" + str(clockTic[i]) + "\t" + str(half/(clockTic[i]* resolution))

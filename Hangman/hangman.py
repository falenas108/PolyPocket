import random


def isinword(word, guess):
	correct=[]
	for j in range(len(word)):
		if guess.lower() == word[j].lower():
			correct.append(j)
	return correct

def deadman(man, wrong):
	for i in range(wrong):
		print (man[i])
	return 

with open('20k.txt') as f:
	wordlist=f.readlines()
word = ""
while len(word)<4:
	word = wordlist[random.randint(0,len(wordlist)-1)]
man = [' O','\\ /', ' |','/ \\', '_____', 'DEAD']
wordtracker = ['_' for i in range(len(word)-1)]
wrong = 0

while wrong < 6:
	deadman(man,wrong)
	print (' '.join(wordtracker))
	guess = input("Guess a letter! ")
	correct = isinword(word, guess)
	if len(correct) == 0:
		print ("Nope! ")
		wrong += 1
	else:
		for k in correct:
			wordtracker[k] = guess
	if '_' not in wordtracker:
		print ("You win!")
		break
print ("The word is {0}" .format(word))
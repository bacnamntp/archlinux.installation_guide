##################################################################
##	01. Navigating controls h, j, k, l, ESC, [0-9]
##
##################################################################
Hello!

Click this region to activate me and start learning about Vim!

Let's jump right to it!

Vim is a "modal editor", meaning it has different modes. 

When you open vim, it opens in COMMAND mode. 
If you ever find Vim in a different mode (or if your controls are acting wonky), simply press ESC to re-activate COMMAND mode.

Great! We'll start with basic navigation. 

To move around in Vim, press:

     ^
     k

< h     l >

     j
     v
     
l - move right
h - move left
j - move down
k - move up

Time to practice!
Try going right (l) and left (h).
Now try moving down (j)!
Let's move back up (k).

Stray away from the [[arrow keys]]!
It may seem easier to use the arrow keys, but those two seconds you take to move over to use them can actually add up to a lot on the course of your programming career! 

Let's try navigating through this haiku:
  Yay, we are learning
how to navigate with Vim
  This is so much fun!

We can make moving around more efficient using a numerical modifier.
Simply precede the command with an value [0-9].
For example, pressing '4h' moves 4 characters to the left.

##################################################################
##	02. Navigating words web, WEB
##
##################################################################

To navigate through words in a line:
w - navigate to the beginning of the next word
W - same as w, beginning of the next WORD, which ignores punctuations.

What's the difference between a word and WORD?
A word includes punctuations, while a WORD does not.
Try navigating through the following:
1-800-555-1234
My sister's boyfriend's mother.

// Now with some simple java code
for (int i = 0; i < 10; i++) {
    System.out.println("I love vim's navigation tools.");
}

To navigate to the end of the word/WORD:
e - to the last letter of the next word
E - same as e, ignoring punctuations

# now navigate through a simply Python function
def square(x):
    return x ** 2

Not to go back a word:
b - navigate back to the beginning of a word
B - same as b, ignoring punctuations 

<!-- HTML for web developers ;) -->
<p>Hello I am a block paragraph. <b>Don't mess with me</b>.</p>

Review Questions:
1) How do you activate COMMAND mode?
2) How many words is 192.168.1.1? How many WORDs is it?
3) How would you move to the fourth word forward? How about the third WORD back?




Solutions
1) ESC for command mode.
2) 7 words, 1 WORD.
3) 4w, 3B.

##################################################################
##	03. Navigating lines $, 0, ^, g_, -, +
##
##################################################################
We can navigate much more efficiently by navigating through lines.

Use the following keys to move to:
$ - end of line
0 - beginning of line

Notice that some lines are really long, and thus wrap around.
To see which lines are wrapped around, simply look at the line number to the left.

Try navigating to the end of the line in this sentence.

In the case where the line begins with with white space, use:
^ - first non-white space at the beginning of line
g_ - first non-white space at end of line (this doesn't work in this interface, but it should when using external Vim).

# Try using the above commands in a simple python code, which loves to use white space.
def fib(n):
    if n < 2:
        return n
    return fib(n-2) + fib(n-1)

You may also navigate through lines with indentations with the - and + keys:
- - moves up to the first non-whitespace character
+ - moves down to the first non-whitespace character

Notice that for "+" you have to press shift, then the "=" sign. 
In Vim terms, that's just too much work. 
What we can use instead is the [return] key. 

Try navigating through
    the first letters
       of this
  tricky
       paragraph!

Challenge!

Review Questions:
1) NavigatE Through This Line HittinG Only The CapitalizeD letteR.
2) How would you ignore punctuations while navigating through words?





Solutions
1) (starting from the 1) Wewwwwewwwee
2) Use the upper-case counterparts - WEB.


(scroll down for answer)


Solutions:
2) It's fast, lightweight, and available on almost every computer.

##################################################################
##	04. Navigating sentences and paragraphs {, } (braces), (, ) (parantheses)
##
##################################################################

Now let's see how to navigate through sentences or big blocks of code!

Use these keys to wade through sentences in a paragraph:
( - start of sentence
) - end of sentence

(Again, apologies, but these don't work in-browser. They will work in external vim, however.)

This is a sample sentence. This is another sample sentence. Does a question mark complete the a sentence? How about an exclamation point? Yes! Yes they all do! Isn't this so exciting? Yes. Yes it is. 

To find the end of a sentence, Vim looks for "?", ".", or "!".

To skip entire paragraphs, use:
{ - start of paragraph
} - end of paragraph 

Vim considers any block of text surrounded with blank lines as a paragraph.

/**
 * A class that demonstrates the usefulness of vim
 * keyboard shortcuts. Simply navigate this class
 * file using the { and } keys.
 * 
 * @author CodeSnippetsAcademy
 * @version 1.0, December 11, 2014
 *
 */
public class Car {

  public String color;    // color of our car
  public int speed;       // How fast our car is moving (mph)

  /** Parameterized constructor
   * @param aColor - the color of a car
   * @param aSpeed - the speed of the car
   */
  public Car(String aColor, int aSpeed) {
    color = aColor;
    speed = aSpeed;
  }

  /** Default constructor
   */
  public Car() {
    color = "blue";
    speed = "50";

  /** set the color of the car
   */
  public void setColor(String newColor) {
    color = newColor;
  }

  /** set the speed of the car
   */
  public void setSpeed(int newSpeed) {
    speed = newSpeed;
  }

  /** apply brakes 
   */ 
  public void applyBrake(int decrement) {
    speed -= decrement;
  }

  /** speed up
   */
  public void speedUp(int increment) {
    speed += increment;     
  }

}
Review Questions
1) How would you navigate through lines of code, where there are indentations?
2) What's the difference between using "0" and "^"?





Solution:
1) You can use "-" and "+" or "-" and "[return]". Using the [return] is more efficient since you don't have to hold the [shift] key.
2) "0" is to the beginning of the line, while "^" is to the first non-white space of a line.

##################################################################
##	05. Navigating the screen H, L, M, ctrl+e, ctrl+y
##
##################################################################

Great progress! Your navigational skills are getting great! :-) 

Now let's look at how to navigating through your screen. 

To navigate around the screen:
H - to the top of the screen
    4H moves 4 lines below the top
L - to the bottom of the screen
    3L moves 3 lines above the last line
M - to midscreen

Let's just place some
filler text here
to extend
this file length
so you can have
more 
space.

Now how about scrolling along the screen?

Use:
ctrl+e - move the screen one line up
ctrl+y - move the screen one line down 

Review Questions
1) Navigate through the following uppercase letters:
    Hello my name is Bobby.
  I don't know how to use white space properly.
     So sometimes I use four spaces, sometimes two,
         It really just depends on my mood.
2) Navigate from the beginning to the end of each sentence above.






Answers:
1) Use "-" and the [return] key
2) Use "^" and "$"

##################################################################
##	Navigating large files gg, G, ctrl+b, ctrl+f, ctrl+d, ctrl+u, z
##
##################################################################
Let's now learn how to navigate large files.

For quick movement in large files, use:
gg - move to the beginning of file
G - move to the end of file
    5G moves to the 5th line

For scrolling, we use the "ctrl" key:
ctrl+f - page down
ctrl+b - page up
ctrl+d - half a page down
ctrl+u - half a page up

We can also reposition our screen with the "z" key:
z[return] - Move current line to the top of screen
z. - move current line to center of screen
z- - move current line to bottom of screen

*** 1) Mouse cursor HERE and hit "z[return]"! ***

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Teneo, inquit, finem illi videri nihil dolere. Mihi enim satis est, ipsis non satis. Non ego tecum iam ita iocabor, ut isdem his de rebus, cum L. Ego vero isti, inquam, permitto. Duo Reges: constructio interrete. Faceres tu quidem, Torquate, haec omnia; Et quidem saepe quaerimus verbum Latinum par Graeco et quod idem valeat;

Invidiosum nomen est, infame, suspectum. Aliter enim nosmet ipsos nosse non possumus. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Nihil enim hoc differt. Illa videamus, quae a te de amicitia dicta sunt. Quis non odit sordidos, vanos, leves, futtiles?

*** 2) Now cursor over HERE and try "z."! ***
*** 3) Now mouse HERE and press "G"! ***

Pauca mutat vel plura sane; Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Uterque enim summo bono fruitur, id est voluptate. Istam voluptatem perpetuam quis potest praestare sapienti? Quacumque enim ingredimur, in aliqua historia vestigium ponimus. Quis est tam dissimile homini. Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? Ergo et avarus erit, sed finite, et adulter, verum habebit modum, et luxuriosus eodem modo. Nihilne est in his rebus, quod dignum libero aut indignum esse ducamus? Ita cum ea volunt retinere, quae superiori sententiae conveniunt, in Aristonem incidunt;

Pauca mutat vel plura sane; Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Uterque enim summo bono fruitur, id est voluptate. Istam voluptatem perpetuam quis potest praestare sapienti? Quacumque enim ingredimur, in aliqua historia vestigium ponimus. Quis est tam dissimile homini. Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? Ergo et avarus erit, sed finite, et adulter, verum habebit modum, et luxuriosus eodem modo. Nihilne est in his rebus, quod dignum libero aut indignum esse ducamus? Ita cum ea volunt retinere, quae superiori sententiae conveniunt, in Aristonem incidunt;

Nos cum te, M. Sin laboramus, quis est, qui alienae modum statuat industriae? Hanc ergo intuens debet institutum illud quasi signum absolvere. Occultum facinus esse potuerit, gaudebit; Sed fac ista esse non inportuna; Sapiens autem semper beatus est et est aliquando in dolore; Satisne vobis videor pro meo iure in vestris auribus commentatus?

Hoc Hieronymus summum bonum esse dixit. Non minor, inquit, voluptas percipitur ex vilissimis rebus quam ex pretiosissimis. Ergo, inquit, tibi Q. Quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? Eodem modo is enim tibi nemo dabit, quod, expetendum sit, id esse laudabile. Egone non intellego, quid sit don Graece, Latine voluptas? Nescio quo modo praetervolavit oratio. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Sed quid attinet de rebus tam apertis plura requirere?

Nos cum te, M. Sin laboramus, quis est, qui alienae modum statuat industriae? Hanc ergo intuens debet institutum illud quasi signum absolvere. Occultum facinus esse potuerit, gaudebit; Sed fac ista esse non inportuna; Sapiens autem semper beatus est et est aliquando in dolore; Satisne vobis videor pro meo iure in vestris auribus commentatus?

Hoc Hieronymus summum bonum esse dixit. Non minor, inquit, voluptas percipitur ex vilissimis rebus quam ex pretiosissimis. Ergo, inquit, tibi Q. Quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? Eodem modo is enim tibi nemo dabit, quod, expetendum sit, id esse laudabile. Egone non intellego, quid sit don Graece, Latine voluptas? Nescio quo modo praetervolavit oratio. Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Sed quid attinet de rebus tam apertis plura requirere?

*** 4) Mouse over HERE and try "z-"! ***

Congratulations! You have finished learning about navigation.

Let's move onto how we can edit within the Vim editor!

Review Question:
1) Place your cursor to the middle of this screen. 
2) Scroll up/down one line at a time. 





Solutions: 
1) "M"
2) ctrl+y, ctrl+e

##################################################################
##	01. Inserting and appending i, a, I, A
##
##################################################################
Remember that Vim is known as a modal editor, meaning its state depends on what "mode" it's in.
When vim starts up, it's in command mode.
Command mode is how you navigate, like we are now! 

Now let's say we want to insert some text. 
We can change into insert mode using several keys, depending on where we want to insert our cursor:
i - before the cursor
a - after the cursor
I - at the beginning of the line (first non-white space)
A - at the end of the line

Now we can start inserting things!

Let's say this is some cool text block,
and you want to insert at the beginning of the line.
Simply go to the line, and press "I"!

*** Remember to hit the ESC key to return to COMMAND mode! ***

// Find the two error in this Java code and fix it
x = 0;
if (x = 0)
  System.out.println("I love Vim.")

# Or python if you want
L = ["vim", "is", "so", "!"]
for n in L
  rint(n)

BTW or LOLCODE...
HAI 1.2
  CAN HAS STDIO?
  VISIBLE "CAN I LUVS VIM!!!1!"
KTHXBYE





Solutions:
Java: Make the "=" in the parenthesis to make "==" and insert a semicolon at the end using "A;"
Python: add a ":" at the end of the for statement, and a "p" in front of "rint"
LOLCODE: nothing's wrong with this one -- just wanted to use it as a fun example!
##################################################################
##	02. Inserting, opening and joining lines o, O, J
##
##################################################################
Let's say you want to append some code beneath a line. 

To do this, we had to go to our line, then press "A" and ENTER.
Remember that even two key strokes is sometimes too much in Vim.

Thankfully, Vim makes this process much easier with the "o" key. 
Think of "o" as in open.

To add a line, use:
o - open a line below
O - open a line above 

Let's add some comments to this python function:

def sumAndSquare(a, b):
#comment here
  sum = a+b
	# another comment here
  return sum ** 2

We can also join lines together.
J - join current line with the one below

Turn this 
block of text 
back into one line!

Review Questions:
1) Insert a period at the end of this line
2) Insert a "please" in front of the following sentences:
  give me a cookie.
  don't text and drive.
 



Solutions:
1) A.
2) on each line, type "IPlease"  
##################################################################
##	03. Undo and redo u, U, ctrl+r
##
##################################################################
Let's learn how to undo and redo our editing before we move on. 

We can undo with the following commands: 
u - undo the latest change
    3u undoes the last 3 changes
U - undo an entire line

We can use a "redo" key to redo the undo:
ctrl+r - redo

Try making some mistakes in the text here and reverting back to original changes.

Review Questions:
1) Insert a #2 review question below. 
4) Now insert a #4 review question above. 





Solutions:
1) "o"
2) "O"
##################################################################
##	04. Replacing text r, R, ~ (tilde), c, C
##
##################################################################
We can use text replacements to edit more efficienctly.

To replace a character, we simply place our cursor under the character we wish to replace, press "r", then the new character.

r - replace a selected character with another
    ra replaces selected character with "a"
    3ra replaces three characters with "a"

Try replacing the incorrectly spelled character in this sentance.
Now try replacing four characters in this sentence.

We can also use substitution:
s - replace a char and add more
S - change the entire line 

If you want to change the case of a letter, simply press the squiggly ~ (tilde). 
This is located on the top left corner of your keyboard, below the ESC key.

~ - change the character case
    3~ changes 3 character's case

every line should start with a capital letter. FBI 

Now remember I told you that vim is a modal editor?
There's another nift mode called REPLACE. With it, you can write over existing text.

R - activate Replace mode

Press "R" and you replace as you go!

For a quick change, you can use the "c" key
c - delete and insert
    cw - delete selected word and insert a new on
cc - change entire line, same as "S"
C - change line from where your cursor is

Try changing this line $ from the "$" symbol!

Review Questions:
1) Insert some random text into this sentence, then undo with one command.  
2) Redo what you just undid in question 1.





Solutions:
1) "U"
2) ctrl+r
##################################################################
##	05. Deleting x, X, d, . (period)
##
##################################################################
So far we've covered, inserting and replacing. 
Now let's hop on over to the deleting!  

*** Remember to hit "u" to undo a change! ***

There are many ways we can delete text in a file.
x - delete the character at the cursor
     3x deletes current character + 2 characters to the right of cursor 
X - delete character to the left 
     3x deletes 3 characters to the left of cursor

Try dexletxing axxll txxxxhe "x" chxaraxcters hxere!

We can also delete words or WORDs at a time.
d - delete something
    dW deletes to beginning of next WORD
    dE deletes to end of next WORD 
    dB deletes to beginning of previous WORD 

Let's try deleting all the words here.

Another nifty tool: 
. - repeat any command 

I love Justin Bieber!  
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!
I love Justin Bieber!

Review Problems:
1) What's the difference between word and WORD? How many words and WORDs does www.youtube.com have? 
2) How do you activate REPLACE mode?





Solutions:
1) WORDs ignore punctuations. www.youtube.com has 5 words and 1 WORD.
2) "R" 
##################################################################
##	06. Cutting and pasting d, p, P
##
##################################################################
Deleting doesn't just delete keys, it copies it into the buffer (or the clipboard).
Sound familiar? This is exactly how "cut" works. 

To "paste" this snippet, use the following:
p - paste below cursor line
P - paste above cursor line

dd - deletes (or cuts) current line

Let's delete this line...
and make it reappear below!

Can you make "superfragilisticexpialidocious" disappear?
Now paste it here! ->

Wow! What is this sorcery? Are you a wizard? Can you make this rabbit disappear too?

(\__/) 
(='.'=) 
(")_(")

Don't forget to make it re-appear!
Or the kids will be very upset...

Great job! In the next tutorial we'll look at copying and pasting. 


Review Questions: 
1) Delete every word above that starts with a vowel. 
2) How would you undo the last 5 words you just deleted?





Solutions:
1) You can go to the front of each word and type "dw"
2) "5u"
##################################################################
##	07. Copying and pasting y, Y
##
##################################################################
Now we can learn a very useful command that we use every day - copying and pasting.
In vimland, "copying" is refered to as "yanking."

We can use the "y" key, along with several variations of it to yank text:
y - yank (or copy)
    yy current line
    5yy this line, and 4 more under it
    yw to the end of this word
    y$ to the end of the line
    y^ to the first non-white space
    ygg to the beginning of the file
    yG to the end of file
    y20G yanks to the 20th line of the file
Y - yank entire line

Remember that p or P is used to paste!

These are just a fraction of the various ways to yank text. 
Can you think of how you would yank from HERE to the beginning of this sentence?

Review Questions:
1) If you delete something using "d", is it gone forever?
2) How would you cut and paste a character?





Solutions:
1) No, it is copied to the clipboard. Paste it somewhere using "p".
2) Use "x" to delete it, and "p" to paste it".
##################################################################
##	08. Searching characters f, F, t, T, ; (semicolon), , (comma)
##
##################################################################
We can quickly navigate a line by searching characters.

We can do this using the find and til keys:
f - to the first character ahead
    "fa" moves cursor to "a" ahead
F - to the first character behind
    "Fa" moves to the first "a" behind
t - up to the first character ahead 
T - up to the first character behind 

The difference between the "f" and "t" is that one moves up to the letter, and the other moves directly on top of the letter.

Try searching for any letter in any line in this file. 

Since it can get cumbersome if we have multiple occurences before our desired destination, we can use the repeat commands:
; (semicolon) - repeat the command
, (comma) - reverse the command; search backwards of what you started with

Try getting to the last "e" character in this sentence. Now try going back to the first "e."

Review Questions:
1) What is the fastest way to copy a line? 
2) How do you paste above your current line?





Solutions:
1) "yy"
2) "P"
##################################################################
##	09. Searching words / (forward slash), ? (question mark), n, N, #, *
##
##################################################################
##################################################################
We're almost done!

To search the entire file of words, use:
/ - to start the search, and to go to next
? - to go to previous
n - advance forward
N - advance backwards

We can use this to search a long file for a variable name or any words.

To move to the next occurence of the word that your cursor is under, use:
* - move to the next occurence
# - move to the previous occurence

Put your cursor over the move word, and hop over to the previously occuring command. 

Review Questions:
1) How would you find all occurring o's in this line?
2) What key repeaets a given find command?





Solution:
1) "fo" if you're finding ahead, "Fo" if you're finding behind.
2) ";"

!~!~!~!~!~!~!~!~!~!~!~!~!~!~!~!
!~!~!~!~!~!~!~!~!~!~!~!~!~!~!~!
!~!                         !~!
!~!    CONGRATULATIONS!!!   !~!
!~!    You have completed   !~!
!~!       this course!      !~!
!~!                         !~!
!~!~!~!~!~!~!~!~!~!~!~!~!~!~!~!
!~!~!~!~!~!~!~!~!~!~!~!~!~!~!~!


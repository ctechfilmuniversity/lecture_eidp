**Introduction to Coding** 

Prof. Dr. Lena Gieseke | l.gieseke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

Winter Term 20/21

---

# Session 02 - Program Flow

## Learning Objectives


With this session you learn different ways to modify the execution flow of a program.  
Specifically you

* understand what a function definition and a function call are,
* understand the difference between a command and a code block,
* know how to implement user mouse and key inputs,
* know how to implement if, if..else, and while conditional statements, and
* with that understand how you can control the flow of a program.


## Video

[Here](https://drive.google.com/file/d/1yeQtby58-rU_1AK3gewkxiOb-VNToMHj/view?usp=sharing) you find the recoding of the session. The recording is only for members of this course. You are not allowed to share it.

## Script

* [Script 02 - Program Flow](../../02_scripts/itc_ws2021_04_flow_script.md)


## Assignment

### 02.01 Key Input 

Take the code example [`02.06 Color Circle Clearing - Step 4`](https://www.openprocessing.org/sketch/1018332) from the lecture as basis. Replace the setting of random colors with setting random red colors when the key 'r' is pressed, random green colors for 'g' and random blue colors for 'b'.

### 02.02 Mouse Movement *Speed*

Extend the program from question 02.01 in such a way that the speed of the mouse movement controls the size of the ellipse, meaning for controlling its width and height. 

Think about speed for a second: how can we compute the *speed* of the movement?  

...
 
Yes, a rough computation of speed could be equal to the *distance* between the current mouse position and the previous mouse position. Hence, the larger the distance, the quicker the mouse was moved between frames. You can compute the distance between two points, e.g., `p1` and `p2` by computing the difference between their x and y coordinates and adding these. Hence, `speed = distance between p1 and p2 = (x1 - x2) + (y1 - y2)`. 

Next to `mouseX` and `mouseY`, use the system variables [`pmouseX`](https://p5js.org/reference/#/p5/pmouseX) and [`pmouseY`](https://p5js.org/reference/#/p5/pmouseY), which give the mouse position in the previous `draw()` call.

For computing the speed follow these steps:

* Compute the difference between the current mouse position and previous mouse position in both, x (with mouseX, pmouseX) and y (with mouseY, pmouseY).
* We only care about the absolute distance between the points. In some cases if we compute the difference between the two points, the result might be negative, e.g., `5 - 10 = -5`. Here, we are only interested in the value of `5`, as that is the distance between the points, we don't care about the sign of the result. For example, `5 - 10 = -5` and `10 - 5 = 5` have both the same distance between the points but a different sign, which we don't need to consider. For that we use the *absolute* values of the differences in x and y, with the function [`abs()`](https://p5js.org/reference/#/p5/abs). 
* Now, add the absolute values of the difference in x and y.
* Use the sum of the differences in x and y for both, the width and height of the ellipse.

Yes, the ellipse command will become very long!

### 02.03 Freestyle (Optional)

implement any further ideas you have to change the "brush" or stroke of our drawing program.

---

Submit your sketches under `Assignment 02 - Interaction` in the OpenProcessing [class](https://www.openprocessing.org/class/64768).

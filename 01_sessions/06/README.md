**Introduction to Coding**

Prof. Dr. Lena Gieseke | l.gieseke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

Phil Clausen | phil.clausen@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

Winter Term 20/21

---

# Session 06 - Images Part 1

## Learning Objectives

With this session you

* understand how to structure your code more wisely,
* know how to define your own functions, 
* know how to work with images, and
* understand the concept of image animations.


## Video

[Here](https://owncloud.gwdg.de/index.php/s/l4E7Q60IrSezuVw) you find the recoding of the first session. The recording is only for members of this course. You are not allowed to share it.


## Script

* [Script 08 - Functions](../../02_scripts/itc_ws2021_08_functions_script.md)
* [Script 09 - Images](../../02_scripts/itc_ws2021_09_images_script.md)


## Assignment

With this assignment we will restructure the code of the last exercise and then exchange our player ellipse with an image animation. You can take [this sketch](https://www.openprocessing.org/sketch/1038264) as your starting point.


### 06.01 Restructuring

To organize our code we will start using the tab functionality of OpenProcessing now. **Create a new tab and call it "player".**

In the main tab "mySketch" we will leave our main program: `setup()`, `draw()` and `keyPressed()`. Right now `keyPressed()` only affects the player, but you should think about it more as a general function that handles all user input, so it should stay in the main tab.

The tab "player" will hold all variables and functions related to the player.

Now it's time to move everything into the correct tab. **Cut and paste the global player and jumping variables into "player".**

Take a look at our `setup()` function. Everything but the `createCanvas` command is initializing player variables, right? **Create a new function in the "player" tab called `initPlayer()` and cut/paste those lines in there.**

Now we do the same with `draw()`. After creating our background everything else in here is drawing our player ellipse. **Move those lines into a new function called `animatePlayer()`.**

If you did everything right your main tab should now look as tidy as [this.](https://www.openprocessing.org/sketch/1042600)



### 06.02 Player Animation

Now we want to exchange the ellipse with images. In the following we are giving you all the steps needed for the exercise. You simply need to put it together and understand each step.

1. Download and upload the images

We prepared a set of images for you, which you can download [here.](files/itc_jumping_game_guy.zip?raw=true)

[![guy_spritesheet](img/guy_spritesheet.png)](files/itc_jumping_game_guy.zip?raw=true)

In the zip file you will find six separate images of this little guy. The first four are images of him walking, on the fifth he is jumping and the sixth image shows his unhappy face when he walks into an enemy.

After downloading the images upload them to your sketch.

2. Create the image variables

Now create the variables we need for the image animation.
First of all create the array `playerImg` which will hold the images. Because our program will need to know how many images we have, define `numberPlayerImg` next. We have six images in our set. You will also need a variable that stores the index of the currently displayed image `playerImgIndex` and the `animationSlowDown` variable that decides about the animation speed.

```javascript
// Image Variables
let playerImg = []; // Image array
let numberPlayerImg = 6;
let playerImgIndex = 0; // Index of the image currently displayed
let animationSlowDown = 8; // The higher the value, the slower the animation
```

1. Load the images

Create a loadPlayer() function in the "player" tab. Write a for loop here which pushes the images into the image array `playerImg`. Use `numberPlayerImg` as the iteration limit.

```javascript
// In mySketch:

// Preload external files before calling setup()
function preload() {

	loadPlayer();
}
```

```javascript
// In player:

function loadPlayer() {

	// Store images of player in array
	for (let i = 0; i < numberPlayerImg; i++) {
		playerImg.push(loadImage("guy-" + i + ".png"));
	}

}
```

1. Display the first image

Delete or comment out the `ellipse()` command. Replace it with an `image()` command to display the current image from the image array:

```javascript
// For now we are drawing the player
// as an ellipse
// fill(255, 0, 0);
// circle(playerX, playerY, playerSize);
image(playerImg[playerImgIndex], playerX, playerY)
```

Your script should now always show the first image of the array at the players position, because `playerImgIndex` stays at 0 right now.


5. Display the walk cycle

We now want to display the four frames of the walking animation sequentially. Use the technique from the [Muybridge example](https://www.openprocessing.org/sketch/1042250) to count up `playerImgIndex` every 8th frame (or whatever you set `animationSlowDown` to). If `playerImgIndex` becomes greater then 3, set it back to 0, because only the images guy-0.png, guy-1.png, guy-2.png and guy-3.png are part of the walking animation.


```javascript
// Walk cycle
image(playerImg[playerImgIndex], playerX, playerY);

// Walk images are images 0..3
// We want to iterate the walking image for each draw call.
// For that, we count up playerImgIndex up until 3
// and then back to 0

if (frameCount % animationSlowDown == 0) { // Every 8th frame
	playerImgIndex++; // Next image

	if (playerImgIndex > 3) { // Reached last walk cycle image
		playerImgIndex = 0 // Back to first image
	}
}
```


6.  Display the jumping image

As the last for this assignment we want to display the fourth image of the array when our player jumps. Since we already have a boolean "jumping", we only need to write a simple `if...else` clause.

```javascript
// Chosing which player image to
// draw based on the current
// player activity
if(jumping){

	image(playerImg[4], playerX, playerY)
	
} else {
    
    // Walk cycle
	image(playerImg[playerImgIndex], playerX, playerY);

	// Walk images are images 0..3
	// We want to iterate the walking image for each draw call.
	// For that, we count up playerImgIndex up until 3
	// and then back to 0

	if (frameCount % animationSlowDown == 0) { // Every 8th frame
		playerImgIndex++; // Next image

		if (playerImgIndex > 3) { // Reached last walk cycle image
			playerImgIndex = 0 // Back to first image
		}
	}
}
```



---

Submit your sketches under `Assignment 06 - Jumping Game Step 02` in the OpenProcessing [class](https://www.openprocessing.org/class/64768).



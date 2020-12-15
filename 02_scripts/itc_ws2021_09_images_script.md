**Introduction to Coding**

Prof. Dr. Lena Gieseke | l.gieseke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

Phil Clausen | phil.clausen@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

Winter Term 20/21

---

# Script 09 - Images

- [Script 09 - Images](#script-09---images)
  - [Learning Objectives](#learning-objectives)
  - [Images](#images)
    - [Loading And Displaying Images](#loading-and-displaying-images)
    - [Image Animations](#image-animations)
  - [Summary](#summary)

---


## Learning Objectives

With this script you

* know how to work with images,
* understand the concept of image animations.


## Images

Now it's finally time to exchange our beloved ellipses with images.


### Loading And Displaying Images

Have a look at [this tutorial](https://www.openprocessing.org/sketch/1042197) on how to load and display images in p5.


### Image Animations

Images can be animated [in the same way as regular shapes.](https://www.openprocessing.org/sketch/1042241)

Another way of bringing images to live is to use a series of still images and display them in a fast sequence. This technique was "invented" in 1872 by Eadweard Muybridge. He was commissioned to prove whether a horse lifted all four legs off the ground at once when it ran. To do so, he set up a series of cameras along a track and took pictures in quick succession as a horse ran by. This process allowed him to capture 16 pictures of the horse's run. In one of the pictures, the horse did indeed have all four legs off the ground.

![ch06_08.png](img/09/ch06_08.png)

Muybridge later repeated the experiment and placed each photo onto a device that could project the photos in rapid succession to give the illusion of the horse running, creating the first movie projector!

[Let's rebuild Muybridge's animation in p5.](https://www.openprocessing.org/sketch/1042250)


## Summary

- Use the `preload()` function to make sure your image files are fully loaded before everything else starts

```
let img;

function preload() {
	img = loadImage("myImage.jpg");
}
```

- By default images have their upper-left corner as reference point (`imageMode(CORNER)`), which you can change by calling

```
imageMode(CENTER);
```

- Animate images e.g. by changing their position like any other shape
- Store images in arrays and display them sequentially to animate image series


Use the [reference](https://p5js.org/reference/) 🚒

---

The End

🏇 📷 🖼️
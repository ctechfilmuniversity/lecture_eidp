**Introduction to Coding**

Prof. Dr. Lena Gieseke | l.gieseke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

Winter Term 20/21

---

# Script 12 - Wrap-Up

* [Script 12 - Wrap-Up](#script-12---wrap-up)
    * [Coding Environments](#coding-environments)
        * [Open Processing](#open-processing)
        * [The p5 Editor](#the-p5-editor)
        * [Local Webserver](#local-webserver)
    * [Course Summary](#course-summary)
    * [Commands](#commands)
        * [User Input](#user-input)
        * [Program Flow](#program-flow)
        * [Variables](#variables)
        * [Operators](#operators)
        * [Color Systems](#color-systems)
        * [Loops](#loops)
            * [2D Loop](#2d-loop)
        * [Arrays](#arrays)
        * [Images](#images)
        * [Libraries](#libraries)
        * [p5.sound](#p5sound)
    * [Use the reference 🚒](#use-the-reference-)
    * [Where To Go From Here? 🤔](#where-to-go-from-here-)
    * [Next Term](#next-term)
    * [The End - For Real!](#the-end---for-real)
* [👋🏻](#)


---

## Coding Environments

### Open Processing

For now, it is perfectly fine to continue with coding on the OpenProcessing site.  

For each sketch you can control to whom the sketch is visible. With the option "Anyone can see your sketch" anyone with the URL can see your results - which is very handy of you want to share your work.

### The p5 Editor

The [p5 editor](https://editor.p5js.org/) is very similar to the one on OpenProcessing. However - as far as I know it - you can not hide your sketches.


At some point, you might want to make a [p5 sketch part of an external webpage](https://fridgepoetry-ws2021.herokuapp.com/) and you might want to learn more about web development in general. For that we have to leave the cosy nest of OpenProcessing unfortunately...

Also, when you want to do more coding, I highly recommend to work with a more powerful text editor, which you can configure up to your liking.

As text editor for writing code, I like [Visual Studio Code](https://code.visualstudio.com/) (in short VSCode). The editor is

* Free
* Multi-purpose
* Extensively adjustable


I like it because I can write different types of languages with it while still having many language specific features. Also, I am totally addicted to customizing my working environments to exactly the way I like it and VSCode let's me do so in a convenient way (enabled through *extensions*). In summary, it is:

But how can you develop and run a website on you local computer? This will need a bit more learning on your side and is not part of this class. I am just briefly summarizing the steps for local development in the following as first insight.

### Local Webserver

With a so-called local webserver you can build a "mini-Internet" on your computer. That is what professional web developers do, when working on a website.

The workflow would be:

* Write code on your computer, e.g. with Visual Studio Code
* Start a webserver
* Look at the results in a browser
* Repeat...


## Course Summary

## Commands

* Functions define functionality blocks within `{}`
    * Commands are *function calls*.-
* Commands finish with a semicolon, code blocks, ending with `{}`, not.

### User Input

* User Input from
    * `keyPressed()`
    * `mouseX`, `mouseY`

### Program Flow

* Structuring the program flow
    * `if(condition is true)`
    * `while(condition is true)`

### Variables

We use variables to save and access data

* `let hue = 0;`
    * Variables have a data type
    * Variables live inside `{}` and have a scope

### Operators

* Arithmetic
    * `+`, `-`, `*`, `/`, `--`, `++`
* Comparison
    * `>`, `>=`, `<`, `<=`, `==`, `!=`
* Logical Operators
    * `&&`, `||`, `!`

### Color Systems

* Two color systems available
    * RGBA
    * HSB
    * `colorMode(HSB);`

### Loops

```js
while(i < numberOfTimes)…
```

```js
for(int i = 0; i < numberOfTimes; i++)…
```

#### 2D Loop

*For every row look at every element…*

```js
for (let y = 0; y < numberRows; y++)
{
    for (let x = 0; x < numberColumns; x++)
    {
        print("Row: " + y + " Column: " + x);
    }
}
```

### Arrays

With arrays we can save multiple values in one variable.

```js
let myArray = [2, 4, 6, 8, 'done']

myArray.push(100) // -> [2, 4, 6, 8, 'done', 100]
myArray[1] = 'hello' // -> [2, 'hello', 6, 8, 'done', 100]
```

Arrays are accessed with `[]` and an index, starting at `0`.

```js
print(myArray[2]) // 6
```

You can use loops to access all elements of an array.

```js
for (let i = 0; i < myArray.length; i++) {
    print('Element', i, ': ', myArray[i]);
}

//or

for (let element of myArray) {
    print(element);
}
```

### Images

```js
let img;

function preload() {
	img = loadImage("myImage.jpg");
}
```

By default images have their upper-left corner as reference point (`imageMode(CORNER)`), which you can change by calling

```js
imageMode(CENTER);
```

* Animate images e.g. by changing their position like any other shape
* Store images in arrays and display them sequentially to animate image series
* Use `get(x, y)` and `set(x, y, color)` to return or set the color of the image at a specific pixel


### Libraries

* Libraries extend the p5 library in regard to one specific topic.
* You have to activate a library for a sketch in openProcessing.  
* For knowing how to use a library you have to refer to the library's given documentation, it is not necessarily on the p5 page.  
  
### [p5.sound](https://p5js.org/reference/#/libraries/p5.sound)

Loading a sound file:

```js 
let song;

function preload() {
    song = loadSound('song.mp3');
}
```

```js
song.playMode('restart');
song.setVolume(0.1);
song.play();

...

song.stop();
```


## Use the [reference](https://p5js.org/) 🚒

## Where To Go From Here? 🤔

* Do the final project
* Pick a direction you want to focus on, e.g. generative designs, simple games, tools, etc.
* (Create a portfolio)
* (Watch tutorials and courses)
* Look through other people's and professional code
* Create your own projects

Once you stop to practice coding you will lose the skill. 😨 

But it will come back much faster once you are coding again! 😁

## Next Term


Next term: Introduction To Coding II - maybe...

* Application examples / Project-based
* Object Oriented Programming

I am happy to advise projects, theses, etc. Just get in touch.


---

## The End - For Real!

# 👋🏻
# Quizit Ruby Application

Source code: [Quizit](https://github.com/pmargan/term_app_assignment_1)

## Description
**‘Quizit’** is a single-player, quiz game built using Ruby to explore principles of object-oriented programming. 

This terminal application follows simple game principles, where users play by text-selecting from multiple choice questions in a quiz style format. To earn points trying to make it onto the leader board, while similtaneously testing their developer knowledge. 

## Motivation
I wanted to use this assignment to reinforce what I learnt within the first two weeks of [Coder Academy bootcamp course](https://coderacademy.edu.au/) . While creating a mentally stimulating app that promotes learning while fostering a competitive spirit at the same time.

## Features and Functionality
*Quizit* is a single-player game where the user selects from arrays of `@questions` via text-input in a series until all questions in quiz are answered.

From the welcome/login screen, a browser window will automaticaly pop up showing the game rules. User may read the rules and then close or minimise the browser window.The user will be prompted to enter'yes' or 'no' to begin the game or quit.

[Quizit Start](https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/startscreen.png)

User is then prompted to enter a 'username'
[user name](https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/enter_name.png)

The first question and  four multiple choice answers to choose from will be displayed
[question1](https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/question1.png)

User enters the corresponding letter ie:" 'a','b','c','d'" that matches the answer they pick.

if user answers correctly, they will see 'You got it right!' on screen"
[correct answer](https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/correct_answer_msg.png)

else if incorrect user will see "incorrect answer screen"
[incorrect answer](https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/incorrect_answer_msg.png)

users score will then update.

A loop will execute and fetch the next question in questions array, user answers in same manner they did for the first question, score updates and the loop repeats untill all questions are answered.

When user completes the quiz, thier score will be displayed and if high enough will be seen on the leaderboard.
[leaderboard](https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/leaderboard.png)

The game ends

### Prototype features
- Receive user text input to enter '@player_name'
- Establish ‘@score'  
- Display welcome/quit screen
- Display correct and incorrect for answers on screen
- Implemented ASCII art for the welcome/login,  using the [Artii][GitHub - miketierney/artii: A small gem to generate ASCII art from text fed in to it](https://github.com/miketierney/artii)

-The correct answer and incorrect answer screens also use a 'gem' called colorize to highlight wheather they answered the questions right or not.
![GitHub fazibear/colorize:](https://github.com/fazibear/colorize)
Users can only interact with this terminal application via keyboard input.

### Extensible features
The code was designed to be extensible, so the following features would be easy to implement.
- Add more questions and catagories
- Add randomiser to get different subsets of questions each time game is played
- Add timed questions to gain more points for correct faster answers

## Code Structure

It was decided in the planning stage that the MVP will be structured in the following manner
* `quiz.rb` is the logic trigger to start the game.
* `player.rb` holds player specific data
* 'score.rb' is a class holding score variables and score update methods
* `questions.rb` is a class that gets questions from file system, stores them in array and has method to iterate the array showing 1 question(with associated answer choices) at a time
* `leaderboard`  is a module that accesses the file system and shows the top 5 players and their scores.

### Gems

The app made use of third-party gem (extensions) to enhance the graphical user interface experience:
* [Artii](https://github.com/miketierney/artii) for the ASCII word art
* [Colorize](https://github.com/fazibear/colorize) for function that modifys the String class to allow text colour highlighting for emphesis and visual effect.

## Build Status
The current product is complete, functional,  is extensible. 

## Instructions for use

1. Follow these instructions to [download and install](https://www.ruby-lang.org/en/documentation/installation/) Ruby on your computer. 
2. Download and unzip the files on your local computer. 
3. On the terminal command line, create the folder you wish to install the app files into call it 'term_app_assignment_1'. Download the zip file from github at this link:  [GitHub](https://github.com/pmargan/term_app_assignment_1) 
4. Install the bundler gem (if you haven't already) 
```
> install bundler
```
5. Add the artii  & colorize gems in bundle
```
> bundle add artii
```
```
> bundle add colorize
```
6. Ask bundle to install the gems that we use for the program. 
```
> bundle install 
```
7. In the terminal command line, navigate to the 'term_app_assignment_1' folder by inputting the command 
  ```
  > cd term_app_assignment_1
  ```
8. Input the below command in the terminal command line.  
  ```
  > ruby quiz.rb
  ```
9. If you get an error message like below asking you to update your bundler, input the below in terminal command line. 
  ```
  > gem update --system
  ```
10. Run program using step 8 again. 

## Design and Planning progress

The *Quizit* application was developed over approximately 4 days by Peter Margan.

In the start, I used DIA open source diagramming application to map out user input and to draw a flow diagram for the app  

[flowchart] (https://github.com/pmargan/term_app_assignment_1/tree/branch1/docs/screenshots/flowchart.png)

The key difficulty I faced was zero previous experience in TDD so creating Tests was very chalenging, But managed to get two test units done and passing. Albeit later in the dev cycle than I would have liked.

## Project Timeline 

Planning, research and conceptualising the code structure was primarily achieved in one afternoon sitting by prototyping using DIA. The coding was an iterative process between 2nd Sept to 5th Sept.

## Testing

Due to the time constraints of the project, user acceptance testing was not conducted. However, during the iterative development process, some unit testing was conducted and peer testing also took place. 

## Accessibility

The [Web Content Accessibility Guidelines 2.0](https://www.w3.org/WAI/standards-guidelines/wcag/) was consulted adjacent to the coding process. All functionality of the content on *Quizit* is operable through a keyboard interface without requiring specific timings for individual keystrokes. There is sufficient clarity in the visual design with clear, simple English instructions prompting user input at every step. 

However, the developer acknowledges that until the product has been live-tested with the target demographic users (focus group testing), it is not immediately clear whether *quizit* has adequately catered for all users from a spectrum of ableness based on the [WCAG 2.0](https://www.w3.org/WAI/WCAG21/quickref/?versions=2.0).

## Copyright, ethical, social issues

As a text-based application with comparatively primitive controls (alphabetical), the developer did not foresee the application would raise any questions of moral, social, ethical consequences. There is no use of imagery or text that incites violence or an unpleasant response. The game is designed purely to entertain and encourage learning.

## License

**Copyright (c) 2019 Peter Margan** for [Coder Academy](https://coderacademy.edu.au).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to [use, copy, modify, merge, publish, distribute] and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// get user choice
// randomly choose pc choice
// compare who wins
// tally up total wins

let playerScore = 0;
let pcScore = 0;
let playerChoice;
let pcChoice;
const highScore = 5;
let round = 0;
let i = 0;



function getRandomArbitrary(min, max) {
    return Math.random() * (max - min) + min;
  }

function gameEngine() {
    while (i < 5) {
    alert("Welcome to rock, paper, scissors. You will play against the computer. The game will end when either player gets to five wins.")
    alert("Your score is " + playerScore + (" and the PC score is " + pcScore));
    alert("Please choose 1 for Rock, 2 for Paper, or 3 for Scissors");
    playerChoice = prompt("Your choice: 1 = Rock, 2 = Paper, or 3 = Scissors");
    console.log("You chose " + playerChoice);
    pcChoice = Math.floor(getRandomArbitrary(1,3));
    console.log("The computer chose " + pcChoice);
    i++;
    round++;
    console.log(round);
    // run the choice checker
    // tie first 
        if (playerChoice == pcChoice) {
        alert("It's a tie! Play again.");
        console.log("tie")
        }
        else if (((playerChoice == 1) && (pcChoice == 3)) || ((playerChoice == 2) && (pcChoice == 1)) || ((playerChoice == 3) && (pcChoice == 2))) {
        alert("You win!");
        playerScore++;
        console.log("player")
        } 
        else {
        alert("You lost.");
        pcScore++;
        console.log("pc")
        }

    }
}

gameEngine();

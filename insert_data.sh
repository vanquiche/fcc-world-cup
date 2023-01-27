#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE games, teams")"
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != year ]] 
  then
  WINNING_TEAM_EXIST="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")"
  OPPONENT_TEAM_EXIST="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")"
  if [[ -z $WINNING_TEAM_EXIST ]]
    then
    INSERT_WINNER="$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER')")"
    if [[ $INSERT_WINNER == 'INSERT 0 1' ]] 
      then 
      echo "Inserted $WINNER into Teams"
    fi
  fi
  if [[ -z $OPPONENT_TEAM_EXIST ]] 
    then 
    INSERT_OPPONENT="$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT')")"
    if [[ $INSERT_OPPONENT == 'INSERT 0 1' ]] 
      then 
      echo "Inserted $OPPONENT into Teams"
    fi
  fi

  # INSERT INTO GAMES 
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")"
  INSERT_GAME="$($PSQL "INSERT INTO games (year, round, winner_goals, opponent_goals, opponent_id, winner_id) VALUES ($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $OPPONENT_ID, $WINNER_ID)")"
  if [[ $INSERT_GAME == 'INSERT 0 1' ]]
    then
    echo "Inserted $WINNER vs $OPPONENT into Games"
  fi
fi
done

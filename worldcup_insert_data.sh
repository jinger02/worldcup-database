#!/bin/bash


PSQL="psql -X --username=maryjane --dbname=worldcup --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE teams,games")


# copy unique teams
cat worldcup.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
      # copy winner_name to teams.name
  if [[ $WINNER != "winner" ]]
    then 
    # get team_id
      team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  
    # if not found
      if [[ -z $team_id ]]
        then
          # insert major_id
          insert_winner_name=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      fi
  fi

  # copy opponent_name to teams.name
  if [[ $OPPONENT != "opponent" ]]
  then
    # get team_id
    team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if not found
    if [[ -z $team_id ]]
    then
      # insert major_id
      insert_opponent_name=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $insert_name == "INSERT 0 1" ]]
      then
        echo Inserted into name, $OPPONENT
      fi
    fi  
  fi
  
done



cat worldcup.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
    if [[ $YEAR != "year" ]]
    then
        winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
       opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
     # insert year
      insert_year=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$winner_id,$opponent_id,$WINNER_GOALS,$OPPONENT_GOALS)")

    fi
    
done
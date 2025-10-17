#!/bin/bash

BASE="$HOME/week1_assignment"
SCORE=0
TOTAL=60
# Note that assignment title must be thesame as in se_roadmap
ASSIGNMENT_TITLE="0x00. Shell, navigation"   # <--- Title set here

echo "Checking your $ASSIGNMENT_TITLE ..."
echo

# -------------------------------
# SECTION 1: Basic Navigation (1–10)
# -------------------------------

# Q1: Create folder named week1_assignment
[[ -d "$BASE" ]] && ((SCORE++))

# Q2: Navigate into week1_assignment (implicit; directory existence confirms)
[[ -d "$BASE" ]] && ((SCORE++))

# Q3: Create folder named projects
[[ -d "$BASE/projects" ]] && ((SCORE++))

# Q4: Create folder named notes
[[ -d "$BASE/notes" ]] && ((SCORE++))

# Q5: Create hello.txt file
[[ -f "$BASE/hello.txt" ]] && ((SCORE++))

# Q6: Write “Hello WinMingle” inside hello.txt
grep -q "Hello WinMingle" "$BASE/hello.txt" && ((SCORE++))

# Q7: Create folder week1_project inside projects
[[ -d "$BASE/projects/week1_project" ]] && ((SCORE++))

# Q8: Create empty main.sh inside week1_project
[[ -f "$BASE/projects/week1_project/main.sh" ]] && ((SCORE++))

# Q9: Create readme.md with text “This is my first project”
grep -q "This is my first project" "$BASE/projects/week1_project/readme.md" && ((SCORE++))

# Q10: Navigate back to week1_assignment (implicit check)
[[ -d "$BASE" ]] && ((SCORE++))


# -------------------------------
# SECTION 2: Working with Notes (11–20)
# -------------------------------

# Q11: Create notes/day1.txt
[[ -f "$BASE/notes/day1.txt" ]] && ((SCORE++))

# Q12: Write “Learning shell navigation” in day1.txt
grep -q "Learning shell navigation" "$BASE/notes/day1.txt" && ((SCORE++))

# Q13: Create notes/day2.txt
[[ -f "$BASE/notes/day2.txt" ]] && ((SCORE++))

# Q14: Write “Second day of practice” in day2.txt
grep -q "Second day of practice" "$BASE/notes/day2.txt" && ((SCORE++))

# Q15: Create notes/day3.txt with “Third day assignment”
[[ -f "$BASE/notes/day3.txt" ]] && grep -q "Third day assignment" "$BASE/notes/day3.txt" && ((SCORE++))

# Q16: Create hidden notes/.secret.txt with “hidden knowledge”
[[ -f "$BASE/notes/.secret.txt" ]] && grep -q "hidden knowledge" "$BASE/notes/.secret.txt" && ((SCORE++))

# Q17: Append “More practice coming” into day2.txt
grep -q "More practice coming" "$BASE/notes/day2.txt" && ((SCORE++))

# Q18: Create summary.txt (concatenation)
[[ -f "$BASE/notes/summary.txt" ]] && ((SCORE++))

# Q19: Count lines of summary.txt into count.txt
[[ -f "$BASE/notes/count.txt" ]] && ((SCORE++))

# Q20: Copy summary.txt into backup (later check)
[[ -d "$BASE/backup" ]] && ((SCORE++))


# -------------------------------
# SECTION 3: System Operations (21–30)
# -------------------------------

# Q21: Save directory listing into listing.txt
[[ -f "$BASE/projects/listing.txt" ]] && ((SCORE++))

# Q22: Create hidden folder .config
[[ -d "$BASE/.config" ]] && ((SCORE++))

# Q23: Create settings.conf with version=1.0
grep -q "version=1.0" "$BASE/.config/settings.conf" && ((SCORE++))

# Q24: Rename hello.txt ? welcome.txt
[[ -f "$BASE/welcome.txt" ]] && ((SCORE++))

# Q25: Copy welcome.txt into notes/
[[ -f "$BASE/notes/welcome.txt" ]] && ((SCORE++))

# Q26: Move listing.txt into projects/
[[ -f "$BASE/projects/listing.txt" ]] && ((SCORE++))

# Q27: Create backup folder
[[ -d "$BASE/backup" ]] && ((SCORE++))

# Q28: Copy entire notes folder into backup/
[[ -d "$BASE/backup/notes" ]] && ((SCORE++))

# Q29: Print current directory into pwd.txt
grep -q "$BASE" "$BASE/pwd.txt" && ((SCORE++))

# Q30: Append “echo Done!” to main.sh
grep -q "echo Done!" "$BASE/projects/week1_project/main.sh" && ((SCORE++))


# -------------------------------
# SECTION 4: Links & Metadata (31–40)
# -------------------------------

# Q31: Create symbolic link latest_notes ? notes/
[[ -L "$BASE/latest_notes" ]] && ((SCORE++))

# Q32: Create userinfo.txt with your full name
[[ -f "$BASE/userinfo.txt" ]] && ((SCORE++))

# Q33: Append content of userinfo.txt into notes/day2.txt
[[ -f "$BASE/notes/day2.txt" ]] && grep -q "$(cat $BASE/userinfo.txt)" "$BASE/notes/day2.txt" && ((SCORE++))

# Q34: Compress week1_assignment into week1_assignment.zip
[[ -f "$HOME/week1_assignment.zip" ]] && ((SCORE++))

# Q35 & Q36: .gitignore_test and ignore.txt (optional) — Skipped

# Q37: Copy userinfo.txt into projects/ as userinfo_copy.txt
[[ -f "$BASE/projects/userinfo_copy.txt" ]] && ((SCORE++))

# Q38–40: Create logs/ folder and log started ? log ended
[[ -d "$BASE/logs" ]] && [[ -f "$BASE/logs/access.log" ]] && grep -q "log started" "$BASE/logs/access.log" && ((SCORE++)) #39
grep -q "log ended" "$BASE/logs/access.log" && ((SCORE++)) #40


# -------------------------------
# SECTION 5: More Practice (41–50)
# -------------------------------

# Q41–42: draft.txt and move to backup/
[[ -f "$BASE/draft.txt" || -f "$BASE/backup/draft.txt" ]] && ((SCORE++))

# Q43: Create numbers.txt 1–10
[[ -f "$BASE/numbers.txt" ]] && ((SCORE++))

# Q44: Extract first 5 lines ? first5.txt
[[ -f "$BASE/first5.txt" ]] && ((SCORE++))

# Q45: Extract last 5 lines ? last5.txt
[[ -f "$BASE/last5.txt" ]] && ((SCORE++))

# Q46: Merge first5.txt + last5.txt ? combined.txt
[[ -f "$BASE/combined.txt" || -f "$BASE/archive/combined.txt" ]] && ((SCORE++))

# Q47: notes/day4.txt with “Fourth day progress”
[[ -f "$BASE/notes/day4.txt" ]] && grep -q "Fourth day progress" "$BASE/notes/day4.txt" && ((SCORE++))

# Q48: Copy day4.txt into projects/
[[ -f "$BASE/projects/day4.txt" ]] && ((SCORE++))

# Q49: Create archive folder
[[ -d "$BASE/archive" ]] && ((SCORE++))

# Q50: Move combined.txt into archive/
[[ -f "$BASE/archive/combined.txt" ]] && ((SCORE++))


# -------------------------------
# SECTION 6: Advanced Navigation (51–60)
# -------------------------------

# Q51–52: Create .hidden_data/ and secret.log with “Top Secret”
[[ -d "$BASE/.hidden_data" ]] && [[ -f "$BASE/.hidden_data/secret.log" ]] && grep -q "Top Secret" "$BASE/.hidden_data/secret.log" && ((SCORE++))

# Q53: Create projects/plan.txt with “future project”
[[ -f "$BASE/projects/plan.txt" ]] && grep -q "future project" "$BASE/projects/plan.txt" && ((SCORE++))

# Q54: Append “more plans ahead” to projects/plan.txt
grep -q "more plans ahead" "$BASE/projects/plan.txt" && ((SCORE++))

# Q55: Create trash folder
[[ -d "$BASE/trash" ]] && ((SCORE++))

# Q56: Move draft.txt from backup ? trash
[[ -f "$BASE/trash/draft.txt" ]] && ((SCORE++))

# Q57: Create timestamp.txt with current date
[[ -f "$BASE/timestamp.txt" ]] && ((SCORE++))

# Q58: Create credits.txt with “Developed by”
[[ -f "$BASE/credits.txt" ]] && ((SCORE++))

# Q59: Copy credits.txt into projects/week1_project/
[[ -f "$BASE/projects/week1_project/credits.txt" ]] && ((SCORE++))

# Q60: Compress projects/ into projects.tar.gz
[[ -f "$BASE/projects.tar.gz" ]] && ((SCORE++))


# -------------------------------
# FINAL GRADE
# -------------------------------
PERCENT=$(( SCORE * 100 / TOTAL ))

echo
echo "You scored $SCORE / $TOTAL tasks"
echo "Grade: $PERCENT%"

if [ $PERCENT -eq 100 ]; then
    echo "Excellent! Perfect score!"
elif [ $PERCENT -ge 70 ]; then
    echo "Good job, keep practicing."
else
    echo "Needs improvement. Review shell basics."
fi


# -------------------------------
# SUBMISSION
# -------------------------------
read -p "Enter your email: " EMAIL

TIMESTAMP=$(date +%s)
RAW="$EMAIL-$ASSIGNMENT_TITLE-$SCORE-$PERCENT-$TIMESTAMP"
HASH=$(echo -n "$RAW" | sha256sum | cut -d ' ' -f1)

echo "Submission Passcode: $HASH"

API_URL="https://www.winmingle.com/api/save_bash_scores.php"
curl -s -X POST "$API_URL" \
     -H "Content-Type: application/json" \
     -d "{
           \"email\": \"$EMAIL\",
           \"assignment_title\": \"$ASSIGNMENT_TITLE\",
           \"score\": $SCORE,
           \"percent\": $PERCENT,
           \"timestamp\": $TIMESTAMP,
           \"hash\": \"$HASH\"
         }"

echo "Result sent to server!"

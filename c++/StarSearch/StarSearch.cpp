#include <iostream>
using namespace std;

// functions
void getJudgeData(double & score);
void calcScore(double score1, double score2nd, double score3rd, double score4th, double score5th);
double findLowest(double score1, double score2nd, double score3rd, double score4th, double score5th);
double findHighest(double score1, double score2nd, double score3rd, double score4th, double score5th);

int main() {
    double judge1, judge2, judge3, judge4, judge5;

    // get scores from the 5 judges
    getJudgeData(judge1);
    getJudgeData(judge2);
    getJudgeData(judge3);
    getJudgeData(judge4);
    getJudgeData(judge5);

    // for final score
    calcScore(judge1, judge2, judge3, judge4, judge5);
    return 0;
}

// make sure score is in range
void getJudgeData(double& score) {
    do {
        cout << "Enter the Judge's score (0 - 10): ";
        cin >> score;
        if (score < 0 || score > 10) {
            cout << "Score must be between 0 and 10. Please enter the score again.\n";
        }
    } while (score < 0 || score > 10);
}

// ensure middle 3 scores
void calcScore(double score1st, double score2nd, double score3rd, double score4th, double score5th) {
    double smallest = findLowest(score1st, score2nd, score3rd, score4th, score5th);
    double biggest = findHighest(score1st, score2nd, score3rd, score4th, score5th);
    double totalOfScores = score1st + score2nd + score3rd + score4th + score5th;

    // take out low and high scores for middle 3 scores
    double finalAverage = (totalOfScores - biggest - smallest) / 3.0;

    cout << "The final average score is: "
        << finalAverage << "\n";
}

// gets the smallest score
double findLowest(double score1st, double score2nd, double score3rd, double score4th, double score5th) {
    double smallest = score1st;
    if (score2nd < smallest) smallest = score2nd;
    if (score3rd < smallest) smallest = score3rd;
    if (score4th < smallest) smallest = score4th;
    if (score5th < smallest) smallest = score5th;
    return smallest;
}

// gets the biggest score
double findHighest(double score1st, double score2nd, double score3rd, double score4th, double score5th) {
    double biggest = score1st;
    if (score2nd > biggest) biggest = score2nd;
    if (score3rd > biggest) biggest = score3rd;
    if (score4th > biggest) biggest = score4th;
    if (score5th > biggest) biggest = score5th;
    return biggest;
}
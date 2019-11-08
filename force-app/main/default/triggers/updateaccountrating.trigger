trigger updateaccountrating on Account (before insert) {
    list<account> accounts=trigger.new;
    updateratingcontr.updateRating(accounts);







}
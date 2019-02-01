tweets = round(1 + (140)*rand(1,500))
[set, spmf] = Hist(tweets)
[mean, variance] = VarMean(tweets)
%%
%{
2.) mean: ~72 characters per tweet;Due to Gaussian
distribution, it makes sense that the mean is 
approximately 1/2 of the max number of characters

3.) The histogram matches the theoretical 
expectations of the results; there should be a 
uniform number of tweets for each of the possible lengths.
In actuality the number would most likely be closer
to the 100-140 range of characters.

4.) In theory, (41/140)*100 =~ 30% of the tweets should
 have 100 or more characters in them. Based on my 500
samples, the average number of tweets with >= 100 characters
for 10 trials is 
%}  
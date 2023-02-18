words = char(words);
words = words(:);
rank= tabulate(words);
rank = sortrows(rank,-2);
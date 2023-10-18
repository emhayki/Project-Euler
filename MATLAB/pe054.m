


clc; clear; close;

values = '23456789TJQKA';

 Player1wins = 0;
 Player2wins = 0;

fileID = fopen('poker.txt', 'r');
fileSt = textscan(fileID, '%s', 'Delimiter', '\n');
 Games = char(fileSt{1});

for ii = 1:length(Games)

   gameParts = strsplit(Games(ii,:));

    player1 = getCards(gameParts(1:5) , values);
    player2 = getCards(gameParts(6:10), values);

    player1values = player1(1:3:end);
    player2values = player2(1:3:end);

    player1suit = player1(2:3:end);
    player2suit = player2(2:3:end);

    player1Pairs = getPairs(player1values);
    player2Pairs = getPairs(player2values);

    [pp1, pt1, pf1] = countPairs(player1Pairs);
    [pp2, pt2, pf2] = countPairs(player2Pairs);

    player1OnePair = hasOnePair(pp1);
    player2OnePair = hasOnePair(pp2);

    player1TwoPairs = hasTwoPairs(pp1);
    player2TwoPairs = hasTwoPairs(pp2);

    player1ThreeOfKind = isThreeOfAKind(pt1);
    player2ThreeOfKind = isThreeOfAKind(pt2);

    player1Straight = isStraight(values,player1values);
    player2Straight = isStraight(values,player2values);

    player1Flush = isFlush(player1suit);
    player2Flush = isFlush(player2suit);

    player1FullHouse = isFullHouse(player1OnePair, player1ThreeOfKind);
    player2FullHouse = isFullHouse(player2OnePair, player2ThreeOfKind);

    player1FourOfKind = isFourOfAKind(pf1);
    player2FourOfKind = isFourOfAKind(pf2);
    
    player1StraightFlush = isStraightFlush(player1Flush, player1Straight);
    player2StraightFlush = isStraightFlush(player2Flush, player2Straight);

    player1RoyalFlush = isRoyalFlush(player1values);
    player2RoyalFlush = isRoyalFlush(player2values);

    [player1HighCard, player2HighCard] = getHighCard(values, player1values, player2values);

    
% ------
% Royal Flush
    if(~isempty(player1RoyalFlush) && isempty(player2RoyalFlush))
    Player1wins = Player1wins + 1; continue
    end
    
    if(isempty(player1RoyalFlush) && ~isempty(player2RoyalFlush))
    Player2wins = Player2wins + 1; continue   
    end
% ------
% Straight Flush
    if(player1StraightFlush == 1 && player2StraightFlush == 0)
    Player1wins = Player1wins + 1; continue
    end
    
    if(player1StraightFlush == 0 && player2StraightFlush == 1)
    Player2wins = Player2wins + 1; continue
    end
% ------
% Four of a Kind
    if(player1FourOfKind == 1 && player2FourOfKind == 0)
    Player1wins = Player1wins + 1; continue
    end

    if(player1FourOfKind == 0 && player2FourOfKind == 1)
    Player2wins = Player2wins + 1; continue
    end

    if(player1FourOfKind == 1 && player2FourOfKind == 1 && str2double(pf1) > str2double(pf2))
    Player1wins = Player1wins + 1; continue
    end

    if(player1FourOfKind == 1 && player2FourOfKind == 1 && str2double(pf2) > str2double(pf1))
    Player2wins = Player2wins + 1; continue
    end
% ------
% Full House
    if(player1FullHouse == 1 && player2FullHouse == 0)
    Player1wins = Player1wins + 1; continue
    end
    
    if(player1FullHouse == 0 && player2FullHouse == 1)
    Player2wins = Player2wins + 1; continue
    end
    
    if(player1FullHouse == 1 && player2FullHouse == 1 && str2double(pt1) > str2double(pt2))
    Player1wins = Player1wins + 1; continue
    end
    
    if(player1FullHouse == 1 && player2FullHouse == 1 && str2double(pt2) > str2double(pt1))
    Player2wins = Player2wins + 1; continue
    end
% ------
% Flush
    if(player1Flush == 1 && player2Flush == 0)
    Player1wins = Player1wins + 1; continue
    end

    if(player1Flush == 0 && player2Flush == 1)
    Player2wins = Player2wins + 1; continue
    end
% ------
% Straight

    if(~isempty(player1Straight) && isempty(player2Straight))
    Player1wins = Player1wins + 1; continue
    end
    
    if(isempty(player1Straight) && ~isempty(player2Straight))
    Player2wins = Player2wins + 1; continue   
    end
% ------
% Three of a Kind

    if(player1ThreeOfKind == 1 && player2ThreeOfKind == 0)
    Player1wins = Player1wins + 1; continue
    end

    if(player1ThreeOfKind == 0 && player2ThreeOfKind == 1)
    Player2wins = Player2wins + 1; continue   
    end

    if(player1ThreeOfKind == 1 && player2ThreeOfKind == 1 && str2double(pt1) > str2double(pt2))
    Player1wins = Player1wins + 1; continue
    end
    
    if(player1ThreeOfKind == 1 && player2ThreeOfKind == 1 && str2double(pt2) > str2double(pt1))
    Player2wins = Player2wins + 1; continue
    end    
% ------
% Two Pair
    if(player1TwoPairs == 1 && player2TwoPairs == 0)
    Player1wins = Player1wins + 1; continue
    end
    
    if(player1TwoPairs == 0 && player2TwoPairs == 1)
    Player2wins = Player2wins + 1; continue   
    end
% ------
% One Pair
    if(player1OnePair == 1 && player2OnePair == 0)
    Player1wins = Player1wins + 1; continue
    end
    
    if(player1OnePair == 0 && player2OnePair == 1)
    Player2wins = Player2wins + 1; continue   
    end
    
    if(player1OnePair == 1 && player2OnePair == 1  && str2double(pp1) > str2double(pp2))
     Player1wins = Player1wins + 1; continue
    end
    
    if(player1OnePair == 1 && player2OnePair == 1  && str2double(pp2) > str2double(pp1))
    Player2wins = Player2wins + 1; continue
    end
%------
% High Card
    if(player1HighCard > player2HighCard)
        Player1wins = Player1wins + 1; continue
    end

    if(player2HighCard > player1HighCard)
        Player2wins = Player2wins + 1; continue
    end

end

Player1wins
Player2wins




%--------------------------- Functions ------------------------------------
% 1) ......
function player1 = getCards(gameParts, values)
    p1 = strjoin(gameParts, ' ');
    player1 = blanks(5 * 3);
    index = 1;
    for j = 1:length(values)
        t1 = find(values(j) == p1);
        if (~isempty(t1))
            for mm = 1:length(t1)
                player1(index:index+2) = [p1(t1(mm)) p1(t1(mm)+1) ' '];
                index = index + 3;
            end
        end
    end
    
    player1 = strtrim(player1);
end


% 2) ......
function player1Pairs = getPairs(player1values)
    player1Pairs = [];
    
    for i = 1:length(player1values)
        player1Check = player1values(i);
        p1 = length(find(player1values == player1Check));
        
        if (p1 > 1)
            pair = [player1Check, string(p1)];
            if (~isempty(player1Pairs))
                if (~ismember(player1Check, player1Pairs(:, 1)))
                    player1Pairs = [player1Pairs; pair];
                end
            else
                player1Pairs = [player1Pairs; pair];
            end
        end
    end
end


% 3) ......
function [pp1, pt1, pf1] = countPairs(player1Pairs)
    pp1 = [];
    pt1 = [];
    pf1 = [];
    
    if (~isempty(player1Pairs))
    pp1 = convertCardValue(player1Pairs, "2");
    pt1 = convertCardValue(player1Pairs, "3");
    pf1 = convertCardValue(player1Pairs, "4");
    end
end

function value = convertCardValue(playerPairs, card)
    indices = playerPairs(:, 2) == card;
    values = playerPairs(indices, 1);
    
    if ~isempty(values)
        values = strrep(values, "T", "9");
        values = strrep(values, "J", "10");
        values = strrep(values, "Q", "11");
        values = strrep(values, "K", "12");
        values = strrep(values, "A", "13");
    end
    
    value = values;
end

% 5) ......
function player1OnePair = hasOnePair(pp1)
    player1OnePair = (length(pp1) == 1);
end

% 6) ......
function player1TwoPairs = hasTwoPairs(pp1)
    player1TwoPairs = (length(pp1) == 2);
end

% 7) ......
function player1ThreeOfKind = isThreeOfAKind(pt1)
   player1ThreeOfKind = (length(pt1) == 1);
end

% 8) ......
function player1Straight = isStraight(values,player1values)
    player1Straight = extract(values,player1values);
end

% 9) ......
function player1Flush = isFlush(player1suit)
    player1Flush = (length(unique(player1suit)) == 1);
end

% 10) ......
function player1FullHouse = isFullHouse(player1OnePair, player1ThreeOfKind)
    player1FullHouse = (player1OnePair && player1ThreeOfKind);
end

% 11) ......
function player1FourOfKind = isFourOfAKind(pf1)
    player1FourOfKind = (length(pf1) == 1);
end

% 12) ......
function player1StraightFlush = isStraightFlush(player1Flush, player1Straight)
    player1StraightFlush = (player1Flush &&  ~isempty(player1Straight));
end

% 13) ......
function player1RoyalFlush = isRoyalFlush(player1values)
    player1RoyalFlush = extract('TJQKA',player1values);
end

% 14) ......
function [player1HighCard, player2HighCard] = getHighCard(values, player1values, player2values)
player1HighCard = find(values ==  player1values(end));
player2HighCard = find(values ==  player2values(end));

inc = 0;

    while(player1HighCard == player2HighCard)
        inc = inc + 1;
        player1HighCard = find(values == player1values(end - inc));
        player2HighCard = find(values == player2values(end - inc));
    end
end



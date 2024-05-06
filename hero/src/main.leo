program hero.aleo{
        record Token_hero {
        // The token owner, any record must be defined with the `owner` field.
        owner: address,
        // Token balance of the user.
        balance: u64,
    }

    transition mint(owner: address, amount: u64) -> Token_hero {
            return Token_hero {
                owner: owner,
                balance: amount,
            };
        }

    transition transfer(token: Token_hero, to: address, money: u64) -> (Token_hero, Token_hero) {
        let owner_balance : u64 = token.balance - money;
        let sender: Token_hero = Token_hero{owner : token.owner, balance : owner_balance};
        let recipient: Token_hero = Token_hero{owner : to , balance : money};
        return (recipient, sender);
    }   
}    
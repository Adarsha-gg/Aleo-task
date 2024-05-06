program hero.aleo;

record Token_hero:
    owner as address.private;
    balance as u64.private;


function mint:
    input r0 as address.private;
    input r1 as u64.private;
    cast r0 r1 into r2 as Token_hero.record;
    output r2 as Token_hero.record;


function transfer:
    input r0 as Token_hero.record;
    input r1 as address.private;
    input r2 as u64.private;
    sub r0.balance r2 into r3;
    cast r0.owner r3 into r4 as Token_hero.record;
    cast r1 r2 into r5 as Token_hero.record;
    output r5 as Token_hero.record;
    output r4 as Token_hero.record;

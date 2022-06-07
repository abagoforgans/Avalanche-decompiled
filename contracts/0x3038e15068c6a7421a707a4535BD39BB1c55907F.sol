contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
mapping of struct sub_0db67847;

function sub_0db67847(?) {
    return sub_0db67847[address(msg.sender)].field_0
}

function _fallback() payable {
    revert
}

function getTotalBalances() {
    require msg.sender == stor0
    return eth.balance(this.address)
}

function setLevelUpFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor2 = arg1
}

function sub_020e505f(?) {
    require sub_0db67847[address(msg.sender)].field_768 <= block.timestamp
    sub_0db67847[address(msg.sender)].field_0 = 5
    sub_0db67847[address(msg.sender)].field_256 = sha3(block.timestamp, block.difficulty, msg.sender) % 100
    if block.timestamp > -stor1 - 1:
        revert with 'NH{q', 17
    sub_0db67847[address(msg.sender)].field_768 = block.timestamp + stor1
}

function guessNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_0db67847[address(msg.sender)].field_0:
        revert with 0, 'You no longer have a try'
    require msg.value >= stor2
    if sub_0db67847[address(msg.sender)].field_0 < 1:
        revert with 'NH{q', 17
    sub_0db67847[address(msg.sender)].field_0--
    if stor2 / 100 and 3 > -1 / stor2 / 100:
        revert with 'NH{q', 17
    call stor0 with:
       value 3 * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0db67847[address(msg.sender)].field_256 == arg1:
        sub_0db67847[address(msg.sender)].field_0 = 0
        if sub_0db67847[address(msg.sender)].field_512:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            sub_0db67847[address(msg.sender)].field_512 = 0
            sub_0db67847[address(msg.sender)].field_513 = 24
            sub_0db67847[address(msg.sender)].field_520 = 'Congratulation! You find' / 256
            idx = 0
            while sub_0db67847[address(msg.sender)].field_513 + 31 / 32 > idx:
                sub_0db67847[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            sub_0db67847[address(msg.sender)].field_512 = 0
            sub_0db67847[address(msg.sender)].field_513 = 24
            sub_0db67847[address(msg.sender)].field_520 = 'Congratulation! You find' / 256
            idx = 0
            while sub_0db67847[address(msg.sender)].field_513 + 31 / 32 > idx:
                sub_0db67847[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_0db67847[address(msg.sender)].field_256 < arg1:
        if sub_0db67847[address(msg.sender)].field_512:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            sub_0db67847[address(msg.sender)].field_512 = 0
            sub_0db67847[address(msg.sender)].field_513 = 22
            sub_0db67847[address(msg.sender)].field_520 = 'The number is lower...' / 256
            idx = 0
            while sub_0db67847[address(msg.sender)].field_513 + 31 / 32 > idx:
                sub_0db67847[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            sub_0db67847[address(msg.sender)].field_512 = 0
            sub_0db67847[address(msg.sender)].field_513 = 22
            sub_0db67847[address(msg.sender)].field_520 = 'The number is lower...' / 256
            idx = 0
            while sub_0db67847[address(msg.sender)].field_513 + 31 / 32 > idx:
                sub_0db67847[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if sub_0db67847[address(msg.sender)].field_256 > arg1:
        if sub_0db67847[address(msg.sender)].field_512:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            sub_0db67847[address(msg.sender)].field_512 = 0
            sub_0db67847[address(msg.sender)].field_513 = 22
            sub_0db67847[address(msg.sender)].field_520 = 'The number is upper...' / 256
            idx = 0
            while sub_0db67847[address(msg.sender)].field_513 + 31 / 32 > idx:
                sub_0db67847[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            sub_0db67847[address(msg.sender)].field_512 = 0
            sub_0db67847[address(msg.sender)].field_513 = 22
            sub_0db67847[address(msg.sender)].field_520 = 'The number is upper...' / 256
            idx = 0
            while sub_0db67847[address(msg.sender)].field_513 + 31 / 32 > idx:
                sub_0db67847[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_ff6b45a7(?) {
    if sub_0db67847[address(msg.sender)].field_512:
        if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
            revert with 'NH{q', 34
        if sub_0db67847[address(msg.sender)].field_512:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            if sub_0db67847[address(msg.sender)].field_513:
                if 31 < sub_0db67847[address(msg.sender)].field_513:
                    mem[128] = sub_0db67847[address(msg.sender)][2].field_0
                    idx = 128
                    s = 0
                    while sub_0db67847[address(msg.sender)].field_513 + 96 > idx:
                        mem[idx + 32] = sub_0db67847[address(msg.sender)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_0db67847[address(msg.sender)].field_513), data=mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)]), 
                mem[128] = 256 * sub_0db67847[address(msg.sender)].field_520
        else:
            if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
                revert with 'NH{q', 34
            if sub_0db67847[address(msg.sender)].field_513:
                if 31 < sub_0db67847[address(msg.sender)].field_513:
                    mem[128] = sub_0db67847[address(msg.sender)][2].field_0
                    idx = 128
                    s = 0
                    while sub_0db67847[address(msg.sender)].field_513 + 96 > idx:
                        mem[idx + 32] = sub_0db67847[address(msg.sender)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_0db67847[address(msg.sender)].field_513), data=mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)]), 
                mem[128] = 256 * sub_0db67847[address(msg.sender)].field_520
        mem[ceil32(sub_0db67847[address(msg.sender)].field_513) + 192 len ceil32(sub_0db67847[address(msg.sender)].field_513)] = mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)]
        if ceil32(sub_0db67847[address(msg.sender)].field_513) > sub_0db67847[address(msg.sender)].field_513:
            mem[ceil32(sub_0db67847[address(msg.sender)].field_513) + sub_0db67847[address(msg.sender)].field_513 + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_0db67847[address(msg.sender)].field_513), data=mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)], mem[(2 * ceil32(sub_0db67847[address(msg.sender)].field_513)) + 192 len 2 * ceil32(sub_0db67847[address(msg.sender)].field_513)]), 
    if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
        revert with 'NH{q', 34
    if sub_0db67847[address(msg.sender)].field_512:
        if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
            revert with 'NH{q', 34
        if sub_0db67847[address(msg.sender)].field_513:
            if 31 < sub_0db67847[address(msg.sender)].field_513:
                mem[128] = sub_0db67847[address(msg.sender)][2].field_0
                idx = 128
                s = 0
                while sub_0db67847[address(msg.sender)].field_513 + 96 > idx:
                    mem[idx + 32] = sub_0db67847[address(msg.sender)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_0db67847[address(msg.sender)].field_512, data=mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)]), 
            mem[128] = 256 * sub_0db67847[address(msg.sender)].field_520
    else:
        if sub_0db67847[address(msg.sender)].field_512 == sub_0db67847[address(msg.sender)].field_513 < 32:
            revert with 'NH{q', 34
        if sub_0db67847[address(msg.sender)].field_513:
            if 31 < sub_0db67847[address(msg.sender)].field_513:
                mem[128] = sub_0db67847[address(msg.sender)][2].field_0
                idx = 128
                s = 0
                while sub_0db67847[address(msg.sender)].field_513 + 96 > idx:
                    mem[idx + 32] = sub_0db67847[address(msg.sender)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_0db67847[address(msg.sender)].field_512, data=mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)]), 
            mem[128] = 256 * sub_0db67847[address(msg.sender)].field_520
    mem[ceil32(sub_0db67847[address(msg.sender)].field_513) + 192 len ceil32(sub_0db67847[address(msg.sender)].field_513)] = mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)]
    if ceil32(sub_0db67847[address(msg.sender)].field_513) > sub_0db67847[address(msg.sender)].field_513:
        mem[ceil32(sub_0db67847[address(msg.sender)].field_513) + sub_0db67847[address(msg.sender)].field_513 + 192] = 0
    return Array(len=sub_0db67847[address(msg.sender)].field_512, data=mem[128 len ceil32(sub_0db67847[address(msg.sender)].field_513)], mem[(2 * ceil32(sub_0db67847[address(msg.sender)].field_513)) + 192 len 2 * ceil32(sub_0db67847[address(msg.sender)].field_513)]), 
}



}

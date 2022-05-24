contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    mem[64] = 128
    require not calldata.size
    require msg.value >= stor10
    idx = 0
    s = 40
    while idx < 4:
        if stor1 > -2:
            revert with 'NH{q', 17
        stor1++
        if stor2 > -3:
            revert with 'NH{q', 17
        stor2 += 2
        if stor3 > -4:
            revert with 'NH{q', 17
        stor3 += 3
        if stor4 > -5:
            revert with 'NH{q', 17
        stor4 += 4
        if stor5 > -6:
            revert with 'NH{q', 17
        stor5 += 5
        if stor6 > -7:
            revert with 'NH{q', 17
        stor6 += 6
        if stor7 > -8:
            revert with 'NH{q', 17
        stor7 += 7
        if stor8 > -9:
            revert with 'NH{q', 17
        stor8 += 8
        if stor9 > -10:
            revert with 'NH{q', 17
        stor9 += 9
        mem[mem[64] + 32] = stor5
        mem[mem[64] + 64] = stor6
        mem[mem[64] + 96] = stor8
        mem[mem[64] + 128] = stor4
        mem[mem[64] + 160] = stor7
        mem[mem[64] + 192] = block.difficulty
        mem[mem[64] + 224] = stor1
        mem[mem[64] + 256] = stor2
        mem[mem[64] + 288] = stor8
        mem[mem[64] + 320] = stor3
        mem[mem[64] + 352] = stor9
        mem[mem[64] + 384] = block.timestamp
        _18 = mem[64]
        mem[mem[64]] = 384
        mem[64] = mem[64] + 416
        if sha3(mem[_18 + 32 len mem[_18]]) % 100 >= 50:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -41:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 40
        continue 
    if s < 100:
        if msg.sender == stor0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            if msg.value and 20 > -1 / msg.value:
                revert with 'NH{q', 17
            call stor0 with:
               value 20 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value and s > -1 / msg.value:
                revert with 'NH{q', 17
            call msg.sender with:
               value msg.value * s / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        if msg.value and s > -1 / msg.value:
            revert with 'NH{q', 17
        if eth.balance(this.address) >= msg.value * s / 100:
            if msg.value and s > -1 / msg.value:
                revert with 'NH{q', 17
            call msg.sender with:
               value msg.value * s / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if msg.value and 10 > -1 / msg.value:
                revert with 'NH{q', 17
            call stor0 with:
               value 10 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value and 40 > -1 / msg.value:
                revert with 'NH{q', 17
            call msg.sender with:
               value 40 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

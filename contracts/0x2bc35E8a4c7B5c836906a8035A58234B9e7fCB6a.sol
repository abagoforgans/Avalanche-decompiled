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
    require not calldata.size
    require msg.value >= stor10
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
    if stor6 > -5:
        revert with 'NH{q', 17
    stor6 += 4
    if stor7 > -4:
        revert with 'NH{q', 17
    stor7 += 3
    if stor8 > -3:
        revert with 'NH{q', 17
    stor8 += 2
    if stor9 > -8:
        revert with 'NH{q', 17
    stor9 += 7
    if sha3(stor5, stor6, stor8, stor4, stor7, block.difficulty, stor1, stor2, stor8, stor3, stor9, block.timestamp) % 100 < 33:
        if msg.value and 2 > -1 / msg.value:
            revert with 'NH{q', 17
        if eth.balance(this.address) >= 2 * msg.value:
            if msg.value and 200 > -1 / msg.value:
                revert with 'NH{q', 17
            call msg.sender with:
               value 200 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            if msg.value and 15 > -1 / msg.value:
                revert with 'NH{q', 17
            call stor0 with:
               value 15 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value and 50 > -1 / msg.value:
                revert with 'NH{q', 17
            call msg.sender with:
               value 50 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value and 15 > -1 / msg.value:
            revert with 'NH{q', 17
        call stor0 with:
           value 15 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value and 50 > -1 / msg.value:
            revert with 'NH{q', 17
        call msg.sender with:
           value 50 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.sender == stor0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}

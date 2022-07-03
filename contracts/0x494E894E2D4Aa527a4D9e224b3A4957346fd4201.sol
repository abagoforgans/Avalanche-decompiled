contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
mapping of uint256 balances;
address stor5;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function owner() {
    return owner
}

function controllers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function setGameAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor5 = stor2
}

function getMinted() {
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b4fad1b5(?) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[address(msg.sender)] = 0
}

function random(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 5000:
        revert with 'NH{q', 17
    if arg1 <= ext_call.return_data[0] - 5000:
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > -3:
            revert with 'NH{q', 17
        if not block.timestamp + 2:
            revert with 'NH{q', 18
        if block.timestamp > -block.difficulty - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(stor2) / block.timestamp) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) > -block.number - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        return (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307())
    if ext_call.return_data[0] > -5001:
        revert with 'NH{q', 17
    if not block.timestamp:
        revert with 'NH{q', 18
    if block.timestamp > -3:
        revert with 'NH{q', 17
    if not block.timestamp + 2:
        revert with 'NH{q', 18
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(stor2) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) > -block.number - 1:
        revert with 'NH{q', 17
    if arg1 >= ext_call.return_data[0] + 5000:
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        return (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307())
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -arg1 - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg1 > -eth.balance(arg2) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg1 + eth.balance(arg2) < 1:
        revert with 'NH{q', 17
    return (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg1 + eth.balance(arg2) - 1) % test266151307())
}

function sub_09b91f68(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 5000:
        revert with 'NH{q', 17
    if arg3 <= -5000:
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > -3:
            revert with 'NH{q', 17
        if not block.timestamp + 2:
            revert with 'NH{q', 18
        if block.timestamp > -block.difficulty - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(stor2) / block.timestamp) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) > -block.number - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if arg3 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        require ext_code.size(stor5)
        staticcall stor5.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 5000:
            revert with 'NH{q', 17
        if arg3 <= -5000:
            mem[(4 * ceil32(return_data.size)) + 296] = stor2
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > -3:
                revert with 'NH{q', 17
            if not block.timestamp + 2:
                revert with 'NH{q', 18
            if block.timestamp > -block.difficulty - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 89:
                return 0
            if ext_call.return_data[0] <= 10000:
                if ext_call.return_data[0] > 10000:
                    return 0
            else:
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 90:
                    return 0
        else:
            if ext_call.return_data[0] > -5001:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 296] = stor2
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > -3:
                revert with 'NH{q', 17
            if not block.timestamp + 2:
                revert with 'NH{q', 18
            if block.timestamp > -block.difficulty - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                revert with 'NH{q', 17
            if arg3 >= 5000:
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                    revert with 'NH{q', 17
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 89:
                    return 0
                if ext_call.return_data[0] <= 10000:
                    if ext_call.return_data[0] > 10000:
                        return 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 90:
                        return 0
            else:
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                    revert with 'NH{q', 17
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 89:
                    return 0
                if ext_call.return_data[0] <= 10000:
                    if ext_call.return_data[0] > 10000:
                        return 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 90:
                        return 0
        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
            revert with 'NH{q', 17
        if uint8(arg1) > (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
            return uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1
        return uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1
    if ext_call.return_data[0] > -5001:
        revert with 'NH{q', 17
    if not block.timestamp:
        revert with 'NH{q', 18
    if block.timestamp > -3:
        revert with 'NH{q', 17
    if not block.timestamp + 2:
        revert with 'NH{q', 18
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(stor2) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) > -block.number - 1:
        revert with 'NH{q', 17
    if arg3 >= 5000:
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if arg3 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        require ext_code.size(stor5)
        staticcall stor5.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 5000:
            revert with 'NH{q', 17
        if arg3 <= -5000:
            mem[(4 * ceil32(return_data.size)) + 296] = stor2
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > -3:
                revert with 'NH{q', 17
            if not block.timestamp + 2:
                revert with 'NH{q', 18
            if block.timestamp > -block.difficulty - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 89:
                return 0
            if ext_call.return_data[0] <= 10000:
                if ext_call.return_data[0] > 10000:
                    return 0
            else:
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 90:
                    return 0
        else:
            if ext_call.return_data[0] > -5001:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 296] = stor2
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > -3:
                revert with 'NH{q', 17
            if not block.timestamp + 2:
                revert with 'NH{q', 18
            if block.timestamp > -block.difficulty - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                revert with 'NH{q', 17
            if arg3 >= 5000:
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                    revert with 'NH{q', 17
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 89:
                    return 0
                if ext_call.return_data[0] <= 10000:
                    if ext_call.return_data[0] > 10000:
                        return 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 90:
                        return 0
            else:
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                    revert with 'NH{q', 17
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 89:
                    return 0
                if ext_call.return_data[0] <= 10000:
                    if ext_call.return_data[0] > 10000:
                        return 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 90:
                        return 0
        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
            revert with 'NH{q', 17
        if uint8(arg1) > (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
            return uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1
        return uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
        revert with 'NH{q', 17
    if arg3 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 5000:
        revert with 'NH{q', 17
    if arg3 <= -5000:
        mem[(4 * ceil32(return_data.size)) + 296] = stor2
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > -3:
            revert with 'NH{q', 17
        if not block.timestamp + 2:
            revert with 'NH{q', 18
        if block.timestamp > -block.difficulty - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 < 89:
            return 0
        if ext_call.return_data[0] <= 10000:
            if ext_call.return_data[0] > 10000:
                return 0
        else:
            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 90:
                return 0
    else:
        if ext_call.return_data[0] > -5001:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 296] = stor2
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > -3:
            revert with 'NH{q', 17
        if not block.timestamp + 2:
            revert with 'NH{q', 18
        if block.timestamp > -block.difficulty - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
            revert with 'NH{q', 17
        if arg3 >= 5000:
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 < 89:
                return 0
            if ext_call.return_data[0] <= 10000:
                if ext_call.return_data[0] > 10000:
                    return 0
            else:
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 90:
                    return 0
        else:
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                revert with 'NH{q', 17
            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 < 89:
                return 0
            if ext_call.return_data[0] <= 10000:
                if ext_call.return_data[0] > 10000:
                    return 0
            else:
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 90:
                    return 0
    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
        revert with 'NH{q', 17
    if uint8(arg1) > (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
        return uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1
    return uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1
}

function sub_4f278fd3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if balances[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] += msg.value
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor5)
    staticcall stor5.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 5000:
        revert with 'NH{q', 17
    if arg3 <= -5000:
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > -3:
            revert with 'NH{q', 17
        if not block.timestamp + 2:
            revert with 'NH{q', 18
        if block.timestamp > -block.difficulty - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(stor2) / block.timestamp) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) > -block.number - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if arg3 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        require ext_code.size(stor5)
        staticcall stor5.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 5000:
            revert with 'NH{q', 17
        if arg3 <= -5000:
            mem[(4 * ceil32(return_data.size)) + 296] = stor2
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > -3:
                revert with 'NH{q', 17
            if not block.timestamp + 2:
                revert with 'NH{q', 18
            if block.timestamp > -block.difficulty - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            if ext_call.return_data[0] <= 10000:
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                    if ext_call.return_data[0] <= 10000:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                            revert with 'NH{q', 17
                        if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                            if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
            else:
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 90:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                            revert with 'NH{q', 17
                        if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                            if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
        else:
            if ext_call.return_data[0] > -5001:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 296] = stor2
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > -3:
                revert with 'NH{q', 17
            if not block.timestamp + 2:
                revert with 'NH{q', 18
            if block.timestamp > -block.difficulty - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                revert with 'NH{q', 17
            if arg3 >= 5000:
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] <= 10000:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                        if ext_call.return_data[0] <= 10000:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 90:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
            else:
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] <= 10000:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                        if ext_call.return_data[0] <= 10000:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 < 90:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
    else:
        if ext_call.return_data[0] > -5001:
            revert with 'NH{q', 17
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > -3:
            revert with 'NH{q', 17
        if not block.timestamp + 2:
            revert with 'NH{q', 18
        if block.timestamp > -block.difficulty - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(stor2) / block.timestamp) - 1:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) > -block.number - 1:
            revert with 'NH{q', 17
        if arg3 >= 5000:
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            if arg3 > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            require ext_code.size(stor5)
            staticcall stor5.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 5000:
                revert with 'NH{q', 17
            if arg3 <= -5000:
                mem[(4 * ceil32(return_data.size)) + 296] = stor2
                if not block.timestamp:
                    revert with 'NH{q', 18
                if block.timestamp > -3:
                    revert with 'NH{q', 17
                if not block.timestamp + 2:
                    revert with 'NH{q', 18
                if block.timestamp > -block.difficulty - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] <= 10000:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                        if ext_call.return_data[0] <= 10000:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 90:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
            else:
                if ext_call.return_data[0] > -5001:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 296] = stor2
                if not block.timestamp:
                    revert with 'NH{q', 18
                if block.timestamp > -3:
                    revert with 'NH{q', 17
                if not block.timestamp + 2:
                    revert with 'NH{q', 18
                if block.timestamp > -block.difficulty - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                    revert with 'NH{q', 17
                if arg3 >= 5000:
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] <= 10000:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                            if ext_call.return_data[0] <= 10000:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                    else:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 90:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                else:
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] <= 10000:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                            if ext_call.return_data[0] <= 10000:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                    else:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 >= 89:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 < 90:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
        else:
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                revert with 'NH{q', 17
            if arg3 > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            require ext_code.size(stor5)
            staticcall stor5.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 5000:
                revert with 'NH{q', 17
            if arg3 <= -5000:
                mem[(4 * ceil32(return_data.size)) + 296] = stor2
                if not block.timestamp:
                    revert with 'NH{q', 18
                if block.timestamp > -3:
                    revert with 'NH{q', 17
                if not block.timestamp + 2:
                    revert with 'NH{q', 18
                if block.timestamp > -block.difficulty - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] <= 10000:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 89:
                        if ext_call.return_data[0] <= 10000:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                else:
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 89:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 90:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
                                revert with 'NH{q', 17
                            if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
            else:
                if ext_call.return_data[0] > -5001:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 296] = stor2
                if not block.timestamp:
                    revert with 'NH{q', 18
                if block.timestamp > -3:
                    revert with 'NH{q', 17
                if not block.timestamp + 2:
                    revert with 'NH{q', 18
                if block.timestamp > -block.difficulty - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp + 2) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) > -block.gas_limit - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit > -(sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) > -block.number - 1:
                    revert with 'NH{q', 17
                if arg3 >= 5000:
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] < 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] <= 10000:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 89:
                            if ext_call.return_data[0] <= 10000:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                    else:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 89:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + ext_call.return_data[0] - 1) % test266151307() % 100 < 90:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                else:
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number > -arg3 + -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] > -eth.balance(arg4) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) < 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] <= 10000:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 89:
                            if ext_call.return_data[0] <= 10000:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                    else:
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 >= 89:
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(mem[(4 * ceil32(return_data.size)) + 296 len (5 * ceil32(return_data.size)) + 20]) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 < 90:
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10 > -2:
                                    revert with 'NH{q', 17
                                if uint8(arg1) <= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                    if uint8(arg2) >= (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp + 2) + block.gas_limit + (sha3(stor2) / block.timestamp) + block.number + arg3 + ext_call.return_data[0] + eth.balance(arg4) - 1) % test266151307() % 100 % 10) + 1:
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
}



}

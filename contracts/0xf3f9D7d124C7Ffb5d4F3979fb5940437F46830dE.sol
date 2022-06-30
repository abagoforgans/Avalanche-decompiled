contract main {




// =====================  Runtime code  =====================


const pairCodeHash = sha3(code.data[1876 len 17632])


uint8 stor0;
address pauserAddress; offset 8
uint256 stor0; offset 8
address pendingPauserAddress;
mapping of address pair;
array of address allPairs;
mapping of uint8 stor4;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allPairsLength() payable {
    return allPairs.length
}

function getPair(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return pair[arg1][arg2][arg3]
}

function pendingPauser() payable {
    return pendingPauserAddress
}

function pauser() payable {
    return pauserAddress
}

function isPaused() payable {
    return bool(uint8(stor0.field_0))
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function getInitializable() payable {
    return stor5, address(stor6.field_0), bool(uint8(stor6.field_160))
}

function acceptPauser() payable {
    require msg.sender == pendingPauserAddress
    Mask(248, 0, stor0.field_8) = pendingPauserAddress
}

function setPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == pauserAddress
    pendingPauserAddress = arg1
}

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == pauserAddress
    uint8(stor0.field_0) = uint8(arg1)
}

function createPair(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 == arg2:
        revert with 0, 'IA'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'ZA'
        if pair[address(arg1)][address(arg2)][arg3]:
            revert with 0, 'PE'
        address(stor6.field_0) = arg2
        Mask(96, 0, stor6.field_160) = Mask(96, 0, arg3)
        stor5 = arg1
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2, Mask(8, 248, arg3) >> 248)
                        code: code.data[1876 len 17632]
        if not create2.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)][arg3] = address(create2.new_address)
        pair[address(arg2)][address(arg1)][arg3] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        stor4[address(create2.new_address)] = 1
        emit PairCreated(arg3, address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'ZA'
        if pair[address(arg2)][address(arg1)][arg3]:
            revert with 0, 'PE'
        address(stor6.field_0) = arg1
        Mask(96, 0, stor6.field_160) = Mask(96, 0, arg3)
        stor5 = arg2
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1, Mask(8, 248, arg3) >> 248)
                        code: code.data[1876 len 17632]
        if not create2.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)][arg3] = address(create2.new_address)
        pair[address(arg1)][address(arg2)][arg3] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        stor4[address(create2.new_address)] = 1
        emit PairCreated(arg3, address(create2.new_address), allPairs.length, arg2, arg1);
    return address(create2.new_address)
}



}

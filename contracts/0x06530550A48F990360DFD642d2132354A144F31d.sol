contract main {




// =====================  Runtime code  =====================


address feeToAddress;
address feeToSetterAddress;
mapping of address pair;
array of address allPairs;

function feeTo() payable {
    return feeToAddress
}

function feeToSetter() payable {
    return feeToSetterAddress
}

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allPairsLength() payable {
    return allPairs.length
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Empire: FORBIDDEN'
    feeToAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Empire: FORBIDDEN'
    feeToSetterAddress = arg1
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Empire: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Empire: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Empire: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[1988 len 11206]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0x60d780ee with:
             gas gas_remaining wei
            args address(arg1), address(arg2), 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'Empire: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Empire: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[1988 len 11206]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0x60d780ee with:
             gas gas_remaining wei
            args address(arg2), address(arg1), 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg2, arg1);
    return address(create2.new_address)
}

function createPair(address arg1, address arg2, uint8 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 == arg2:
        revert with 0, 'Empire: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Empire: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Empire: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[1988 len 11206]
        require arg3 <= 3
        if not arg3:
            require arg3 <= 3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x60d780ee with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3 << 248, arg4
        else:
            if arg1 != msg.sender:
                if arg2 != msg.sender:
                    revert with 0, 32, 50, code.data[13194 len 50], mem[11550 len 14]
            require arg3 <= 3
            require arg3 <= 3
            if arg3 == 2:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0x60d780ee with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3 << 248, -1
            else:
                require arg3 <= 3
                require ext_code.size(address(create2.new_address))
                if arg3 != 3:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3 << 248, arg4
                else:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3 << 248, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'Empire: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Empire: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[1988 len 11206]
        require arg3 <= 3
        if not arg3:
            require arg3 <= 3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x60d780ee with:
                 gas gas_remaining wei
                args address(arg2), address(arg1), arg3 << 248, arg4
        else:
            if arg2 != msg.sender:
                if arg1 != msg.sender:
                    revert with 0, 32, 50, code.data[13194 len 50], mem[11550 len 14]
            require arg3 <= 3
            require arg3 <= 3
            if arg3 == 2:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0x60d780ee with:
                     gas gas_remaining wei
                    args address(arg2), address(arg1), arg3 << 248, -1
            else:
                require arg3 <= 3
                require ext_code.size(address(create2.new_address))
                if arg3 != 3:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg2), address(arg1), arg3 << 248, arg4
                else:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg2), address(arg1), arg3 << 248, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg2, arg1);
    return address(create2.new_address)
}

function createEmpirePair(address arg1, address arg2, uint8 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 == arg2:
        revert with 0, 'Empire: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Empire: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Empire: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[1988 len 11206]
        require arg3 <= 3
        if not arg3:
            require arg3 <= 3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x60d780ee with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3 << 248, arg4
        else:
            if arg1 != msg.sender:
                if arg2 != msg.sender:
                    revert with 0, 32, 50, code.data[13194 len 50], mem[11550 len 14]
            require arg3 <= 3
            require arg3 <= 3
            if arg3 == 2:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0x60d780ee with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3 << 248, -1
            else:
                require arg3 <= 3
                require ext_code.size(address(create2.new_address))
                if arg3 != 3:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3 << 248, arg4
                else:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3 << 248, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'Empire: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Empire: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[1988 len 11206]
        require arg3 <= 3
        if not arg3:
            require arg3 <= 3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x60d780ee with:
                 gas gas_remaining wei
                args address(arg2), address(arg1), arg3 << 248, arg4
        else:
            if arg2 != msg.sender:
                if arg1 != msg.sender:
                    revert with 0, 32, 50, code.data[13194 len 50], mem[11550 len 14]
            require arg3 <= 3
            require arg3 <= 3
            if arg3 == 2:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0x60d780ee with:
                     gas gas_remaining wei
                    args address(arg2), address(arg1), arg3 << 248, -1
            else:
                require arg3 <= 3
                require ext_code.size(address(create2.new_address))
                if arg3 != 3:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg2), address(arg1), arg3 << 248, arg4
                else:
                    call address(create2.new_address).0x60d780ee with:
                         gas gas_remaining wei
                        args address(arg2), address(arg1), arg3 << 248, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg2, arg1);
    return address(create2.new_address)
}



}

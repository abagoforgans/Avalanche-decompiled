contract main {




// =====================  Runtime code  =====================


const pairCodeHash = sha3(code.data[3183 len 13112])


address feeToAddress;
address poolToAddress;
address treasuryToAddress;
address feeToSetterAddress;
address migratorAddress;
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

function treasuryTo() payable {
    return treasuryToAddress
}

function allPairsLength() payable {
    return allPairs.length
}

function migrator() payable {
    return migratorAddress
}

function poolTo() payable {
    return poolToAddress
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
        revert with 0, 'Liter: FORBIDDEN'
    feeToAddress = arg1
}

function setPoolTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Liter: FORBIDDEN'
    poolToAddress = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Liter: FORBIDDEN'
    migratorAddress = arg1
}

function setTreasuryTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Liter: FORBIDDEN'
    treasuryToAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Liter: FORBIDDEN'
    feeToSetterAddress = arg1
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Liter: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Liter: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Liter: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[3183 len 13112]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'Liter: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Liter: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[3183 len 13112]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
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

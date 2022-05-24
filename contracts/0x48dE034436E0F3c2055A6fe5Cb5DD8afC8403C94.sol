contract main {




// =====================  Runtime code  =====================


const INIT_CODE_PAIR_HASH = sha3(code.data[2235 len 9056], mem[18304 len 10], Mask(96, 80, code.data[11301 len 12]) >> 80)


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
        revert with 0, 'Hakuswap: FORBIDDEN'
    feeToAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Hakuswap: FORBIDDEN'
    feeToSetterAddress = arg1
}

function expectPairFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[11313 len 36], mem[200 len 28]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'HakuswapLibrary: ZERO_ADDRESS'
        return address(sha3(0, this.address, sha3(arg1, arg2), 0xb8db7f76dfa52f4cafc0f0014a5e7866c507f44ef950ff35fe3ed1fa889040d7))
    if not arg2:
        revert with 0, 'HakuswapLibrary: ZERO_ADDRESS'
    return address(sha3(0, this.address, sha3(arg2, arg1), 0xb8db7f76dfa52f4cafc0f0014a5e7866c507f44ef950ff35fe3ed1fa889040d7))
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Hakuswap: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Hakuswap: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Hakuswap: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[2235 len 9078]
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
            revert with 0, 'Hakuswap: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Hakuswap: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[2235 len 9078]
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

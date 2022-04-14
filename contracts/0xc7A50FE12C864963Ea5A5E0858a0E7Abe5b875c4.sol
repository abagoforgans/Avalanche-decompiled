contract main {




// =====================  Runtime code  =====================


address feeToAddress;
address formulaAddress;
uint256 protocolFee;
address feeToSetterAddress;
mapping of address stor4;
array of address allPairs;
mapping of uint32 stor6;

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

function formula() payable {
    return formulaAddress
}

function allPairsLength() payable {
    return allPairs.length
}

function protocolFee() payable {
    return protocolFee
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint64(stor6[address(arg1)]))
}

function _fallback() payable {
    revert
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'FLP: FORBIDDEN'
    feeToAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'FLP: FORBIDDEN'
    feeToSetterAddress = arg1
}

function getPair(address arg1, address arg2, uint32 arg3, uint32 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 < arg2:
        return stor4[arg1][arg2][arg3][arg4]
    return stor4[arg2][arg1][uint32(-arg3 + 100)][arg4]
}

function getWeightsAndSwapFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint64(stor6[address(arg1)]):
        return 50, 50, 30
    return uint32(stor6[address(arg1)]), 
           -(Mask(224, 0, uint64(stor6[address(arg1)])) >> 32) + 100 << 224,
           uint32(stor6[address(arg1)])
}

function setProtocolFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'FLP: FORBIDDEN'
    if arg1:
        if arg1 < 10000:
            revert with 0, 'FLP: Invalid Protocol fee'
        if arg1 > 100000:
            revert with 0, 'FLP: Invalid Protocol fee'
    protocolFee = arg1
}

function createPair(address arg1, address arg2, uint32 arg3, uint32 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 == arg2:
        revert with 0, 'FLP: IDENTICAL_ADDRESSES'
    if arg3 < 2:
        revert with 0, 'FLP: INVALID_TOKEN_WEIGHT'
    if arg3 > 98:
        revert with 0, 'FLP: INVALID_TOKEN_WEIGHT'
    if bool(arg3):
        revert with 0, 'FLP: INVALID_TOKEN_WEIGHT'
    if arg4 < 1:
        revert with 0, 'FLP: INVALID_SWAP_FEE'
    if arg4 > 2000:
        revert with 0, 'FLP: INVALID_SWAP_FEE'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'FLP: ZERO_ADDRESS'
        if stor4[arg1][arg2][arg3][arg4]:
            revert with 0, 'FLP: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2, arg3, arg4)
                        code: code.data[3817 len 13446]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, uint32 rg3, uint32 rg4) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3 << 224, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4[arg1][arg2][arg3][arg4] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        uint256(stor6[address(create2.new_address)]) = arg4 or uint32(arg3) << 32 or Mask(192, 64, uint256(stor6[address(create2.new_address)]))
        emit 0x41f8736f: address(create2.new_address), arg3 << 224, arg4 << 224, allPairs.length, arg1, arg2
    else:
        if not arg2:
            revert with 0, 'FLP: ZERO_ADDRESS'
        if stor4[arg2][arg1][uint32(-arg3 + 100)][arg4]:
            revert with 0, 'FLP: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1, uint32(-arg3 + 100), arg4)
                        code: code.data[3817 len 13446]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, uint32 rg3, uint32 rg4) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), -arg3 + 100 << 224, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor4[arg2][arg1][uint32(-arg3 + 100)][arg4] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        uint256(stor6[address(create2.new_address)]) = arg4 or uint32(-arg3 + 100) << 32 or Mask(192, 64, uint256(stor6[address(create2.new_address)]))
        emit 0x41f8736f: address(create2.new_address), -arg3 + 100 << 224, arg4 << 224, allPairs.length, arg2, arg1
    return address(create2.new_address)
}



}

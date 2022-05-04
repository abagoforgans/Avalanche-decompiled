contract main {




// =====================  Runtime code  =====================


#
#  - computeProfitMaximizingTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
const vaultCodeHash = sha3(code.data[5522 len 6271])

const pairCodeHash = sha3(code.data[11793 len 9471])


address feeToAddress;
address feeToSetterAddress;
address migratorAddress;
mapping of address pair;
array of address allPairs;
mapping of address vault;
array of address sub_9094a91e;

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

function allVaultsLength() payable {
    return sub_9094a91e.length
}

function allPairsLength() payable {
    return allPairs.length
}

function migrator() payable {
    return migratorAddress
}

function sub_9094a91e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9094a91e.length
    return sub_9094a91e[arg1]
}

function getVault(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return vault[arg1][arg2]
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
        revert with 0, 'Viralswap: FORBIDDEN'
    feeToAddress = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Viralswap: FORBIDDEN'
    migratorAddress = arg1
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Viralswap: FORBIDDEN'
    feeToSetterAddress = arg1
}

function addQuota(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Viralswap: FORBIDDEN'
    if not vault[address(arg1)][address(arg2)]:
        revert with 0, 'Viralswap: VAULT_DOES_NOT_EXIST'
    require ext_code.size(vault[address(arg1)][address(arg2)])
    call vault[address(arg1)][address(arg2)].addQuota(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateRouterInVault(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Viralswap: FORBIDDEN'
    if not vault[address(arg1)][address(arg2)]:
        revert with 0, 'Viralswap: VAULT_DOES_NOT_EXIST'
    require ext_code.size(vault[address(arg1)][address(arg2)])
    call vault[address(arg1)][address(arg2)].updateRouter(address arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20FromVault(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Viralswap: FORBIDDEN'
    if not vault[address(arg1)][address(arg2)]:
        revert with 0, 'Viralswap: VAULT_DOES_NOT_EXIST'
    require ext_code.size(vault[address(arg1)][address(arg2)])
    call vault[address(arg1)][address(arg2)].withdrawERC20(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d84157cb(?) payable {
    require calldata.size - 4 >= 160
    if feeToSetterAddress != msg.sender:
        revert with 0, 'Viralswap: FORBIDDEN'
    if arg2 == arg3:
        revert with 0, 'Viralswap: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'Viralswap: ZERO_ADDRESS'
        if vault[address(arg2)][address(arg3)]:
            revert with 0, 'Viralswap: VAULT_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg3)
                        code: code.data[5522 len 6271]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xdaf12cd4 with:
             gas gas_remaining wei
            args arg1, address(arg2), address(arg3), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        vault[address(arg2)][address(arg3)] = address(create2.new_address)
        vault[address(arg3)][address(arg2)] = address(create2.new_address)
    else:
        if not arg3:
            revert with 0, 'Viralswap: ZERO_ADDRESS'
        if vault[address(arg3)][address(arg2)]:
            revert with 0, 'Viralswap: VAULT_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg3, arg2)
                        code: code.data[5522 len 6271]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xdaf12cd4 with:
             gas gas_remaining wei
            args arg1, address(arg2), address(arg3), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        vault[address(arg3)][address(arg2)] = address(create2.new_address)
        vault[address(arg2)][address(arg3)] = address(create2.new_address)
    sub_9094a91e.length++
    sub_9094a91e[sub_9094a91e.length] = address(create2.new_address)
    emit 0x4dda9a6d: address(create2.new_address), sub_9094a91e.length, arg2, arg3
    return address(create2.new_address)
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'Viralswap: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Viralswap: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'Viralswap: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[11793 len 9471]
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
            revert with 0, 'Viralswap: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'Viralswap: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[11793 len 9471]
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

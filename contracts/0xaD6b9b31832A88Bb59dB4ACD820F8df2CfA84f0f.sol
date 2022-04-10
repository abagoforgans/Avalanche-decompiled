contract main {




// =====================  Runtime code  =====================


const MAX_FEE = 3 * 10^15


address owner;
mapping of uint8 stor1;
uint256 fee;
uint256 feeVault;
address addressVault;
array of struct allPools;
mapping of uint8 stor6;
mapping of address pools;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function allPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPools.length
    return allPools[arg1].field_0
}

function feeVault() payable {
    return feeVault
}

function addressVault() payable {
    return addressVault
}

function isPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function owner() payable {
    return owner
}

function pools(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pools[arg1][arg2]
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        return address(arg2), arg1
    return address(arg1), arg2
}

function setFeeVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Admin: caller is not admin'
    if arg1 >= fee:
        revert with 0, 'Factory: vault fee'
    feeVault = arg1
}

function setaddressVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Admin: caller is not admin'
    if not arg1:
        revert with 0, 'Factory: vault'
    addressVault = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Admin: caller is not admin'
    if arg1 > 3 * 10^15:
        revert with 0, 'Factory: fee should be <= 0.3%'
    fee = arg1
}

function setAdminGrant(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Admin address 0'
    stor1[address(arg1)] = uint8(arg2)
    emit adminGranted(arg2, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[16940 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAllPools() payable {
    if not allPools.length:
        mem[(32 * allPools.length) + 128] = 32
        mem[(32 * allPools.length) + 160] = allPools.length
        mem[(32 * allPools.length) + 192 len floor32(allPools.length)] = mem[128 len floor32(allPools.length)]
        return memory
          from (32 * allPools.length) + 128
           len (96 * allPools.length) + 64
    mem[128] = address(allPools.field_0)
    idx = 128
    s = 0
    while (32 * allPools.length) + 96 > idx:
        mem[idx + 32] = allPools[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allPools.length) + 192 len floor32(allPools.length)] = mem[128 len floor32(allPools.length)]
    return Array(len=allPools.length, data=mem[128 len floor32(allPools.length)], mem[(32 * allPools.length) + floor32(allPools.length) + 192 len (32 * allPools.length) - floor32(allPools.length)]), 
}

function deploy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Factory:no 0x address'
    if not arg2:
        revert with 0, 'Factory:no 0x address'
    if arg1 == arg2:
        revert with 0, 'Factory:no same tokens'
    if pools[address(arg1)][address(arg2)]:
        revert with 0, 'Factory:pool already exists'
    mem[13536 len 13248] = code.data[3684 len 13248]
    mem[26784 len 8] = code.data[16932 len 8]
    if arg1 >= arg2:
        mem[26824] = address(arg2)
        mem[26844] = address(arg1)
        mem[26792] = 40
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: mem[13536 len mem[13504]]
        mem[26932 len 0] = None
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=2, data=mem[26932 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pools[address(arg2)][address(arg1)] = address(create2.new_address)
        pools[address(arg1)][address(arg2)] = address(create2.new_address)
        allPools.length++
        stor36B6[stor5.length] = address(create2.new_address)
        stor6[address(create2.new_address)] = 1
        emit Deployed(address(create2.new_address), arg2, arg1);
    else:
        mem[26824] = address(arg1)
        mem[26844] = address(arg2)
        mem[26792] = 40
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: mem[13536 len mem[13504]]
        mem[26932 len 0] = None
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address[] rg1) with:
             gas gas_remaining wei
            args Array(len=2, data=mem[26932 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pools[address(arg1)][address(arg2)] = address(create2.new_address)
        pools[address(arg2)][address(arg1)] = address(create2.new_address)
        allPools.length++
        stor36B6[stor5.length] = address(create2.new_address)
        stor6[address(create2.new_address)] = 1
        emit Deployed(address(create2.new_address), arg1, arg2);
    return address(create2.new_address)
}



}

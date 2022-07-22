contract main {




// =====================  Runtime code  =====================


address owner;
address sub_5a1c7e79Address;
mapping of address pool;
mapping of uint8 stor3;

function getPoolAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pool[address(arg1)]
}

function poolExists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_5a1c7e79(?) payable {
    return sub_5a1c7e79Address
}

function owner() payable {
    return owner
}

function pools(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pool[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function mintReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[msg.sender]:
        revert with 0, 'Only called from pool'
    require ext_code.size(sub_5a1c7e79Address)
    call sub_5a1c7e79Address.0xb4767398 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4ec5a65c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xb7ea2cf4 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1c81daae: address(arg1), arg2
}

function getPoolData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not pool[address(arg1)]:
        revert with 0, 'pool not found'
    staticcall pool[address(arg1)].poolToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall pool[address(arg1)].0xe6fd48bc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall pool[address(arg1)].0x7e4d9f54 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0] << 192, pool[address(arg1)], ext_call.return_data[0], ext_call.return_data[0]
}

function createPool(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[3399 len 7556], sub_5a1c7e79Address, address(arg1), address(this.address), arg2, arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).poolToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(create.new_address).0x7e4d9f54 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if pool[address(ext_call.return_data[0])]:
        revert with 0, 'This pool is already registered'
    pool[address(ext_call.return_data[0])] = address(create.new_address)
    stor3[address(create.new_address)] = 1
    emit 0xdf17567f: ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), address(create.new_address)
}



}

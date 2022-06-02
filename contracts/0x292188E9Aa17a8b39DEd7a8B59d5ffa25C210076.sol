contract main {




// =====================  Runtime code  =====================


#
#  - sub_192e4c8b(?)
#  - sub_4c298338(?)
#  - sub_b08d0333(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor0;
address owner; offset 16
uint256 stor0;
address assetAddress;
address sub_7f216af3Address;
address sub_d9a1836aAddress;
address stakingContractAddress;
address sub_d460cb94Address;
address managerAddress;
uint32 stor7;
address adminAddress;
uint256 stor7;
uint32 stor8;
address sub_38cdba25Address;
uint256 stor8;
uint256 fee;
uint256 sub_1da577d3;
uint8 sub_5e6663cc;
mapping of struct bonds;
array of address sub_821de0af;

function sub_1da577d3(?) payable {
    return sub_1da577d3
}

function sub_38cdba25(?) payable {
    return address(sub_38cdba25Address)
}

function asset() payable {
    return assetAddress
}

function manager() payable {
    return managerAddress
}

function sub_5e6663cc(?) payable {
    return bool(sub_5e6663cc)
}

function sub_7f216af3(?) payable {
    return sub_7f216af3Address
}

function sub_821de0af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_821de0af.length
    return sub_821de0af[arg1]
}

function owner() payable {
    return owner
}

function sub_d460cb94(?) payable {
    return sub_d460cb94Address
}

function sub_d9a1836a(?) payable {
    return sub_d9a1836aAddress
}

function fee() payable {
    return fee
}

function stakingContract() payable {
    return stakingContractAddress
}

function admin() payable {
    return address(adminAddress)
}

function bonds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bonds[arg1].field_0, bonds[arg1].field_256, bonds[arg1].field_512, bonds[arg1].field_768
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

function changeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    require arg1
    managerAddress = arg1
    emit ManagerChanged(managerAddress, arg1);
}

function sub_8ab2bf19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(adminAddress)
    require address(arg1)
    address(sub_38cdba25Address) = address(arg1)
    emit 0x834ceb83: address(sub_38cdba25Address), address(arg1)
}

function sub_943a9400(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg1) == bool(sub_5e6663cc):
        revert with 0, 'Cannot set mode to current mode'
    sub_5e6663cc = uint8(bool(arg1))
    emit 0x85388ce6: bool(arg1)
}

function sub_fdcd5b9a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_1da577d3 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New discount value is the same as current one'
    sub_1da577d3 = arg1
    emit 0xa607180a: sub_1da577d3, arg1
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

function sub_23f8e295(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    if not bonds[address(arg1)].field_0:
        sub_821de0af.length++
        sub_821de0af[sub_821de0af.length] = address(arg1)
    if bonds[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if bonds[address(arg1)].field_256 > !arg3:
        revert with 0, 17
    if 120 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    bonds[address(arg1)].field_0 += arg2
    bonds[address(arg1)].field_256 += arg3
    bonds[address(arg1)].field_512 = block.timestamp + (120 * 24 * 3600)
    bonds[address(arg1)].field_768 = 0
}

function sub_04e570d9(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    require ext_code.size(sub_7f216af3Address)
    call sub_7f216af3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x21dd06e4: arg1
}

function sub_85569a46(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    require block.timestamp <= bonds[address(arg1)].field_512
    bonds[address(arg1)].field_0 = 0
    idx = 0
    while idx < sub_821de0af.length:
        mem[0] = 13
        if sub_821de0af[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_821de0af.length < 1:
            revert with 0, 17
        if sub_821de0af.length - 1 >= sub_821de0af.length:
            revert with 0, 50
        if idx >= sub_821de0af.length:
            revert with 0, 50
        sub_821de0af[idx] = sub_821de0af[sub_821de0af.length]
        if not sub_821de0af.length:
            revert with 0, 49
        sub_821de0af[sub_821de0af.length] = 0
        sub_821de0af.length--
}

function sub_096c70af(?) payable {
    require calldata.size - 4 >= 384
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    require arg12 == bool(arg12)
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    require address(arg1)
    sub_d460cb94Address = address(arg1)
    require address(arg2)
    assetAddress = address(arg2)
    require address(arg3)
    sub_7f216af3Address = address(arg3)
    require address(arg4)
    sub_d9a1836aAddress = address(arg4)
    require address(arg5)
    stakingContractAddress = address(arg5)
    require address(arg7)
    address(adminAddress) = address(arg7)
    require address(arg6)
    managerAddress = address(arg6)
    require address(arg8)
    address(sub_38cdba25Address) = address(arg8)
    if arg10 >= 10000:
        revert with 0, 'Fee should be less than 100%'
    fee = arg10
    sub_1da577d3 = arg11
    sub_5e6663cc = uint8(bool(arg12))
    owner = address(arg9)
    emit OwnershipTransferred(owner, address(arg9));
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_5831991f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    require ext_code.size(assetAddress)
    staticcall assetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough tokens'
    require ext_code.size(assetAddress)
    call assetAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6661f105: arg1
}

function sub_45d2bafc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not enough tokens'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    staticcall address(arg3).bondPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    call address(arg3).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg2, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_66822d54(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3 > 0x41dd860bd5ce16206b07f9d33b6ee3f4adecf5f74094326d9aa10fb1c8f0d1:
        revert with 0, 17
    if arg4 > 0x41dd860bd5ce16206b07f9d33b6ee3f4adecf5f74094326d9aa10fb1c8f0d1:
        revert with 0, 17
    if 60 > !block.timestamp:
        revert with 0, 17
    require ext_code.size(address(arg5))
    call address(arg5).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, 995 * arg3 / 1000, 995 * arg4 / 1000, address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[32]
}

function sub_849f5828(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 10000 * arg2 / arg1 < 10000:
        revert with 0, 17
    if (10000 * arg2 / arg1) - 10000 < sub_1da577d3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bonding discount lower than threshold'
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_code.size(sub_7f216af3Address)
    staticcall sub_7f216af3Address.circulatingSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 60 > !(100000 * ext_call.return_data[32] / ext_call.return_data[0] / 100):
        revert with 0, 17
    if (100000 * ext_call.return_data[32] / ext_call.return_data[0] / 100) + 60 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 100000 * ext_call.return_data[32] / ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not 2 * (100000 * ext_call.return_data[32] / ext_call.return_data[0] / 100) + 60:
        revert with 0, 18
    return (10000 * arg2 / arg1) - 10000 >= 100 * 100000 * ext_call.return_data[32] / ext_call.return_data[0] / 2 * (100000 * ext_call.return_data[32] / ext_call.return_data[0] / 100) + 60
}

function sub_72b35ac3(?) payable {
    idx = 0
    s = 0
    while idx < sub_821de0af.length:
        mem[0] = sub_821de0af[idx]
        mem[32] = 12
        if s > !bonds[stor13[idx]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + bonds[stor13[idx]].field_0
        continue 
    return (s * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length)
}

function recoverLostToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_7f216af3Address == arg1:
        revert with 0, 'Use withdraw function'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(adminAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor7)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(sub_7f216af3Address)
    staticcall sub_7f216af3Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough tokens'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Deposit(arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_7f216af3Address)
    staticcall sub_7f216af3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough tokens'
    mem[ceil32(return_data.size) + 132] = owner
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdrawal(arg1);
}

function sub_da582163(?) payable {
    idx = 0
    s = 0
    while idx < sub_821de0af.length:
        mem[0] = sub_821de0af[idx]
        mem[32] = 12
        if s > !bonds[stor13[idx]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + bonds[stor13[idx]].field_0
        continue 
    if 0 > !(s * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length):
        revert with 0, 17
    require ext_code.size(sub_7f216af3Address)
    staticcall sub_7f216af3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length > !ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(assetAddress)
    staticcall assetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (s * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length) + ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return ((s * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length) + (2 * ext_call.return_data[0]))
}

function sub_14c80312(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    mem[100] = this.address
    mem[132] = 1
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args this.address, 1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and fee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * fee / 10000:
        revert with 0, 17
    if bonds[address(arg1)].field_0 < ext_call.return_data[0]:
        revert with 0, 17
    bonds[address(arg1)].field_0 -= ext_call.return_data[0]
    if block.timestamp >= bonds[address(arg1)].field_512:
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
        require block.timestamp <= bonds[address(arg1)].field_512
        bonds[address(arg1)].field_0 = 0
        idx = 0
        while idx < sub_821de0af.length:
            mem[0] = 13
            if sub_821de0af[idx] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_821de0af.length < 1:
                revert with 0, 17
            if sub_821de0af.length - 1 >= sub_821de0af.length:
                revert with 0, 50
            if idx >= sub_821de0af.length:
                revert with 0, 50
            sub_821de0af[idx] = sub_821de0af[sub_821de0af.length]
            if not sub_821de0af.length:
                revert with 0, 49
            sub_821de0af[sub_821de0af.length] = 0
            sub_821de0af.length--
            mem[ceil32(return_data.size) + 132] = address(sub_38cdba25Address)
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * fee / 10000
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor8)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_7f216af3Address):
                revert with 0, 'Address: call to non-contract'
            idx = 0
            while idx < 68:
                mem[idx + ceil32(return_data.size) + 260] = mem[idx + ceil32(return_data.size) + 128]
                idx = idx + 32
                continue 
            mem[ceil32(return_data.size) + 328] = 0
            call sub_7f216af3Address.mem[ceil32(return_data.size) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), 0 == bool(uint32(this.address), 0)
                    if not uint32(this.address), 0:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xbbb59c50: address(arg1), ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000)
            return (ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000))
    mem[ceil32(return_data.size) + 132] = address(sub_38cdba25Address)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * fee / 10000
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor8)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), 0 == bool(uint32(this.address), 0)
            if not uint32(this.address), 0:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xbbb59c50: address(arg1), ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000)
    return (ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000))
}

function redeem(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    mem[132] = 0
    require ext_code.size(sub_d460cb94Address)
    staticcall sub_d460cb94Address.0x7df85fea with:
            gas gas_remaining wei
           args address(arg1), 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Depository doesn't exist or is inactive'
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = 1
    require ext_code.size(arg1)
    call arg1.redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args this.address, 1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and fee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * fee / 10000:
        revert with 0, 17
    if bonds[address(arg1)].field_0 < ext_call.return_data[0]:
        revert with 0, 17
    bonds[address(arg1)].field_0 -= ext_call.return_data[0]
    if block.timestamp >= bonds[address(arg1)].field_512:
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
        require block.timestamp <= bonds[address(arg1)].field_512
        bonds[address(arg1)].field_0 = 0
        idx = 0
        while idx < sub_821de0af.length:
            mem[0] = 13
            if sub_821de0af[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_821de0af.length < 1:
                revert with 0, 17
            if sub_821de0af.length - 1 >= sub_821de0af.length:
                revert with 0, 50
            if idx >= sub_821de0af.length:
                revert with 0, 50
            sub_821de0af[idx] = sub_821de0af[sub_821de0af.length]
            if not sub_821de0af.length:
                revert with 0, 49
            sub_821de0af[sub_821de0af.length] = 0
            sub_821de0af.length--
            mem[(2 * ceil32(return_data.size)) + 132] = address(sub_38cdba25Address)
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * fee / 10000
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor8)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_7f216af3Address):
                revert with 0, 'Address: call to non-contract'
            idx = 0
            while idx < 68:
                mem[idx + (2 * ceil32(return_data.size)) + 260] = mem[idx + (2 * ceil32(return_data.size)) + 128]
                idx = idx + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call sub_7f216af3Address.mem[(2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        emit 0xbbb59c50: arg1, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000)
                    require ext_call.return_data[0] >= 32
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 264] = 32
                idx = 0
                while idx < 32:
                    mem[idx + (2 * ceil32(return_data.size)) + 328] = mem[idx + (2 * ceil32(return_data.size)) + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + 328]
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                idx = 0
                while idx < 32:
                    mem[idx + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = mem[idx + (2 * ceil32(return_data.size)) + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xbbb59c50: arg1, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000)
    mem[(2 * ceil32(return_data.size)) + 132] = address(sub_38cdba25Address)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * fee / 10000
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            emit 0xbbb59c50: arg1, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000)
        require ext_call.return_data[0] >= 32
        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xbbb59c50: arg1, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 10000)
}

function sub_31455e86(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 97 < 96 or ceil32(32 * ('cd', 164).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if sub_5e6663cc:
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        if 0 >= ('cd', 164).length:
            revert with 0, 50
        require mem[140 len 20] == address(cd[4])
        if ('cd', 164).length < 1:
            revert with 0, 17
        if ('cd', 164).length - 1 >= ('cd', 164).length:
            revert with 0, 50
        require mem[(32 * ('cd', 164).length - 1) + 140 len 20] == address(cd[36])
        mem[ceil32(32 * ('cd', 164).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 164).length) + 101] = cd[100]
        mem[ceil32(32 * ('cd', 164).length) + 133] = 64
        mem[ceil32(32 * ('cd', 164).length) + 165] = ('cd', 164).length
        idx = 0
        s = 128
        t = ceil32(32 * ('cd', 164).length) + 197
        while idx < ('cd', 164).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + 197 len 32 * ('cd', 164).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 164).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _157 = mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
        require ceil32(32 * ('cd', 164).length) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
        _159 = mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        if mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        require _157 + (32 * _159) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 32 * _159] = mem[ceil32(32 * ('cd', 164).length) + _157 + 129 len 32 * _159]
        if 10000 < cd[132]:
            revert with 0, 17
        if _159 < 1:
            revert with 0, 17
        if _159 - 1 >= _159:
            revert with 0, 50
        if mem[(32 * _159 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] and -cd[132] + 10000 > -1 / mem[(32 * _159 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129]:
            revert with 0, 17
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), cd[100]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_219] == bool(mem[_219])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[100]
        mem[mem[64] + 36] = (10000 * mem[(32 * _159 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129]) - (cd[132] * mem[(32 * _159 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129]) / 10000
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 164).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 164).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[100], mem[mem[64] + 36], Array(len=('cd', 164).length, data=mem[mem[64] + 196 len 32 * ('cd', 164).length]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _257 = mem[_255]
        require mem[_255] <= test266151307()
        require _255 + return_data.size > _255 + mem[_255] + 31
        _259 = mem[_255 + mem[_255]]
        if mem[_255 + mem[_255]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_255 + mem[_255]]) + 1 < 0 or _255 + ceil32(return_data.size) + ceil32(32 * mem[_255 + mem[_255]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _255 + ceil32(return_data.size) + ceil32(32 * mem[_255 + mem[_255]]) + 1
        mem[_255 + ceil32(return_data.size)] = _259
        require _257 + (32 * _259) + 32 <= return_data.size
        mem[_255 + ceil32(return_data.size) + 32 len 32 * _259] = mem[_255 + _257 + 32 len 32 * _259]
        if _259 < 1:
            revert with 0, 17
        if _259 - 1 >= _259:
            revert with 0, 50
        return memory
          from (32 * _259 - 1) + _255 + ceil32(return_data.size) + 32
           len 32
    if owner != msg.sender:
        revert with 0, 'Only depositor can call manual vaults'
    if 0 >= ('cd', 164).length:
        revert with 0, 50
    require mem[140 len 20] == address(cd[4])
    if ('cd', 164).length < 1:
        revert with 0, 17
    if ('cd', 164).length - 1 >= ('cd', 164).length:
        revert with 0, 50
    require mem[(32 * ('cd', 164).length - 1) + 140 len 20] == address(cd[36])
    mem[ceil32(32 * ('cd', 164).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 164).length) + 101] = cd[100]
    mem[ceil32(32 * ('cd', 164).length) + 133] = 64
    mem[ceil32(32 * ('cd', 164).length) + 165] = ('cd', 164).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 164).length) + 197
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + 197 len 32 * ('cd', 164).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 164).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _156 = mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
    require mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 164).length) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
    _158 = mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * ('cd', 164).length) + mem[ceil32(32 * ('cd', 164).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
    require _156 + (32 * _158) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 32 * _158] = mem[ceil32(32 * ('cd', 164).length) + _156 + 129 len 32 * _158]
    if 10000 < cd[132]:
        revert with 0, 17
    if _158 < 1:
        revert with 0, 17
    if _158 - 1 >= _158:
        revert with 0, 50
    if mem[(32 * _158 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] and -cd[132] + 10000 > -1 / mem[(32 * _158 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129]:
        revert with 0, 17
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[100]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[100]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_218] == bool(mem[_218])
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[100]
    mem[mem[64] + 36] = (10000 * mem[(32 * _158 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129]) - (cd[132] * mem[(32 * _158 - 1) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129]) / 10000
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 164).length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[100], mem[mem[64] + 36], Array(len=('cd', 164).length, data=mem[mem[64] + 196 len 32 * ('cd', 164).length]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _254 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _256 = mem[_254]
    require mem[_254] <= test266151307()
    require _254 + return_data.size > _254 + mem[_254] + 31
    _258 = mem[_254 + mem[_254]]
    if mem[_254 + mem[_254]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_254 + mem[_254]]) + 1 < 0 or _254 + ceil32(return_data.size) + ceil32(32 * mem[_254 + mem[_254]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _254 + ceil32(return_data.size) + ceil32(32 * mem[_254 + mem[_254]]) + 1
    mem[_254 + ceil32(return_data.size)] = _258
    require _256 + (32 * _258) + 32 <= return_data.size
    mem[_254 + ceil32(return_data.size) + 32 len 32 * _258] = mem[_254 + _256 + 32 len 32 * _258]
    if _258 < 1:
        revert with 0, 17
    if _258 - 1 >= _258:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _258 - 1) + _254 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_da05faad(?) payable {
    mem[64] = 96
    idx = 0
    while idx < sub_821de0af.length:
        mem[0] = 13
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 1
            require ext_code.size(sub_821de0af[idx])
            call sub_821de0af[idx].redeem(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args this.address, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _767 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _771 = mem[_767]
            if mem[_767] and fee > -1 / mem[_767]:
                revert with 0, 17
            if mem[_767] < mem[_767] * fee / 10000:
                revert with 0, 17
            if bonds[stor13[idx]].field_0 < mem[_767]:
                revert with 0, 17
            bonds[stor13[idx]].field_0 -= mem[_767]
            mem[0] = sub_821de0af[idx]
            mem[32] = 12
            if block.timestamp < bonds[stor13[idx]].field_512:
                _777 = mem[64]
                mem[mem[64] + 36] = address(sub_38cdba25Address)
                mem[mem[64] + 68] = _771 * fee / 10000
                _778 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_778 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_778 + 36 len 28]
                mem[64] = _777 + 164
                mem[_777 + 100] = 32
                mem[_777 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_7f216af3Address):
                    revert with 0, 'Address: call to non-contract'
                _807 = mem[_778]
                s = 0
                while s < _807:
                    mem[s + _777 + 164] = mem[s + _778 + 32]
                    s = s + 32
                    continue 
                if ceil32(_807) > _807:
                    mem[_807 + _777 + 164] = 0
                call sub_7f216af3Address.mem[_777 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_777 + 168 len _807 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_777 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_777 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _777 + 232] = mem[idx + _777 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_777 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _777 + ceil32(return_data.size) + 165
                    mem[_777 + 164] = return_data.size
                    mem[_777 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_777 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_777 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _777 + ceil32(return_data.size) + 233] = mem[idx + _777 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_777 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_777 + 196] == bool(mem[_777 + 196])
                        if not mem[_777 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    require block.timestamp <= bonds[stor13[idx]].field_512
                    mem[0] = sub_821de0af[idx]
                    mem[32] = 12
                    bonds[stor13[idx]].field_0 = 0
                    s = 0
                    while s < sub_821de0af.length:
                        mem[0] = 13
                        if sub_821de0af[s] != sub_821de0af[idx]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_821de0af.length < 1:
                            revert with 0, 17
                        if sub_821de0af.length - 1 >= sub_821de0af.length:
                            revert with 0, 50
                        if s >= sub_821de0af.length:
                            revert with 0, 50
                        sub_821de0af[s] = sub_821de0af[sub_821de0af.length]
                        if not sub_821de0af.length:
                            revert with 0, 49
                        mem[0] = 13
                        sub_821de0af[sub_821de0af.length] = 0
                        sub_821de0af.length--
                        _1617 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _771 * fee / 10000
                        _1625 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1625 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1625 + 36 len 28]
                        mem[64] = _1617 + 164
                        mem[_1617 + 100] = 32
                        mem[_1617 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1725 = mem[_1625]
                        s = 0
                        while s < _1725:
                            mem[s + _1617 + 164] = mem[s + _1625 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1725) > _1725:
                            mem[_1725 + _1617 + 164] = 0
                        call sub_7f216af3Address.mem[_1617 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1617 + 168 len _1725 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1617 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1617 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1617 + 232] = mem[idx + _1617 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1617 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1617 + ceil32(return_data.size) + 165
                            mem[_1617 + 164] = return_data.size
                            mem[_1617 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1617 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1617 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1617 + ceil32(return_data.size) + 233] = mem[idx + _1617 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1617 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1617 + 196] == bool(mem[_1617 + 196])
                                if not mem[_1617 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xbbb59c50: sub_821de0af[idx], _771 - (_771 * fee / 10000)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1525 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _771 * fee / 10000
                    _1531 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1531 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1531 + 36 len 28]
                    mem[64] = _1525 + 164
                    mem[_1525 + 100] = 32
                    mem[_1525 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _1605 = mem[_1531]
                    s = 0
                    while s < _1605:
                        mem[s + _1525 + 164] = mem[s + _1531 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1605) > _1605:
                        mem[_1605 + _1525 + 164] = 0
                    call sub_7f216af3Address.mem[_1525 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1525 + 168 len _1605 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1525 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1525 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1525 + 232] = mem[idx + _1525 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1525 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1525 + ceil32(return_data.size) + 165
                        mem[_1525 + 164] = return_data.size
                        mem[_1525 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1525 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1525 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1525 + ceil32(return_data.size) + 233] = mem[idx + _1525 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1525 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1525 + 196] == bool(mem[_1525 + 196])
                            if not mem[_1525 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                    require block.timestamp <= bonds[stor13[idx]].field_512
                    mem[0] = sub_821de0af[idx]
                    mem[32] = 12
                    bonds[stor13[idx]].field_0 = 0
                    s = 0
                    while s < sub_821de0af.length:
                        mem[0] = 13
                        if sub_821de0af[s] != sub_821de0af[idx]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_821de0af.length < 1:
                            revert with 0, 17
                        if sub_821de0af.length - 1 >= sub_821de0af.length:
                            revert with 0, 50
                        if s >= sub_821de0af.length:
                            revert with 0, 50
                        sub_821de0af[s] = sub_821de0af[sub_821de0af.length]
                        if not sub_821de0af.length:
                            revert with 0, 49
                        mem[0] = 13
                        sub_821de0af[sub_821de0af.length] = 0
                        sub_821de0af.length--
                        _1618 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _771 * fee / 10000
                        _1627 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1627 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1627 + 36 len 28]
                        mem[64] = _1618 + 164
                        mem[_1618 + 100] = 32
                        mem[_1618 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1727 = mem[_1627]
                        s = 0
                        while s < _1727:
                            mem[s + _1618 + 164] = mem[s + _1627 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1727) > _1727:
                            mem[_1727 + _1618 + 164] = 0
                        call sub_7f216af3Address.mem[_1618 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1618 + 168 len _1727 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1618 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1618 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1618 + 232] = mem[idx + _1618 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1618 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1618 + ceil32(return_data.size) + 165
                            mem[_1618 + 164] = return_data.size
                            mem[_1618 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1618 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1618 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1618 + ceil32(return_data.size) + 233] = mem[idx + _1618 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1618 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1618 + 196] == bool(mem[_1618 + 196])
                                if not mem[_1618 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xbbb59c50: sub_821de0af[idx], _771 - (_771 * fee / 10000)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1526 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _771 * fee / 10000
                    _1533 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1533 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1533 + 36 len 28]
                    mem[64] = _1526 + 164
                    mem[_1526 + 100] = 32
                    mem[_1526 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _1607 = mem[_1533]
                    s = 0
                    while s < _1607:
                        mem[s + _1526 + 164] = mem[s + _1533 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1607) > _1607:
                        mem[_1607 + _1526 + 164] = 0
                    call sub_7f216af3Address.mem[_1526 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1526 + 168 len _1607 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1526 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1526 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1526 + 232] = mem[idx + _1526 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1526 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1526 + ceil32(return_data.size) + 165
                        mem[_1526 + 164] = return_data.size
                        mem[_1526 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1526 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1526 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1526 + ceil32(return_data.size) + 233] = mem[idx + _1526 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1526 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1526 + 196] == bool(mem[_1526 + 196])
                            if not mem[_1526 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xbbb59c50: sub_821de0af[idx], _771 - (_771 * fee / 10000)
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 1
            require ext_code.size(sub_821de0af[idx])
            call sub_821de0af[idx].redeem(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args this.address, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _770 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _772 = mem[_770]
            if mem[_770] and fee > -1 / mem[_770]:
                revert with 0, 17
            if mem[_770] < mem[_770] * fee / 10000:
                revert with 0, 17
            if bonds[stor13[idx]].field_0 < mem[_770]:
                revert with 0, 17
            bonds[stor13[idx]].field_0 -= mem[_770]
            mem[0] = sub_821de0af[idx]
            mem[32] = 12
            if block.timestamp < bonds[stor13[idx]].field_512:
                _780 = mem[64]
                mem[mem[64] + 36] = address(sub_38cdba25Address)
                mem[mem[64] + 68] = _772 * fee / 10000
                _785 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_785 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_785 + 36 len 28]
                mem[64] = _780 + 164
                mem[_780 + 100] = 32
                mem[_780 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_7f216af3Address):
                    revert with 0, 'Address: call to non-contract'
                _818 = mem[_785]
                s = 0
                while s < _818:
                    mem[s + _780 + 164] = mem[s + _785 + 32]
                    s = s + 32
                    continue 
                if ceil32(_818) > _818:
                    mem[_818 + _780 + 164] = 0
                call sub_7f216af3Address.mem[_780 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_780 + 168 len _818 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_780 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_780 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _780 + 232] = mem[idx + _780 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_780 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _780 + ceil32(return_data.size) + 165
                    mem[_780 + 164] = return_data.size
                    mem[_780 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_780 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_780 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _780 + ceil32(return_data.size) + 233] = mem[idx + _780 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_780 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_780 + 196] == bool(mem[_780 + 196])
                        if not mem[_780 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    require block.timestamp <= bonds[stor13[idx]].field_512
                    mem[0] = sub_821de0af[idx]
                    mem[32] = 12
                    bonds[stor13[idx]].field_0 = 0
                    s = 0
                    while s < sub_821de0af.length:
                        mem[0] = 13
                        if sub_821de0af[s] != sub_821de0af[idx]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_821de0af.length < 1:
                            revert with 0, 17
                        if sub_821de0af.length - 1 >= sub_821de0af.length:
                            revert with 0, 50
                        if s >= sub_821de0af.length:
                            revert with 0, 50
                        sub_821de0af[s] = sub_821de0af[sub_821de0af.length]
                        if not sub_821de0af.length:
                            revert with 0, 49
                        mem[0] = 13
                        sub_821de0af[sub_821de0af.length] = 0
                        sub_821de0af.length--
                        _1619 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _772 * fee / 10000
                        _1633 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1633 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1633 + 36 len 28]
                        mem[64] = _1619 + 164
                        mem[_1619 + 100] = 32
                        mem[_1619 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1729 = mem[_1633]
                        s = 0
                        while s < _1729:
                            mem[s + _1619 + 164] = mem[s + _1633 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1729) > _1729:
                            mem[_1729 + _1619 + 164] = 0
                        call sub_7f216af3Address.mem[_1619 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1619 + 168 len _1729 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1619 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1619 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1619 + 232] = mem[idx + _1619 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1619 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1619 + ceil32(return_data.size) + 165
                            mem[_1619 + 164] = return_data.size
                            mem[_1619 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1619 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1619 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1619 + ceil32(return_data.size) + 233] = mem[idx + _1619 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1619 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1619 + 196] == bool(mem[_1619 + 196])
                                if not mem[_1619 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xbbb59c50: sub_821de0af[idx], _772 - (_772 * fee / 10000)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1527 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _772 * fee / 10000
                    _1537 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1537 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1537 + 36 len 28]
                    mem[64] = _1527 + 164
                    mem[_1527 + 100] = 32
                    mem[_1527 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _1613 = mem[_1537]
                    s = 0
                    while s < _1613:
                        mem[s + _1527 + 164] = mem[s + _1537 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1613) > _1613:
                        mem[_1613 + _1527 + 164] = 0
                    call sub_7f216af3Address.mem[_1527 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1527 + 168 len _1613 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1527 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1527 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1527 + 232] = mem[idx + _1527 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1527 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1527 + ceil32(return_data.size) + 165
                        mem[_1527 + 164] = return_data.size
                        mem[_1527 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1527 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1527 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1527 + ceil32(return_data.size) + 233] = mem[idx + _1527 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1527 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1527 + 196] == bool(mem[_1527 + 196])
                            if not mem[_1527 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                    require block.timestamp <= bonds[stor13[idx]].field_512
                    mem[0] = sub_821de0af[idx]
                    mem[32] = 12
                    bonds[stor13[idx]].field_0 = 0
                    s = 0
                    while s < sub_821de0af.length:
                        mem[0] = 13
                        if sub_821de0af[s] != sub_821de0af[idx]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_821de0af.length < 1:
                            revert with 0, 17
                        if sub_821de0af.length - 1 >= sub_821de0af.length:
                            revert with 0, 50
                        if s >= sub_821de0af.length:
                            revert with 0, 50
                        sub_821de0af[s] = sub_821de0af[sub_821de0af.length]
                        if not sub_821de0af.length:
                            revert with 0, 49
                        mem[0] = 13
                        sub_821de0af[sub_821de0af.length] = 0
                        sub_821de0af.length--
                        _1620 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _772 * fee / 10000
                        _1635 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1635 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1635 + 36 len 28]
                        mem[64] = _1620 + 164
                        mem[_1620 + 100] = 32
                        mem[_1620 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1731 = mem[_1635]
                        s = 0
                        while s < _1731:
                            mem[s + _1620 + 164] = mem[s + _1635 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1731) > _1731:
                            mem[_1731 + _1620 + 164] = 0
                        call sub_7f216af3Address.mem[_1620 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1620 + 168 len _1731 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1620 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1620 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1620 + 232] = mem[idx + _1620 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1620 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1620 + ceil32(return_data.size) + 165
                            mem[_1620 + 164] = return_data.size
                            mem[_1620 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1620 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1620 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1620 + ceil32(return_data.size) + 233] = mem[idx + _1620 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1620 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1620 + 196] == bool(mem[_1620 + 196])
                                if not mem[_1620 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xbbb59c50: sub_821de0af[idx], _772 - (_772 * fee / 10000)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1528 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _772 * fee / 10000
                    _1539 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1539 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1539 + 36 len 28]
                    mem[64] = _1528 + 164
                    mem[_1528 + 100] = 32
                    mem[_1528 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _1615 = mem[_1539]
                    s = 0
                    while s < _1615:
                        mem[s + _1528 + 164] = mem[s + _1539 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1615) > _1615:
                        mem[_1615 + _1528 + 164] = 0
                    call sub_7f216af3Address.mem[_1528 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1528 + 168 len _1615 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1528 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1528 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1528 + 232] = mem[idx + _1528 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1528 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1528 + ceil32(return_data.size) + 165
                        mem[_1528 + 164] = return_data.size
                        mem[_1528 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1528 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1528 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1528 + ceil32(return_data.size) + 233] = mem[idx + _1528 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1528 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1528 + 196] == bool(mem[_1528 + 196])
                            if not mem[_1528 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xbbb59c50: sub_821de0af[idx], _772 - (_772 * fee / 10000)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}

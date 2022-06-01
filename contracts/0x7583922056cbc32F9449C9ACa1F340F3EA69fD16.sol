contract main {




// =====================  Runtime code  =====================


#
#  - sub_5df31227(?)
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

function sub_84828755(?) payable {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require arg11 == bool(arg11)
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
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
    if arg9 >= 10000:
        revert with 0, 'Fee should be less than 100%'
    fee = arg9
    sub_1da577d3 = arg10
    sub_5e6663cc = uint8(bool(arg11))
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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

function sub_5831991f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    require ext_code.size(assetAddress)
    staticcall assetAddress.balanceOf(address arg1) with:
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(sub_7f216af3Address)
    staticcall sub_7f216af3Address.balanceOf(address arg1) with:
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
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
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
    staticcall sub_7f216af3Address.balanceOf(address arg1) with:
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
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg1, 0) << 288)
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

function recoverLostToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if assetAddress == arg1:
        revert with 0, 'NAT'
    if sub_7f216af3Address == arg1:
        revert with 0, 'NAP'
    if sub_d9a1836aAddress == arg1:
        revert with 0, 'NAW'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
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
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0) << 288)
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
    staticcall sub_7f216af3Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length * sub_821de0af.length > !ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(assetAddress)
    staticcall assetAddress.balanceOf(address arg1) with:
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
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) << 288)
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
    require ext_code.size(sub_d460cb94Address)
    staticcall sub_d460cb94Address.0x58aaf22b with:
            gas gas_remaining wei
           args arg1
    mem[96 len 224] = ext_call.return_data[0 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    require ext_call.return_data[12 len 20]
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
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + (2 * ceil32(return_data.size)) + 328] = mem[idx + (2 * ceil32(return_data.size)) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + 328]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
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
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_7f216af3Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_7f216af3Address with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0] * fee / 10000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
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

function sub_0fd9a0ee(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
        mem[96] = 2
        mem[128] = address(arg1)
        mem[160] = address(arg2)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _73 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _75 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _73 + (32 * _75) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _75] = mem[_73 + 224 len 32 * _75]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _75:
            revert with 0, 50
        _123 = mem[ceil32(return_data.size) + 256]
        if mem[ceil32(return_data.size) + 256] and -arg4 + 10000 > -1 / mem[ceil32(return_data.size) + 256]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = arg3
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_129] == bool(mem[_129])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _123) - (arg4 * _123) / 10000
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10000 * _123) - (arg4 * _123) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _165 = mem[_163]
        require mem[_163] <= test266151307()
        require _163 + mem[_163] + 31 < _163 + return_data.size
        _167 = mem[_163 + mem[_163]]
        if mem[_163 + mem[_163]] > test266151307():
            revert with 0, 65
        if _163 + ceil32(return_data.size) + ceil32(32 * mem[_163 + mem[_163]]) + 1 > test266151307() or ceil32(32 * mem[_163 + mem[_163]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _163 + ceil32(return_data.size) + ceil32(32 * mem[_163 + mem[_163]]) + 1
        mem[_163 + ceil32(return_data.size)] = _167
        require return_data.size >= _165 + (32 * _167) + 32
        mem[_163 + ceil32(return_data.size) + 32 len 32 * _167] = mem[_163 + _165 + 32 len 32 * _167]
        if 1 >= _167:
            revert with 0, 50
        mem[mem[64]] = mem[_163 + ceil32(return_data.size) + 64]
    else:
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
        mem[96] = 2
        mem[128] = address(arg1)
        mem[160] = address(arg2)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _74 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _76 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _74 + (32 * _76) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _76] = mem[_74 + 224 len 32 * _76]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _76:
            revert with 0, 50
        _124 = mem[ceil32(return_data.size) + 256]
        if mem[ceil32(return_data.size) + 256] and -arg4 + 10000 > -1 / mem[ceil32(return_data.size) + 256]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = arg3
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_130] == bool(mem[_130])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _124) - (arg4 * _124) / 10000
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10000 * _124) - (arg4 * _124) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _166 = mem[_164]
        require mem[_164] <= test266151307()
        require _164 + mem[_164] + 31 < _164 + return_data.size
        _168 = mem[_164 + mem[_164]]
        if mem[_164 + mem[_164]] > test266151307():
            revert with 0, 65
        if _164 + ceil32(return_data.size) + ceil32(32 * mem[_164 + mem[_164]]) + 1 > test266151307() or ceil32(32 * mem[_164 + mem[_164]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _164 + ceil32(return_data.size) + ceil32(32 * mem[_164 + mem[_164]]) + 1
        mem[_164 + ceil32(return_data.size)] = _168
        require return_data.size >= _166 + (32 * _168) + 32
        mem[_164 + ceil32(return_data.size) + 32 len 32 * _168] = mem[_164 + _166 + 32 len 32 * _168]
        if 1 >= _168:
            revert with 0, 50
        mem[mem[64]] = mem[_164 + ceil32(return_data.size) + 64]
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

function sub_f57b7822(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
            mem[100] = stakingContractAddress
            mem[132] = arg3
            require ext_code.size(sub_7f216af3Address)
            call sub_7f216af3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stakingContractAddress, arg3
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x21dd06e4: arg3
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = assetAddress
                mem[ceil32(return_data.size) + 160] = address(arg1)
                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = arg3
                mem[ceil32(return_data.size) + 228] = 64
                mem[ceil32(return_data.size) + 260] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg5))
                staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1401 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                _1409 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _1401 + (32 * _1409) + 32
                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1409] = mem[ceil32(return_data.size) + _1401 + 224 len 32 * _1409]
                if 10000 < arg4:
                    revert with 0, 17
                if 1 >= _1409:
                    revert with 0, 50
                _2673 = mem[(2 * ceil32(return_data.size)) + 256]
                if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                mem[mem[64] + 4] = address(arg5)
                mem[mem[64] + 36] = arg3
                require ext_code.size(assetAddress)
                call assetAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg5), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2697] == bool(mem[_2697])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = (10000 * _2673) - (arg4 * _2673) / 10000
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                require ext_code.size(address(arg5))
                call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, (10000 * _2673) - (arg4 * _2673) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3905 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3913 = mem[_3905]
                require mem[_3905] <= test266151307()
                require _3905 + mem[_3905] + 31 < _3905 + return_data.size
                _3921 = mem[_3905 + mem[_3905]]
                if mem[_3905 + mem[_3905]] > test266151307():
                    revert with 0, 65
                if _3905 + ceil32(return_data.size) + ceil32(32 * mem[_3905 + mem[_3905]]) + 1 > test266151307() or ceil32(32 * mem[_3905 + mem[_3905]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _3905 + ceil32(return_data.size) + ceil32(32 * mem[_3905 + mem[_3905]]) + 1
                mem[_3905 + ceil32(return_data.size)] = _3921
                require return_data.size >= _3913 + (32 * _3921) + 32
                mem[_3905 + ceil32(return_data.size) + 32 len 32 * _3921] = mem[_3905 + _3913 + 32 len 32 * _3921]
                if 1 >= _3921:
                    revert with 0, 50
                _5065 = mem[_3905 + ceil32(return_data.size) + 64]
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _5065
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), _5065
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5121 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5121] == bool(mem[_5121])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5217 = mem[_5201]
                    mem[mem[64] + 4] = _5065
                    mem[mem[64] + 36] = _5217
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(arg2))
                    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _5065, _5217, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not sub_5e6663cc:
                        if owner != msg.sender:
                            revert with 0, 'Only depositor can call manual vaults'
                    else:
                        if managerAddress != msg.sender:
                            revert with 0, 'Only manager can call managed vaults'
                    if not bonds[address(arg2)].field_0:
                        sub_821de0af.length++
                        sub_821de0af[sub_821de0af.length] = address(arg2)
                    if bonds[address(arg2)].field_0 > !mem[_5265]:
                        revert with 0, 17
                    if bonds[address(arg2)].field_256 > !arg3:
                        revert with 0, 17
                    if 120 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    bonds[address(arg2)].field_0 += mem[_5265]
                    bonds[address(arg2)].field_256 += arg3
                    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                    bonds[address(arg2)].field_768 = 0
                    emit 0x2196ba14: arg3, address(arg1), mem[_5265]
                    return memory
                      from _5265
                       len 32
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _5065
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _5065
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5145] == bool(mem[_5145])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5227 = mem[_5209]
                mem[mem[64] + 4] = _5065
                mem[mem[64] + 36] = _5227
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _5065, _5227, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                else:
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                if not bonds[address(arg2)].field_0:
                    sub_821de0af.length++
                    sub_821de0af[sub_821de0af.length] = address(arg2)
                if bonds[address(arg2)].field_0 > !mem[_5273]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_5273]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_5273]
                return memory
                  from _5273
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = assetAddress
            mem[ceil32(return_data.size) + 160] = address(arg1)
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg3
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg5))
            staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1402 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _1410 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _1402 + (32 * _1410) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1410] = mem[ceil32(return_data.size) + _1402 + 224 len 32 * _1410]
            if 10000 < arg4:
                revert with 0, 17
            if 1 >= _1410:
                revert with 0, 50
            _2674 = mem[(2 * ceil32(return_data.size)) + 256]
            if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = arg3
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2698 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2698] == bool(mem[_2698])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = (10000 * _2674) - (arg4 * _2674) / 10000
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, (10000 * _2674) - (arg4 * _2674) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3906 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3914 = mem[_3906]
            require mem[_3906] <= test266151307()
            require _3906 + mem[_3906] + 31 < _3906 + return_data.size
            _3922 = mem[_3906 + mem[_3906]]
            if mem[_3906 + mem[_3906]] > test266151307():
                revert with 0, 65
            if _3906 + ceil32(return_data.size) + ceil32(32 * mem[_3906 + mem[_3906]]) + 1 > test266151307() or ceil32(32 * mem[_3906 + mem[_3906]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3906 + ceil32(return_data.size) + ceil32(32 * mem[_3906 + mem[_3906]]) + 1
            mem[_3906 + ceil32(return_data.size)] = _3922
            require return_data.size >= _3914 + (32 * _3922) + 32
            mem[_3906 + ceil32(return_data.size) + 32 len 32 * _3922] = mem[_3906 + _3914 + 32 len 32 * _3922]
            if 1 >= _3922:
                revert with 0, 50
            _5066 = mem[_3906 + ceil32(return_data.size) + 64]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _5066
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _5066
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5124] == bool(mem[_5124])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5218 = mem[_5202]
                mem[mem[64] + 4] = _5066
                mem[mem[64] + 36] = _5218
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _5066, _5218, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                else:
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                if not bonds[address(arg2)].field_0:
                    sub_821de0af.length++
                    sub_821de0af[sub_821de0af.length] = address(arg2)
                if bonds[address(arg2)].field_0 > !mem[_5266]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_5266]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_5266]
                return memory
                  from _5266
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _5066
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _5066
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5146] == bool(mem[_5146])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5230 = mem[_5210]
            mem[mem[64] + 4] = _5066
            mem[mem[64] + 36] = _5230
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _5066, _5230, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
            else:
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
            if not bonds[address(arg2)].field_0:
                sub_821de0af.length++
                sub_821de0af[sub_821de0af.length] = address(arg2)
            if bonds[address(arg2)].field_0 > !mem[_5274]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_5274]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_5274]
            return memory
              from _5274
               len 32
        if managerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
        mem[100] = stakingContractAddress
        mem[132] = arg3
        require ext_code.size(sub_7f216af3Address)
        call sub_7f216af3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stakingContractAddress, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x21dd06e4: arg3
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = assetAddress
            mem[ceil32(return_data.size) + 160] = address(arg1)
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg3
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg5))
            staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1403 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _1411 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _1403 + (32 * _1411) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1411] = mem[ceil32(return_data.size) + _1403 + 224 len 32 * _1411]
            if 10000 < arg4:
                revert with 0, 17
            if 1 >= _1411:
                revert with 0, 50
            _2675 = mem[(2 * ceil32(return_data.size)) + 256]
            if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = arg3
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2699 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2699] == bool(mem[_2699])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = (10000 * _2675) - (arg4 * _2675) / 10000
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, (10000 * _2675) - (arg4 * _2675) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3907 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3915 = mem[_3907]
            require mem[_3907] <= test266151307()
            require _3907 + mem[_3907] + 31 < _3907 + return_data.size
            _3923 = mem[_3907 + mem[_3907]]
            if mem[_3907 + mem[_3907]] > test266151307():
                revert with 0, 65
            if _3907 + ceil32(return_data.size) + ceil32(32 * mem[_3907 + mem[_3907]]) + 1 > test266151307() or ceil32(32 * mem[_3907 + mem[_3907]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3907 + ceil32(return_data.size) + ceil32(32 * mem[_3907 + mem[_3907]]) + 1
            mem[_3907 + ceil32(return_data.size)] = _3923
            require return_data.size >= _3915 + (32 * _3923) + 32
            mem[_3907 + ceil32(return_data.size) + 32 len 32 * _3923] = mem[_3907 + _3915 + 32 len 32 * _3923]
            if 1 >= _3923:
                revert with 0, 50
            _5067 = mem[_3907 + ceil32(return_data.size) + 64]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _5067
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _5067
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5127] == bool(mem[_5127])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5219 = mem[_5203]
                mem[mem[64] + 4] = _5067
                mem[mem[64] + 36] = _5219
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _5067, _5219, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                else:
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                if not bonds[address(arg2)].field_0:
                    sub_821de0af.length++
                    sub_821de0af[sub_821de0af.length] = address(arg2)
                if bonds[address(arg2)].field_0 > !mem[_5267]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_5267]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_5267]
                return memory
                  from _5267
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _5067
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _5067
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5147] == bool(mem[_5147])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5233 = mem[_5211]
            mem[mem[64] + 4] = _5067
            mem[mem[64] + 36] = _5233
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _5067, _5233, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
            else:
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
            if not bonds[address(arg2)].field_0:
                sub_821de0af.length++
                sub_821de0af[sub_821de0af.length] = address(arg2)
            if bonds[address(arg2)].field_0 > !mem[_5275]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_5275]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_5275]
            return memory
              from _5275
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = assetAddress
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1404 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _1412 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _1404 + (32 * _1412) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1412] = mem[ceil32(return_data.size) + _1404 + 224 len 32 * _1412]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _1412:
            revert with 0, 50
        _2676 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = arg3
        require ext_code.size(assetAddress)
        call assetAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2700 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2700] == bool(mem[_2700])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _2676) - (arg4 * _2676) / 10000
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10000 * _2676) - (arg4 * _2676) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3908 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3916 = mem[_3908]
        require mem[_3908] <= test266151307()
        require _3908 + mem[_3908] + 31 < _3908 + return_data.size
        _3924 = mem[_3908 + mem[_3908]]
        if mem[_3908 + mem[_3908]] > test266151307():
            revert with 0, 65
        if _3908 + ceil32(return_data.size) + ceil32(32 * mem[_3908 + mem[_3908]]) + 1 > test266151307() or ceil32(32 * mem[_3908 + mem[_3908]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3908 + ceil32(return_data.size) + ceil32(32 * mem[_3908 + mem[_3908]]) + 1
        mem[_3908 + ceil32(return_data.size)] = _3924
        require return_data.size >= _3916 + (32 * _3924) + 32
        mem[_3908 + ceil32(return_data.size) + 32 len 32 * _3924] = mem[_3908 + _3916 + 32 len 32 * _3924]
        if 1 >= _3924:
            revert with 0, 50
        _5068 = mem[_3908 + ceil32(return_data.size) + 64]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _5068
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _5068
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5130] == bool(mem[_5130])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5220 = mem[_5204]
            mem[mem[64] + 4] = _5068
            mem[mem[64] + 36] = _5220
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _5068, _5220, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
            else:
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
            if not bonds[address(arg2)].field_0:
                sub_821de0af.length++
                sub_821de0af[sub_821de0af.length] = address(arg2)
            if bonds[address(arg2)].field_0 > !mem[_5268]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_5268]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_5268]
            return memory
              from _5268
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _5068
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _5068
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5148] == bool(mem[_5148])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5236 = mem[_5212]
        mem[mem[64] + 4] = _5068
        mem[mem[64] + 36] = _5236
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _5068, _5236, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
        if not bonds[address(arg2)].field_0:
            sub_821de0af.length++
            sub_821de0af[sub_821de0af.length] = address(arg2)
        if bonds[address(arg2)].field_0 > !mem[_5276]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_5276]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_5276]
        return memory
          from _5276
           len 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only depositor can call manual vaults'
        mem[100] = stakingContractAddress
        mem[132] = arg3
        require ext_code.size(sub_7f216af3Address)
        call sub_7f216af3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stakingContractAddress, arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x21dd06e4: arg3
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = assetAddress
            mem[ceil32(return_data.size) + 160] = address(arg1)
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg3
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg5))
            staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1405 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _1413 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _1405 + (32 * _1413) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1413] = mem[ceil32(return_data.size) + _1405 + 224 len 32 * _1413]
            if 10000 < arg4:
                revert with 0, 17
            if 1 >= _1413:
                revert with 0, 50
            _2677 = mem[(2 * ceil32(return_data.size)) + 256]
            if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg5)
            mem[mem[64] + 36] = arg3
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2701] == bool(mem[_2701])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = (10000 * _2677) - (arg4 * _2677) / 10000
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 60
            require ext_code.size(address(arg5))
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, (10000 * _2677) - (arg4 * _2677) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3909 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3917 = mem[_3909]
            require mem[_3909] <= test266151307()
            require _3909 + mem[_3909] + 31 < _3909 + return_data.size
            _3925 = mem[_3909 + mem[_3909]]
            if mem[_3909 + mem[_3909]] > test266151307():
                revert with 0, 65
            if _3909 + ceil32(return_data.size) + ceil32(32 * mem[_3909 + mem[_3909]]) + 1 > test266151307() or ceil32(32 * mem[_3909 + mem[_3909]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3909 + ceil32(return_data.size) + ceil32(32 * mem[_3909 + mem[_3909]]) + 1
            mem[_3909 + ceil32(return_data.size)] = _3925
            require return_data.size >= _3917 + (32 * _3925) + 32
            mem[_3909 + ceil32(return_data.size) + 32 len 32 * _3925] = mem[_3909 + _3917 + 32 len 32 * _3925]
            if 1 >= _3925:
                revert with 0, 50
            _5069 = mem[_3909 + ceil32(return_data.size) + 64]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _5069
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _5069
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5133] == bool(mem[_5133])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5221 = mem[_5205]
                mem[mem[64] + 4] = _5069
                mem[mem[64] + 36] = _5221
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _5069, _5221, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                else:
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                if not bonds[address(arg2)].field_0:
                    sub_821de0af.length++
                    sub_821de0af[sub_821de0af.length] = address(arg2)
                if bonds[address(arg2)].field_0 > !mem[_5269]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_5269]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_5269]
                return memory
                  from _5269
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _5069
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _5069
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5149] == bool(mem[_5149])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5239 = mem[_5213]
            mem[mem[64] + 4] = _5069
            mem[mem[64] + 36] = _5239
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _5069, _5239, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
            else:
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
            if not bonds[address(arg2)].field_0:
                sub_821de0af.length++
                sub_821de0af[sub_821de0af.length] = address(arg2)
            if bonds[address(arg2)].field_0 > !mem[_5277]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_5277]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_5277]
            return memory
              from _5277
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = assetAddress
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1406 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _1414 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _1406 + (32 * _1414) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1414] = mem[ceil32(return_data.size) + _1406 + 224 len 32 * _1414]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _1414:
            revert with 0, 50
        _2678 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = arg3
        require ext_code.size(assetAddress)
        call assetAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2702 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2702] == bool(mem[_2702])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _2678) - (arg4 * _2678) / 10000
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10000 * _2678) - (arg4 * _2678) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3910 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3918 = mem[_3910]
        require mem[_3910] <= test266151307()
        require _3910 + mem[_3910] + 31 < _3910 + return_data.size
        _3926 = mem[_3910 + mem[_3910]]
        if mem[_3910 + mem[_3910]] > test266151307():
            revert with 0, 65
        if _3910 + ceil32(return_data.size) + ceil32(32 * mem[_3910 + mem[_3910]]) + 1 > test266151307() or ceil32(32 * mem[_3910 + mem[_3910]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3910 + ceil32(return_data.size) + ceil32(32 * mem[_3910 + mem[_3910]]) + 1
        mem[_3910 + ceil32(return_data.size)] = _3926
        require return_data.size >= _3918 + (32 * _3926) + 32
        mem[_3910 + ceil32(return_data.size) + 32 len 32 * _3926] = mem[_3910 + _3918 + 32 len 32 * _3926]
        if 1 >= _3926:
            revert with 0, 50
        _5070 = mem[_3910 + ceil32(return_data.size) + 64]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _5070
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _5070
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5136] == bool(mem[_5136])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5222 = mem[_5206]
            mem[mem[64] + 4] = _5070
            mem[mem[64] + 36] = _5222
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _5070, _5222, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
            else:
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
            if not bonds[address(arg2)].field_0:
                sub_821de0af.length++
                sub_821de0af[sub_821de0af.length] = address(arg2)
            if bonds[address(arg2)].field_0 > !mem[_5270]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_5270]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_5270]
            return memory
              from _5270
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _5070
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _5070
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5150] == bool(mem[_5150])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5242 = mem[_5214]
        mem[mem[64] + 4] = _5070
        mem[mem[64] + 36] = _5242
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _5070, _5242, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
        if not bonds[address(arg2)].field_0:
            sub_821de0af.length++
            sub_821de0af[sub_821de0af.length] = address(arg2)
        if bonds[address(arg2)].field_0 > !mem[_5278]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_5278]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_5278]
        return memory
          from _5278
           len 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only manager can call managed vaults'
    mem[100] = stakingContractAddress
    mem[132] = arg3
    require ext_code.size(sub_7f216af3Address)
    call sub_7f216af3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x21dd06e4: arg3
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0, 'Only depositor can call manual vaults'
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = assetAddress
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg5))
        staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1407 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _1415 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _1407 + (32 * _1415) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1415] = mem[ceil32(return_data.size) + _1407 + 224 len 32 * _1415]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _1415:
            revert with 0, 50
        _2679 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg5)
        mem[mem[64] + 36] = arg3
        require ext_code.size(assetAddress)
        call assetAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg5), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2703 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2703] == bool(mem[_2703])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _2679) - (arg4 * _2679) / 10000
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(address(arg5))
        call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, (10000 * _2679) - (arg4 * _2679) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3911 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3919 = mem[_3911]
        require mem[_3911] <= test266151307()
        require _3911 + mem[_3911] + 31 < _3911 + return_data.size
        _3927 = mem[_3911 + mem[_3911]]
        if mem[_3911 + mem[_3911]] > test266151307():
            revert with 0, 65
        if _3911 + ceil32(return_data.size) + ceil32(32 * mem[_3911 + mem[_3911]]) + 1 > test266151307() or ceil32(32 * mem[_3911 + mem[_3911]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3911 + ceil32(return_data.size) + ceil32(32 * mem[_3911 + mem[_3911]]) + 1
        mem[_3911 + ceil32(return_data.size)] = _3927
        require return_data.size >= _3919 + (32 * _3927) + 32
        mem[_3911 + ceil32(return_data.size) + 32 len 32 * _3927] = mem[_3911 + _3919 + 32 len 32 * _3927]
        if 1 >= _3927:
            revert with 0, 50
        _5071 = mem[_3911 + ceil32(return_data.size) + 64]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _5071
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _5071
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5139] == bool(mem[_5139])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5223 = mem[_5207]
            mem[mem[64] + 4] = _5071
            mem[mem[64] + 36] = _5223
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _5071, _5223, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
            else:
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
            if not bonds[address(arg2)].field_0:
                sub_821de0af.length++
                sub_821de0af[sub_821de0af.length] = address(arg2)
            if bonds[address(arg2)].field_0 > !mem[_5271]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_5271]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_5271]
            return memory
              from _5271
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _5071
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _5071
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5151] == bool(mem[_5151])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5245 = mem[_5215]
        mem[mem[64] + 4] = _5071
        mem[mem[64] + 36] = _5245
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _5071, _5245, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
        if not bonds[address(arg2)].field_0:
            sub_821de0af.length++
            sub_821de0af[sub_821de0af.length] = address(arg2)
        if bonds[address(arg2)].field_0 > !mem[_5279]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_5279]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_5279]
        return memory
          from _5279
           len 32
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call managed vaults'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = assetAddress
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg3
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg5))
    staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _1408 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _1416 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require return_data.size >= _1408 + (32 * _1416) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1416] = mem[ceil32(return_data.size) + _1408 + 224 len 32 * _1416]
    if 10000 < arg4:
        revert with 0, 17
    if 1 >= _1416:
        revert with 0, 50
    _2680 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and -arg4 + 10000 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = arg3
    require ext_code.size(assetAddress)
    call assetAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2704 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2704] == bool(mem[_2704])
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = (10000 * _2680) - (arg4 * _2680) / 10000
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, (10000 * _2680) - (arg4 * _2680) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3912 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3920 = mem[_3912]
    require mem[_3912] <= test266151307()
    require _3912 + mem[_3912] + 31 < _3912 + return_data.size
    _3928 = mem[_3912 + mem[_3912]]
    if mem[_3912 + mem[_3912]] > test266151307():
        revert with 0, 65
    if _3912 + ceil32(return_data.size) + ceil32(32 * mem[_3912 + mem[_3912]]) + 1 > test266151307() or ceil32(32 * mem[_3912 + mem[_3912]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _3912 + ceil32(return_data.size) + ceil32(32 * mem[_3912 + mem[_3912]]) + 1
    mem[_3912 + ceil32(return_data.size)] = _3928
    require return_data.size >= _3920 + (32 * _3928) + 32
    mem[_3912 + ceil32(return_data.size) + 32 len 32 * _3928] = mem[_3912 + _3920 + 32 len 32 * _3928]
    if 1 >= _3928:
        revert with 0, 50
    _5072 = mem[_3912 + ceil32(return_data.size) + 64]
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0, 'Only depositor can call manual vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _5072
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _5072
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5142] == bool(mem[_5142])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5224 = mem[_5208]
        mem[mem[64] + 4] = _5072
        mem[mem[64] + 36] = _5224
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _5072, _5224, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
        else:
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
        if not bonds[address(arg2)].field_0:
            sub_821de0af.length++
            sub_821de0af[sub_821de0af.length] = address(arg2)
        if bonds[address(arg2)].field_0 > !mem[_5272]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_5272]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_5272]
        return memory
          from _5272
           len 32
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call managed vaults'
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _5072
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _5072
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5152 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_5152] == bool(mem[_5152])
    require ext_code.size(address(arg2))
    staticcall address(arg2).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5216 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _5248 = mem[_5216]
    mem[mem[64] + 4] = _5072
    mem[mem[64] + 36] = _5248
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(arg2))
    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _5072, _5248, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5280 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0, 'Only depositor can call manual vaults'
    else:
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
    if not bonds[address(arg2)].field_0:
        sub_821de0af.length++
        sub_821de0af[sub_821de0af.length] = address(arg2)
    if bonds[address(arg2)].field_0 > !mem[_5280]:
        revert with 0, 17
    if bonds[address(arg2)].field_256 > !arg3:
        revert with 0, 17
    if 120 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    bonds[address(arg2)].field_0 += mem[_5280]
    bonds[address(arg2)].field_256 += arg3
    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
    bonds[address(arg2)].field_768 = 0
    emit 0x2196ba14: arg3, address(arg1), mem[_5280]
    return memory
      from _5280
       len 32
}



}

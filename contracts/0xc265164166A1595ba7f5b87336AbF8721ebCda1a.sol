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
        _89 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _91 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _89 + (32 * _91) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _91] = mem[_89 + 224 len 32 * _91]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _91:
            revert with 0, 50
        _155 = mem[ceil32(return_data.size) + 256]
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
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == bool(mem[_161])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _155) - (arg4 * _155) / 10000
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
            args arg3, (10000 * _155) - (arg4 * _155) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _213 = mem[_211]
        require mem[_211] <= test266151307()
        require _211 + mem[_211] + 31 < _211 + return_data.size
        _215 = mem[_211 + mem[_211]]
        if mem[_211 + mem[_211]] > test266151307():
            revert with 0, 65
        if _211 + ceil32(return_data.size) + ceil32(32 * mem[_211 + mem[_211]]) + 1 > test266151307() or ceil32(32 * mem[_211 + mem[_211]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _211 + ceil32(return_data.size) + ceil32(32 * mem[_211 + mem[_211]]) + 1
        mem[_211 + ceil32(return_data.size)] = _215
        require return_data.size >= _213 + (32 * _215) + 32
        mem[_211 + ceil32(return_data.size) + 32 len 32 * _215] = mem[_211 + _213 + 32 len 32 * _215]
        if 0 >= _215:
            revert with 0, 50
        if 1 >= _215:
            revert with 0, 50
        if mem[_211 + ceil32(return_data.size) + 64] > mem[_211 + ceil32(return_data.size) + 32]:
            if 1 >= _215:
                revert with 0, 50
            mem[mem[64]] = mem[_211 + ceil32(return_data.size) + 64]
        else:
            if 0 >= _215:
                revert with 0, 50
            mem[mem[64]] = mem[_211 + ceil32(return_data.size) + 32]
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
        _90 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _92 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _90 + (32 * _92) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _92] = mem[_90 + 224 len 32 * _92]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _92:
            revert with 0, 50
        _156 = mem[ceil32(return_data.size) + 256]
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
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == bool(mem[_162])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _156) - (arg4 * _156) / 10000
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
            args arg3, (10000 * _156) - (arg4 * _156) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _214 = mem[_212]
        require mem[_212] <= test266151307()
        require _212 + mem[_212] + 31 < _212 + return_data.size
        _216 = mem[_212 + mem[_212]]
        if mem[_212 + mem[_212]] > test266151307():
            revert with 0, 65
        if _212 + ceil32(return_data.size) + ceil32(32 * mem[_212 + mem[_212]]) + 1 > test266151307() or ceil32(32 * mem[_212 + mem[_212]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _212 + ceil32(return_data.size) + ceil32(32 * mem[_212 + mem[_212]]) + 1
        mem[_212 + ceil32(return_data.size)] = _216
        require return_data.size >= _214 + (32 * _216) + 32
        mem[_212 + ceil32(return_data.size) + 32 len 32 * _216] = mem[_212 + _214 + 32 len 32 * _216]
        if 0 >= _216:
            revert with 0, 50
        if 1 >= _216:
            revert with 0, 50
        if mem[_212 + ceil32(return_data.size) + 64] > mem[_212 + ceil32(return_data.size) + 32]:
            if 1 >= _216:
                revert with 0, 50
            mem[mem[64]] = mem[_212 + ceil32(return_data.size) + 64]
        else:
            if 0 >= _216:
                revert with 0, 50
            mem[mem[64]] = mem[_212 + ceil32(return_data.size) + 32]
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
                _2537 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                _2545 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _2537 + (32 * _2545) + 32
                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2545] = mem[ceil32(return_data.size) + _2537 + 224 len 32 * _2545]
                if 10000 < arg4:
                    revert with 0, 17
                if 1 >= _2545:
                    revert with 0, 50
                _4945 = mem[(2 * ceil32(return_data.size)) + 256]
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
                _4969 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4969] == bool(mem[_4969])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = (10000 * _4945) - (arg4 * _4945) / 10000
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
                    args arg3, (10000 * _4945) - (arg4 * _4945) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7313 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7321 = mem[_7313]
                require mem[_7313] <= test266151307()
                require _7313 + mem[_7313] + 31 < _7313 + return_data.size
                _7329 = mem[_7313 + mem[_7313]]
                if mem[_7313 + mem[_7313]] > test266151307():
                    revert with 0, 65
                if _7313 + ceil32(return_data.size) + ceil32(32 * mem[_7313 + mem[_7313]]) + 1 > test266151307() or ceil32(32 * mem[_7313 + mem[_7313]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _7313 + ceil32(return_data.size) + ceil32(32 * mem[_7313 + mem[_7313]]) + 1
                mem[_7313 + ceil32(return_data.size)] = _7329
                require return_data.size >= _7321 + (32 * _7329) + 32
                mem[_7313 + ceil32(return_data.size) + 32 len 32 * _7329] = mem[_7313 + _7321 + 32 len 32 * _7329]
                if 0 >= _7329:
                    revert with 0, 50
                if 1 >= _7329:
                    revert with 0, 50
                if mem[_7313 + ceil32(return_data.size) + 64] > mem[_7313 + ceil32(return_data.size) + 32]:
                    if 1 >= _7329:
                        revert with 0, 50
                    _9649 = mem[_7313 + ceil32(return_data.size) + 64]
                    if not sub_5e6663cc:
                        if owner != msg.sender:
                            revert with 0, 'Only depositor can call manual vaults'
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _9649
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), _9649
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_9761] == bool(mem[_9761])
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9953 = mem[_9921]
                        mem[mem[64] + 4] = _9649
                        mem[mem[64] + 36] = _9953
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(arg2))
                        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _9649, _9953, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10049 = mem[64]
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
                        if bonds[address(arg2)].field_0 > !mem[_10049]:
                            revert with 0, 17
                        if bonds[address(arg2)].field_256 > !arg3:
                            revert with 0, 17
                        if 120 * 24 * 3600 > !block.timestamp:
                            revert with 0, 17
                        bonds[address(arg2)].field_0 += mem[_10049]
                        bonds[address(arg2)].field_256 += arg3
                        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                        bonds[address(arg2)].field_768 = 0
                        emit 0x2196ba14: arg3, address(arg1), mem[_10049]
                        return memory
                          from _10049
                           len 32
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call managed vaults'
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _9649
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), _9649
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9809] == bool(mem[_9809])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9971 = mem[_9937]
                    mem[mem[64] + 4] = _9649
                    mem[mem[64] + 36] = _9971
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(arg2))
                    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9649, _9971, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10065 = mem[64]
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
                    if bonds[address(arg2)].field_0 > !mem[_10065]:
                        revert with 0, 17
                    if bonds[address(arg2)].field_256 > !arg3:
                        revert with 0, 17
                    if 120 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    bonds[address(arg2)].field_0 += mem[_10065]
                    bonds[address(arg2)].field_256 += arg3
                    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                    bonds[address(arg2)].field_768 = 0
                    emit 0x2196ba14: arg3, address(arg1), mem[_10065]
                    return memory
                      from _10065
                       len 32
                if 0 >= _7329:
                    revert with 0, 50
                _9650 = mem[_7313 + ceil32(return_data.size) + 32]
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _9650
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), _9650
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9764] == bool(mem[_9764])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9954 = mem[_9922]
                    mem[mem[64] + 4] = _9650
                    mem[mem[64] + 36] = _9954
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(arg2))
                    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9650, _9954, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10050 = mem[64]
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
                    if bonds[address(arg2)].field_0 > !mem[_10050]:
                        revert with 0, 17
                    if bonds[address(arg2)].field_256 > !arg3:
                        revert with 0, 17
                    if 120 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    bonds[address(arg2)].field_0 += mem[_10050]
                    bonds[address(arg2)].field_256 += arg3
                    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                    bonds[address(arg2)].field_768 = 0
                    emit 0x2196ba14: arg3, address(arg1), mem[_10050]
                    return memory
                      from _10050
                       len 32
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9650
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9650
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9810 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9810] == bool(mem[_9810])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9974 = mem[_9938]
                mem[mem[64] + 4] = _9650
                mem[mem[64] + 36] = _9974
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9650, _9974, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10066 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10066]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10066]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10066]
                return memory
                  from _10066
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
            _2538 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _2546 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _2538 + (32 * _2546) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2546] = mem[ceil32(return_data.size) + _2538 + 224 len 32 * _2546]
            if 10000 < arg4:
                revert with 0, 17
            if 1 >= _2546:
                revert with 0, 50
            _4946 = mem[(2 * ceil32(return_data.size)) + 256]
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
            _4970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4970] == bool(mem[_4970])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = (10000 * _4946) - (arg4 * _4946) / 10000
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
                args arg3, (10000 * _4946) - (arg4 * _4946) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7314 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7322 = mem[_7314]
            require mem[_7314] <= test266151307()
            require _7314 + mem[_7314] + 31 < _7314 + return_data.size
            _7330 = mem[_7314 + mem[_7314]]
            if mem[_7314 + mem[_7314]] > test266151307():
                revert with 0, 65
            if _7314 + ceil32(return_data.size) + ceil32(32 * mem[_7314 + mem[_7314]]) + 1 > test266151307() or ceil32(32 * mem[_7314 + mem[_7314]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _7314 + ceil32(return_data.size) + ceil32(32 * mem[_7314 + mem[_7314]]) + 1
            mem[_7314 + ceil32(return_data.size)] = _7330
            require return_data.size >= _7322 + (32 * _7330) + 32
            mem[_7314 + ceil32(return_data.size) + 32 len 32 * _7330] = mem[_7314 + _7322 + 32 len 32 * _7330]
            if 0 >= _7330:
                revert with 0, 50
            if 1 >= _7330:
                revert with 0, 50
            if mem[_7314 + ceil32(return_data.size) + 64] > mem[_7314 + ceil32(return_data.size) + 32]:
                if 1 >= _7330:
                    revert with 0, 50
                _9651 = mem[_7314 + ceil32(return_data.size) + 64]
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _9651
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), _9651
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9767] == bool(mem[_9767])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9923 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9955 = mem[_9923]
                    mem[mem[64] + 4] = _9651
                    mem[mem[64] + 36] = _9955
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(arg2))
                    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9651, _9955, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10051 = mem[64]
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
                    if bonds[address(arg2)].field_0 > !mem[_10051]:
                        revert with 0, 17
                    if bonds[address(arg2)].field_256 > !arg3:
                        revert with 0, 17
                    if 120 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    bonds[address(arg2)].field_0 += mem[_10051]
                    bonds[address(arg2)].field_256 += arg3
                    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                    bonds[address(arg2)].field_768 = 0
                    emit 0x2196ba14: arg3, address(arg1), mem[_10051]
                    return memory
                      from _10051
                       len 32
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9651
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9651
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9811 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9811] == bool(mem[_9811])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9939 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9977 = mem[_9939]
                mem[mem[64] + 4] = _9651
                mem[mem[64] + 36] = _9977
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9651, _9977, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10067 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10067]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10067]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10067]
                return memory
                  from _10067
                   len 32
            if 0 >= _7330:
                revert with 0, 50
            _9652 = mem[_7314 + ceil32(return_data.size) + 32]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9652
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9652
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9770 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9770] == bool(mem[_9770])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9924 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9956 = mem[_9924]
                mem[mem[64] + 4] = _9652
                mem[mem[64] + 36] = _9956
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9652, _9956, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10052 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10052]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10052]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10052]
                return memory
                  from _10052
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9652
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9652
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9812 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9812] == bool(mem[_9812])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9940 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9980 = mem[_9940]
            mem[mem[64] + 4] = _9652
            mem[mem[64] + 36] = _9980
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9652, _9980, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10068 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10068]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10068]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10068]
            return memory
              from _10068
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
            _2539 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _2547 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _2539 + (32 * _2547) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2547] = mem[ceil32(return_data.size) + _2539 + 224 len 32 * _2547]
            if 10000 < arg4:
                revert with 0, 17
            if 1 >= _2547:
                revert with 0, 50
            _4947 = mem[(2 * ceil32(return_data.size)) + 256]
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
            _4971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4971] == bool(mem[_4971])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = (10000 * _4947) - (arg4 * _4947) / 10000
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
                args arg3, (10000 * _4947) - (arg4 * _4947) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7315 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7323 = mem[_7315]
            require mem[_7315] <= test266151307()
            require _7315 + mem[_7315] + 31 < _7315 + return_data.size
            _7331 = mem[_7315 + mem[_7315]]
            if mem[_7315 + mem[_7315]] > test266151307():
                revert with 0, 65
            if _7315 + ceil32(return_data.size) + ceil32(32 * mem[_7315 + mem[_7315]]) + 1 > test266151307() or ceil32(32 * mem[_7315 + mem[_7315]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _7315 + ceil32(return_data.size) + ceil32(32 * mem[_7315 + mem[_7315]]) + 1
            mem[_7315 + ceil32(return_data.size)] = _7331
            require return_data.size >= _7323 + (32 * _7331) + 32
            mem[_7315 + ceil32(return_data.size) + 32 len 32 * _7331] = mem[_7315 + _7323 + 32 len 32 * _7331]
            if 0 >= _7331:
                revert with 0, 50
            if 1 >= _7331:
                revert with 0, 50
            if mem[_7315 + ceil32(return_data.size) + 64] > mem[_7315 + ceil32(return_data.size) + 32]:
                if 1 >= _7331:
                    revert with 0, 50
                _9653 = mem[_7315 + ceil32(return_data.size) + 64]
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _9653
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), _9653
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9773] == bool(mem[_9773])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9925 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9957 = mem[_9925]
                    mem[mem[64] + 4] = _9653
                    mem[mem[64] + 36] = _9957
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(arg2))
                    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9653, _9957, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10053 = mem[64]
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
                    if bonds[address(arg2)].field_0 > !mem[_10053]:
                        revert with 0, 17
                    if bonds[address(arg2)].field_256 > !arg3:
                        revert with 0, 17
                    if 120 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    bonds[address(arg2)].field_0 += mem[_10053]
                    bonds[address(arg2)].field_256 += arg3
                    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                    bonds[address(arg2)].field_768 = 0
                    emit 0x2196ba14: arg3, address(arg1), mem[_10053]
                    return memory
                      from _10053
                       len 32
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9653
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9653
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9813 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9813] == bool(mem[_9813])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9983 = mem[_9941]
                mem[mem[64] + 4] = _9653
                mem[mem[64] + 36] = _9983
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9653, _9983, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10069 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10069]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10069]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10069]
                return memory
                  from _10069
                   len 32
            if 0 >= _7331:
                revert with 0, 50
            _9654 = mem[_7315 + ceil32(return_data.size) + 32]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9654
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9654
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9776] == bool(mem[_9776])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9958 = mem[_9926]
                mem[mem[64] + 4] = _9654
                mem[mem[64] + 36] = _9958
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9654, _9958, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10054 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10054]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10054]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10054]
                return memory
                  from _10054
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9654
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9654
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9814 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9814] == bool(mem[_9814])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9942 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9986 = mem[_9942]
            mem[mem[64] + 4] = _9654
            mem[mem[64] + 36] = _9986
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9654, _9986, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10070 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10070]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10070]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10070]
            return memory
              from _10070
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
        _2540 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _2548 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _2540 + (32 * _2548) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2548] = mem[ceil32(return_data.size) + _2540 + 224 len 32 * _2548]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _2548:
            revert with 0, 50
        _4948 = mem[(2 * ceil32(return_data.size)) + 256]
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
        _4972 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4972] == bool(mem[_4972])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _4948) - (arg4 * _4948) / 10000
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
            args arg3, (10000 * _4948) - (arg4 * _4948) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7316 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7324 = mem[_7316]
        require mem[_7316] <= test266151307()
        require _7316 + mem[_7316] + 31 < _7316 + return_data.size
        _7332 = mem[_7316 + mem[_7316]]
        if mem[_7316 + mem[_7316]] > test266151307():
            revert with 0, 65
        if _7316 + ceil32(return_data.size) + ceil32(32 * mem[_7316 + mem[_7316]]) + 1 > test266151307() or ceil32(32 * mem[_7316 + mem[_7316]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _7316 + ceil32(return_data.size) + ceil32(32 * mem[_7316 + mem[_7316]]) + 1
        mem[_7316 + ceil32(return_data.size)] = _7332
        require return_data.size >= _7324 + (32 * _7332) + 32
        mem[_7316 + ceil32(return_data.size) + 32 len 32 * _7332] = mem[_7316 + _7324 + 32 len 32 * _7332]
        if 0 >= _7332:
            revert with 0, 50
        if 1 >= _7332:
            revert with 0, 50
        if mem[_7316 + ceil32(return_data.size) + 64] > mem[_7316 + ceil32(return_data.size) + 32]:
            if 1 >= _7332:
                revert with 0, 50
            _9655 = mem[_7316 + ceil32(return_data.size) + 64]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9655
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9655
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9779 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9779] == bool(mem[_9779])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9927 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9959 = mem[_9927]
                mem[mem[64] + 4] = _9655
                mem[mem[64] + 36] = _9959
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9655, _9959, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10055 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10055]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10055]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10055]
                return memory
                  from _10055
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9655
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9655
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9815 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9815] == bool(mem[_9815])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9943 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9989 = mem[_9943]
            mem[mem[64] + 4] = _9655
            mem[mem[64] + 36] = _9989
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9655, _9989, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10071 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10071]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10071]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10071]
            return memory
              from _10071
               len 32
        if 0 >= _7332:
            revert with 0, 50
        _9656 = mem[_7316 + ceil32(return_data.size) + 32]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9656
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9656
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9782] == bool(mem[_9782])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9928 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9960 = mem[_9928]
            mem[mem[64] + 4] = _9656
            mem[mem[64] + 36] = _9960
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9656, _9960, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10056 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10056]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10056]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10056]
            return memory
              from _10056
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _9656
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _9656
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9816 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9816] == bool(mem[_9816])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9944 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9992 = mem[_9944]
        mem[mem[64] + 4] = _9656
        mem[mem[64] + 36] = _9992
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _9656, _9992, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10072 = mem[64]
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
        if bonds[address(arg2)].field_0 > !mem[_10072]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_10072]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_10072]
        return memory
          from _10072
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
            _2541 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _2549 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _2541 + (32 * _2549) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2549] = mem[ceil32(return_data.size) + _2541 + 224 len 32 * _2549]
            if 10000 < arg4:
                revert with 0, 17
            if 1 >= _2549:
                revert with 0, 50
            _4949 = mem[(2 * ceil32(return_data.size)) + 256]
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
            _4973 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4973] == bool(mem[_4973])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = (10000 * _4949) - (arg4 * _4949) / 10000
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
                args arg3, (10000 * _4949) - (arg4 * _4949) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7317 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7325 = mem[_7317]
            require mem[_7317] <= test266151307()
            require _7317 + mem[_7317] + 31 < _7317 + return_data.size
            _7333 = mem[_7317 + mem[_7317]]
            if mem[_7317 + mem[_7317]] > test266151307():
                revert with 0, 65
            if _7317 + ceil32(return_data.size) + ceil32(32 * mem[_7317 + mem[_7317]]) + 1 > test266151307() or ceil32(32 * mem[_7317 + mem[_7317]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _7317 + ceil32(return_data.size) + ceil32(32 * mem[_7317 + mem[_7317]]) + 1
            mem[_7317 + ceil32(return_data.size)] = _7333
            require return_data.size >= _7325 + (32 * _7333) + 32
            mem[_7317 + ceil32(return_data.size) + 32 len 32 * _7333] = mem[_7317 + _7325 + 32 len 32 * _7333]
            if 0 >= _7333:
                revert with 0, 50
            if 1 >= _7333:
                revert with 0, 50
            if mem[_7317 + ceil32(return_data.size) + 64] > mem[_7317 + ceil32(return_data.size) + 32]:
                if 1 >= _7333:
                    revert with 0, 50
                _9657 = mem[_7317 + ceil32(return_data.size) + 64]
                if not sub_5e6663cc:
                    if owner != msg.sender:
                        revert with 0, 'Only depositor can call manual vaults'
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _9657
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), _9657
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9785] == bool(mem[_9785])
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9961 = mem[_9929]
                    mem[mem[64] + 4] = _9657
                    mem[mem[64] + 36] = _9961
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(arg2))
                    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _9657, _9961, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10057 = mem[64]
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
                    if bonds[address(arg2)].field_0 > !mem[_10057]:
                        revert with 0, 17
                    if bonds[address(arg2)].field_256 > !arg3:
                        revert with 0, 17
                    if 120 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    bonds[address(arg2)].field_0 += mem[_10057]
                    bonds[address(arg2)].field_256 += arg3
                    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                    bonds[address(arg2)].field_768 = 0
                    emit 0x2196ba14: arg3, address(arg1), mem[_10057]
                    return memory
                      from _10057
                       len 32
                if managerAddress != msg.sender:
                    revert with 0, 'Only manager can call managed vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9657
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9657
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9817] == bool(mem[_9817])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9945 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9995 = mem[_9945]
                mem[mem[64] + 4] = _9657
                mem[mem[64] + 36] = _9995
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9657, _9995, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10073 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10073]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10073]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10073]
                return memory
                  from _10073
                   len 32
            if 0 >= _7333:
                revert with 0, 50
            _9658 = mem[_7317 + ceil32(return_data.size) + 32]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9658
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9658
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9788 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9788] == bool(mem[_9788])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9930 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9962 = mem[_9930]
                mem[mem[64] + 4] = _9658
                mem[mem[64] + 36] = _9962
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9658, _9962, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10058 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10058]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10058]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10058]
                return memory
                  from _10058
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9658
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9658
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9818] == bool(mem[_9818])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9946 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9998 = mem[_9946]
            mem[mem[64] + 4] = _9658
            mem[mem[64] + 36] = _9998
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9658, _9998, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10074 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10074]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10074]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10074]
            return memory
              from _10074
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
        _2542 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _2550 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _2542 + (32 * _2550) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2550] = mem[ceil32(return_data.size) + _2542 + 224 len 32 * _2550]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _2550:
            revert with 0, 50
        _4950 = mem[(2 * ceil32(return_data.size)) + 256]
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
        _4974 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4974] == bool(mem[_4974])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _4950) - (arg4 * _4950) / 10000
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
            args arg3, (10000 * _4950) - (arg4 * _4950) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7318 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7326 = mem[_7318]
        require mem[_7318] <= test266151307()
        require _7318 + mem[_7318] + 31 < _7318 + return_data.size
        _7334 = mem[_7318 + mem[_7318]]
        if mem[_7318 + mem[_7318]] > test266151307():
            revert with 0, 65
        if _7318 + ceil32(return_data.size) + ceil32(32 * mem[_7318 + mem[_7318]]) + 1 > test266151307() or ceil32(32 * mem[_7318 + mem[_7318]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _7318 + ceil32(return_data.size) + ceil32(32 * mem[_7318 + mem[_7318]]) + 1
        mem[_7318 + ceil32(return_data.size)] = _7334
        require return_data.size >= _7326 + (32 * _7334) + 32
        mem[_7318 + ceil32(return_data.size) + 32 len 32 * _7334] = mem[_7318 + _7326 + 32 len 32 * _7334]
        if 0 >= _7334:
            revert with 0, 50
        if 1 >= _7334:
            revert with 0, 50
        if mem[_7318 + ceil32(return_data.size) + 64] > mem[_7318 + ceil32(return_data.size) + 32]:
            if 1 >= _7334:
                revert with 0, 50
            _9659 = mem[_7318 + ceil32(return_data.size) + 64]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9659
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9659
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9791 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9791] == bool(mem[_9791])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9963 = mem[_9931]
                mem[mem[64] + 4] = _9659
                mem[mem[64] + 36] = _9963
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9659, _9963, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10059 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10059]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10059]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10059]
                return memory
                  from _10059
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9659
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9659
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9819] == bool(mem[_9819])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9947 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10001 = mem[_9947]
            mem[mem[64] + 4] = _9659
            mem[mem[64] + 36] = _10001
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9659, _10001, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10075 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10075]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10075]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10075]
            return memory
              from _10075
               len 32
        if 0 >= _7334:
            revert with 0, 50
        _9660 = mem[_7318 + ceil32(return_data.size) + 32]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9660
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9660
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9794 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9794] == bool(mem[_9794])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9932 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9964 = mem[_9932]
            mem[mem[64] + 4] = _9660
            mem[mem[64] + 36] = _9964
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9660, _9964, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10060 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10060]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10060]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10060]
            return memory
              from _10060
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _9660
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _9660
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9820 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9820] == bool(mem[_9820])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9948 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10004 = mem[_9948]
        mem[mem[64] + 4] = _9660
        mem[mem[64] + 36] = _10004
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _9660, _10004, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10076 = mem[64]
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
        if bonds[address(arg2)].field_0 > !mem[_10076]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_10076]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_10076]
        return memory
          from _10076
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
        _2543 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _2551 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _2543 + (32 * _2551) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2551] = mem[ceil32(return_data.size) + _2543 + 224 len 32 * _2551]
        if 10000 < arg4:
            revert with 0, 17
        if 1 >= _2551:
            revert with 0, 50
        _4951 = mem[(2 * ceil32(return_data.size)) + 256]
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
        _4975 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4975] == bool(mem[_4975])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = (10000 * _4951) - (arg4 * _4951) / 10000
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
            args arg3, (10000 * _4951) - (arg4 * _4951) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7319 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _7327 = mem[_7319]
        require mem[_7319] <= test266151307()
        require _7319 + mem[_7319] + 31 < _7319 + return_data.size
        _7335 = mem[_7319 + mem[_7319]]
        if mem[_7319 + mem[_7319]] > test266151307():
            revert with 0, 65
        if _7319 + ceil32(return_data.size) + ceil32(32 * mem[_7319 + mem[_7319]]) + 1 > test266151307() or ceil32(32 * mem[_7319 + mem[_7319]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _7319 + ceil32(return_data.size) + ceil32(32 * mem[_7319 + mem[_7319]]) + 1
        mem[_7319 + ceil32(return_data.size)] = _7335
        require return_data.size >= _7327 + (32 * _7335) + 32
        mem[_7319 + ceil32(return_data.size) + 32 len 32 * _7335] = mem[_7319 + _7327 + 32 len 32 * _7335]
        if 0 >= _7335:
            revert with 0, 50
        if 1 >= _7335:
            revert with 0, 50
        if mem[_7319 + ceil32(return_data.size) + 64] > mem[_7319 + ceil32(return_data.size) + 32]:
            if 1 >= _7335:
                revert with 0, 50
            _9661 = mem[_7319 + ceil32(return_data.size) + 64]
            if not sub_5e6663cc:
                if owner != msg.sender:
                    revert with 0, 'Only depositor can call manual vaults'
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _9661
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), _9661
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9797] == bool(mem[_9797])
                require ext_code.size(address(arg2))
                staticcall address(arg2).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9965 = mem[_9933]
                mem[mem[64] + 4] = _9661
                mem[mem[64] + 36] = _9965
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(arg2))
                call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _9661, _9965, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10061 = mem[64]
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
                if bonds[address(arg2)].field_0 > !mem[_10061]:
                    revert with 0, 17
                if bonds[address(arg2)].field_256 > !arg3:
                    revert with 0, 17
                if 120 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                bonds[address(arg2)].field_0 += mem[_10061]
                bonds[address(arg2)].field_256 += arg3
                bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
                bonds[address(arg2)].field_768 = 0
                emit 0x2196ba14: arg3, address(arg1), mem[_10061]
                return memory
                  from _10061
                   len 32
            if managerAddress != msg.sender:
                revert with 0, 'Only manager can call managed vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9661
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9821] == bool(mem[_9821])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9949 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10007 = mem[_9949]
            mem[mem[64] + 4] = _9661
            mem[mem[64] + 36] = _10007
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9661, _10007, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10077 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10077]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10077]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10077]
            return memory
              from _10077
               len 32
        if 0 >= _7335:
            revert with 0, 50
        _9662 = mem[_7319 + ceil32(return_data.size) + 32]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9662
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9662
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9800] == bool(mem[_9800])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9966 = mem[_9934]
            mem[mem[64] + 4] = _9662
            mem[mem[64] + 36] = _9966
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9662, _9966, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10062 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10062]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10062]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10062]
            return memory
              from _10062
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _9662
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _9662
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9822 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9822] == bool(mem[_9822])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9950 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10010 = mem[_9950]
        mem[mem[64] + 4] = _9662
        mem[mem[64] + 36] = _10010
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _9662, _10010, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10078 = mem[64]
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
        if bonds[address(arg2)].field_0 > !mem[_10078]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_10078]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_10078]
        return memory
          from _10078
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
    _2544 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _2552 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require return_data.size >= _2544 + (32 * _2552) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _2552] = mem[ceil32(return_data.size) + _2544 + 224 len 32 * _2552]
    if 10000 < arg4:
        revert with 0, 17
    if 1 >= _2552:
        revert with 0, 50
    _4952 = mem[(2 * ceil32(return_data.size)) + 256]
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
    _4976 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_4976] == bool(mem[_4976])
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = (10000 * _4952) - (arg4 * _4952) / 10000
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
        args arg3, (10000 * _4952) - (arg4 * _4952) / 10000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _7320 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _7328 = mem[_7320]
    require mem[_7320] <= test266151307()
    require _7320 + mem[_7320] + 31 < _7320 + return_data.size
    _7336 = mem[_7320 + mem[_7320]]
    if mem[_7320 + mem[_7320]] > test266151307():
        revert with 0, 65
    if _7320 + ceil32(return_data.size) + ceil32(32 * mem[_7320 + mem[_7320]]) + 1 > test266151307() or ceil32(32 * mem[_7320 + mem[_7320]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _7320 + ceil32(return_data.size) + ceil32(32 * mem[_7320 + mem[_7320]]) + 1
    mem[_7320 + ceil32(return_data.size)] = _7336
    require return_data.size >= _7328 + (32 * _7336) + 32
    mem[_7320 + ceil32(return_data.size) + 32 len 32 * _7336] = mem[_7320 + _7328 + 32 len 32 * _7336]
    if 0 >= _7336:
        revert with 0, 50
    if 1 >= _7336:
        revert with 0, 50
    if mem[_7320 + ceil32(return_data.size) + 64] > mem[_7320 + ceil32(return_data.size) + 32]:
        if 1 >= _7336:
            revert with 0, 50
        _9663 = mem[_7320 + ceil32(return_data.size) + 64]
        if not sub_5e6663cc:
            if owner != msg.sender:
                revert with 0, 'Only depositor can call manual vaults'
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _9663
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _9663
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9803] == bool(mem[_9803])
            require ext_code.size(address(arg2))
            staticcall address(arg2).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9967 = mem[_9935]
            mem[mem[64] + 4] = _9663
            mem[mem[64] + 36] = _9967
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _9663, _9967, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10063 = mem[64]
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
            if bonds[address(arg2)].field_0 > !mem[_10063]:
                revert with 0, 17
            if bonds[address(arg2)].field_256 > !arg3:
                revert with 0, 17
            if 120 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            bonds[address(arg2)].field_0 += mem[_10063]
            bonds[address(arg2)].field_256 += arg3
            bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
            bonds[address(arg2)].field_768 = 0
            emit 0x2196ba14: arg3, address(arg1), mem[_10063]
            return memory
              from _10063
               len 32
        if managerAddress != msg.sender:
            revert with 0, 'Only manager can call managed vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _9663
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _9663
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9823 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9823] == bool(mem[_9823])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9951 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10013 = mem[_9951]
        mem[mem[64] + 4] = _9663
        mem[mem[64] + 36] = _10013
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _9663, _10013, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10079 = mem[64]
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
        if bonds[address(arg2)].field_0 > !mem[_10079]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_10079]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_10079]
        return memory
          from _10079
           len 32
    if 0 >= _7336:
        revert with 0, 50
    _9664 = mem[_7320 + ceil32(return_data.size) + 32]
    if not sub_5e6663cc:
        if owner != msg.sender:
            revert with 0, 'Only depositor can call manual vaults'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _9664
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _9664
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9806 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9806] == bool(mem[_9806])
        require ext_code.size(address(arg2))
        staticcall address(arg2).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9936 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9968 = mem[_9936]
        mem[mem[64] + 4] = _9664
        mem[mem[64] + 36] = _9968
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _9664, _9968, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10064 = mem[64]
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
        if bonds[address(arg2)].field_0 > !mem[_10064]:
            revert with 0, 17
        if bonds[address(arg2)].field_256 > !arg3:
            revert with 0, 17
        if 120 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        bonds[address(arg2)].field_0 += mem[_10064]
        bonds[address(arg2)].field_256 += arg3
        bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
        bonds[address(arg2)].field_768 = 0
        emit 0x2196ba14: arg3, address(arg1), mem[_10064]
        return memory
          from _10064
           len 32
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call managed vaults'
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _9664
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _9664
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _9824 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_9824] == bool(mem[_9824])
    require ext_code.size(address(arg2))
    staticcall address(arg2).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _9952 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _10016 = mem[_9952]
    mem[mem[64] + 4] = _9664
    mem[mem[64] + 36] = _10016
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(arg2))
    call address(arg2).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _9664, _10016, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _10080 = mem[64]
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
    if bonds[address(arg2)].field_0 > !mem[_10080]:
        revert with 0, 17
    if bonds[address(arg2)].field_256 > !arg3:
        revert with 0, 17
    if 120 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    bonds[address(arg2)].field_0 += mem[_10080]
    bonds[address(arg2)].field_256 += arg3
    bonds[address(arg2)].field_512 = block.timestamp + (120 * 24 * 3600)
    bonds[address(arg2)].field_768 = 0
    emit 0x2196ba14: arg3, address(arg1), mem[_10080]
    return memory
      from _10080
       len 32
}



}

contract main {




// =====================  Runtime code  =====================


#
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

function sub_7aadaa64(?) payable {
    return sub_821de0af.length
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

function sub_849f5828(?) payable {
    require calldata.size - 4 >= 64
    if arg2 <= arg1:
        revert with 0, 'Bond cannot have negative ROI'
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
    if bonds[address(arg1)].field_0:
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
        if not bonds[address(arg1)].field_0:
            if bonds[address(arg1)].field_0:
                require block.timestamp >= bonds[address(arg1)].field_512
            bonds[address(arg1)].field_0 = 0
            bonds[address(arg1)].field_768 = 0
            bonds[address(arg1)].field_256 = 0
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
        else:
            if block.timestamp >= bonds[address(arg1)].field_512:
                if bonds[address(arg1)].field_0:
                    require block.timestamp >= bonds[address(arg1)].field_512
                bonds[address(arg1)].field_0 = 0
                bonds[address(arg1)].field_768 = 0
                bonds[address(arg1)].field_256 = 0
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

function sub_da05faad(?) payable {
    mem[64] = 96
    idx = 0
    while idx < sub_821de0af.length:
        mem[0] = sub_821de0af[idx]
        mem[32] = 12
        if bonds[stor13[idx]].field_0:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 1
            require ext_code.size(sub_821de0af[idx])
            call sub_821de0af[idx].redeem(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args this.address, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _678 = mem[_677]
            if mem[_677] and fee > -1 / mem[_677]:
                revert with 0, 17
            if mem[_677] < mem[_677] * fee / 10000:
                revert with 0, 17
            if bonds[stor13[idx]].field_0 < mem[_677]:
                revert with 0, 17
            bonds[stor13[idx]].field_0 -= mem[_677]
            if not bonds[stor13[idx]].field_0:
                if not bonds[stor13[idx]].field_0:
                    mem[0] = sub_821de0af[idx]
                    mem[32] = 12
                    bonds[stor13[idx]].field_0 = 0
                    bonds[stor13[idx]].field_768 = 0
                    bonds[stor13[idx]].field_256 = 0
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
                        _1422 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _678 * fee / 10000
                        _1426 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1426 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1426 + 36 len 28]
                        mem[64] = _1422 + 164
                        mem[_1422 + 100] = 32
                        mem[_1422 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1502 = mem[_1426]
                        s = 0
                        while s < _1502:
                            mem[s + _1422 + 164] = mem[s + _1426 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1502) > _1502:
                            mem[_1502 + _1422 + 164] = 0
                        call sub_7f216af3Address.mem[_1422 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1422 + 168 len _1502 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1422 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1422 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1422 + 232] = mem[idx + _1422 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1422 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1422 + ceil32(return_data.size) + 165
                            mem[_1422 + 164] = return_data.size
                            mem[_1422 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1422 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1422 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1422 + ceil32(return_data.size) + 233] = mem[idx + _1422 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1422 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1422 + 196] == bool(mem[_1422 + 196])
                                if not mem[_1422 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xbbb59c50: sub_821de0af[idx], _678 - (_678 * fee / 10000)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1350 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _678 * fee / 10000
                    _1354 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1354 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1354 + 36 len 28]
                    mem[64] = _1350 + 164
                    mem[_1350 + 100] = 32
                    mem[_1350 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _1410 = mem[_1354]
                    s = 0
                    while s < _1410:
                        mem[s + _1350 + 164] = mem[s + _1354 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1410) > _1410:
                        mem[_1410 + _1350 + 164] = 0
                    call sub_7f216af3Address.mem[_1350 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1350 + 168 len _1410 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1350 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1350 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1350 + 232] = mem[idx + _1350 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1350 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1350 + ceil32(return_data.size) + 165
                        mem[_1350 + 164] = return_data.size
                        mem[_1350 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1350 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1350 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1350 + ceil32(return_data.size) + 233] = mem[idx + _1350 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1350 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1350 + 196] == bool(mem[_1350 + 196])
                            if not mem[_1350 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require block.timestamp >= bonds[stor13[idx]].field_512
                    mem[0] = sub_821de0af[idx]
                    mem[32] = 12
                    bonds[stor13[idx]].field_0 = 0
                    bonds[stor13[idx]].field_768 = 0
                    bonds[stor13[idx]].field_256 = 0
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
                        _1423 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _678 * fee / 10000
                        _1428 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1428 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1428 + 36 len 28]
                        mem[64] = _1423 + 164
                        mem[_1423 + 100] = 32
                        mem[_1423 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1504 = mem[_1428]
                        s = 0
                        while s < _1504:
                            mem[s + _1423 + 164] = mem[s + _1428 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1504) > _1504:
                            mem[_1504 + _1423 + 164] = 0
                        call sub_7f216af3Address.mem[_1423 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1423 + 168 len _1504 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1423 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1423 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1423 + 232] = mem[idx + _1423 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1423 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1423 + ceil32(return_data.size) + 165
                            mem[_1423 + 164] = return_data.size
                            mem[_1423 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1423 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1423 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1423 + ceil32(return_data.size) + 233] = mem[idx + _1423 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1423 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1423 + 196] == bool(mem[_1423 + 196])
                                if not mem[_1423 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xbbb59c50: sub_821de0af[idx], _678 - (_678 * fee / 10000)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1351 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _678 * fee / 10000
                    _1356 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1356 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1356 + 36 len 28]
                    mem[64] = _1351 + 164
                    mem[_1351 + 100] = 32
                    mem[_1351 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _1412 = mem[_1356]
                    s = 0
                    while s < _1412:
                        mem[s + _1351 + 164] = mem[s + _1356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1412) > _1412:
                        mem[_1412 + _1351 + 164] = 0
                    call sub_7f216af3Address.mem[_1351 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1351 + 168 len _1412 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1351 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1351 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1351 + 232] = mem[idx + _1351 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1351 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1351 + ceil32(return_data.size) + 165
                        mem[_1351 + 164] = return_data.size
                        mem[_1351 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1351 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1351 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1351 + ceil32(return_data.size) + 233] = mem[idx + _1351 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1351 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1351 + 196] == bool(mem[_1351 + 196])
                            if not mem[_1351 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[0] = sub_821de0af[idx]
                mem[32] = 12
                if block.timestamp < bonds[stor13[idx]].field_512:
                    _684 = mem[64]
                    mem[mem[64] + 36] = address(sub_38cdba25Address)
                    mem[mem[64] + 68] = _678 * fee / 10000
                    _687 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_687 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_687 + 36 len 28]
                    mem[64] = _684 + 164
                    mem[_684 + 100] = 32
                    mem[_684 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_7f216af3Address):
                        revert with 0, 'Address: call to non-contract'
                    _710 = mem[_687]
                    s = 0
                    while s < _710:
                        mem[s + _684 + 164] = mem[s + _687 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_710) > _710:
                        mem[_710 + _684 + 164] = 0
                    call sub_7f216af3Address.mem[_684 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_684 + 168 len _710 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_684 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_684 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _684 + 232] = mem[idx + _684 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_684 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _684 + ceil32(return_data.size) + 165
                        mem[_684 + 164] = return_data.size
                        mem[_684 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_684 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_684 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _684 + ceil32(return_data.size) + 233] = mem[idx + _684 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_684 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_684 + 196] == bool(mem[_684 + 196])
                            if not mem[_684 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if not bonds[stor13[idx]].field_0:
                        mem[0] = sub_821de0af[idx]
                        mem[32] = 12
                        bonds[stor13[idx]].field_0 = 0
                        bonds[stor13[idx]].field_768 = 0
                        bonds[stor13[idx]].field_256 = 0
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
                            _1424 = mem[64]
                            mem[mem[64] + 36] = address(sub_38cdba25Address)
                            mem[mem[64] + 68] = _678 * fee / 10000
                            _1434 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1434 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1434 + 36 len 28]
                            mem[64] = _1424 + 164
                            mem[_1424 + 100] = 32
                            mem[_1424 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(sub_7f216af3Address):
                                revert with 0, 'Address: call to non-contract'
                            _1506 = mem[_1434]
                            s = 0
                            while s < _1506:
                                mem[s + _1424 + 164] = mem[s + _1434 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1506) > _1506:
                                mem[_1506 + _1424 + 164] = 0
                            call sub_7f216af3Address.mem[_1424 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1424 + 168 len _1506 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1424 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1424 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1424 + 232] = mem[idx + _1424 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1424 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _1424 + ceil32(return_data.size) + 165
                                mem[_1424 + 164] = return_data.size
                                mem[_1424 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1424 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1424 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1424 + ceil32(return_data.size) + 233] = mem[idx + _1424 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1424 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1424 + 196] == bool(mem[_1424 + 196])
                                    if not mem[_1424 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xbbb59c50: sub_821de0af[idx], _678 - (_678 * fee / 10000)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1352 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _678 * fee / 10000
                        _1360 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1360 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1360 + 36 len 28]
                        mem[64] = _1352 + 164
                        mem[_1352 + 100] = 32
                        mem[_1352 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1418 = mem[_1360]
                        s = 0
                        while s < _1418:
                            mem[s + _1352 + 164] = mem[s + _1360 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1418) > _1418:
                            mem[_1418 + _1352 + 164] = 0
                        call sub_7f216af3Address.mem[_1352 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1352 + 168 len _1418 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1352 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1352 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1352 + 232] = mem[idx + _1352 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1352 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1352 + ceil32(return_data.size) + 165
                            mem[_1352 + 164] = return_data.size
                            mem[_1352 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1352 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1352 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1352 + ceil32(return_data.size) + 233] = mem[idx + _1352 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1352 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1352 + 196] == bool(mem[_1352 + 196])
                                if not mem[_1352 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require block.timestamp >= bonds[stor13[idx]].field_512
                        mem[0] = sub_821de0af[idx]
                        mem[32] = 12
                        bonds[stor13[idx]].field_0 = 0
                        bonds[stor13[idx]].field_768 = 0
                        bonds[stor13[idx]].field_256 = 0
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
                            _1425 = mem[64]
                            mem[mem[64] + 36] = address(sub_38cdba25Address)
                            mem[mem[64] + 68] = _678 * fee / 10000
                            _1436 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1436 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1436 + 36 len 28]
                            mem[64] = _1425 + 164
                            mem[_1425 + 100] = 32
                            mem[_1425 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(sub_7f216af3Address):
                                revert with 0, 'Address: call to non-contract'
                            _1508 = mem[_1436]
                            s = 0
                            while s < _1508:
                                mem[s + _1425 + 164] = mem[s + _1436 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1508) > _1508:
                                mem[_1508 + _1425 + 164] = 0
                            call sub_7f216af3Address.mem[_1425 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1425 + 168 len _1508 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_1425 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1425 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1425 + 232] = mem[idx + _1425 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1425 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _1425 + ceil32(return_data.size) + 165
                                mem[_1425 + 164] = return_data.size
                                mem[_1425 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1425 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1425 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _1425 + ceil32(return_data.size) + 233] = mem[idx + _1425 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_1425 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_1425 + 196] == bool(mem[_1425 + 196])
                                    if not mem[_1425 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit 0xbbb59c50: sub_821de0af[idx], _678 - (_678 * fee / 10000)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _1353 = mem[64]
                        mem[mem[64] + 36] = address(sub_38cdba25Address)
                        mem[mem[64] + 68] = _678 * fee / 10000
                        _1362 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1362 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1362 + 36 len 28]
                        mem[64] = _1353 + 164
                        mem[_1353 + 100] = 32
                        mem[_1353 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_7f216af3Address):
                            revert with 0, 'Address: call to non-contract'
                        _1420 = mem[_1362]
                        s = 0
                        while s < _1420:
                            mem[s + _1353 + 164] = mem[s + _1362 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1420) > _1420:
                            mem[_1420 + _1353 + 164] = 0
                        call sub_7f216af3Address.mem[_1353 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1353 + 168 len _1420 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1353 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1353 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1353 + 232] = mem[idx + _1353 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1353 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _1353 + ceil32(return_data.size) + 165
                            mem[_1353 + 164] = return_data.size
                            mem[_1353 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1353 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1353 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _1353 + ceil32(return_data.size) + 233] = mem[idx + _1353 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1353 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_1353 + 196] == bool(mem[_1353 + 196])
                                if not mem[_1353 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xbbb59c50: sub_821de0af[idx], _678 - (_678 * fee / 10000)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}

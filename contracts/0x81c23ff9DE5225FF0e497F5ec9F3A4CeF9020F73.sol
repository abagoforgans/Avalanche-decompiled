contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
uint256 stor1;
address sub_5b33d2afAddress;
array of address sub_3076e9de;
uint256 sub_89519c05;
uint256 sub_d63f4c07;
address depositTokenAddress;
mapping of uint8 stor7;

function sub_1403061d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function sub_15511781(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
}

function sub_3076e9de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3076e9de.length
    return address(sub_3076e9de[arg1])
}

function sub_5b33d2af(?) payable {
    return sub_5b33d2afAddress
}

function sub_79ccd09f(?) payable {
    return sub_89519c05
}

function sub_89519c05(?) payable {
    return sub_89519c05
}

function owner() payable {
    return owner
}

function sub_b0c660ee(?) payable {
    return sub_d63f4c07
}

function depositToken() payable {
    return depositTokenAddress
}

function sub_d63f4c07(?) payable {
    return sub_d63f4c07
}

function destroy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The target address cannot be the zero address'
    if 1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The target address cannot be the ecrecover address'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function totalDeposits() payable {
    if sub_89519c05 > !sub_d63f4c07:
        revert with 0, 17
    return (sub_89519c05 + sub_d63f4c07)
}

function getCurrentBalance() payable {
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ca52d7d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not address(arg1):
        revert with 0, 'Address cannot be a 0 address'
    sub_5b33d2afAddress = address(arg1)
    emit 0x1d3d9b2b: address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The target address cannot be the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'Strategy is a 0 address'
    require ext_code.size(arg1)
    staticcall arg1.0xc89039c5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != depositTokenAddress:
        revert with 0, 'FractVault::addStrategy, not compatible'
    stor7[address(arg1)] = 1
    sub_3076e9de.length++
    address(sub_3076e9de[sub_3076e9de.length]) = arg1
    emit 0x69887873: arg1
}

function sub_a5bd9e84(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if arg2 <= 0:
        revert with 0, 'Percentage Required'
    if arg2 > 10000:
        revert with 0, 'Percentage Required'
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args (ext_call.return_data[0] * arg2 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'Withdrawal failed'
    if sub_89519c05 > !ext_call.return_data[0]:
        revert with 0, 17
    sub_89519c05 += ext_call.return_data[0]
    if sub_d63f4c07 < sub_89519c05 + ext_call.return_data[0]:
        revert with 0, 17
    sub_d63f4c07 = sub_d63f4c07 - sub_89519c05 - ext_call.return_data[0]
    emit 0xb28e99af: ext_call.return_data[0], address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x2e1a7d4d with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * arg2 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'Strategy is a 0 address'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Strategy is not supported, cannot remove.'
    idx = 0
    while idx < sub_3076e9de.length:
        mem[0] = 3
        if address(sub_3076e9de[idx]) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_3076e9de.length < 1:
            revert with 0, 17
        if sub_3076e9de.length - 1 >= sub_3076e9de.length:
            revert with 0, 50
        if idx >= sub_3076e9de.length:
            revert with 0, 50
        address(sub_3076e9de[idx]) = address(sub_3076e9de[sub_3076e9de.length])
        if not sub_3076e9de.length:
            revert with 0, 49
        address(sub_3076e9de[sub_3076e9de.length]) = 0
        sub_3076e9de.length--
        s = sha3(3)
        idx = sha3(3)
        while sha3(3) + sub_3076e9de.length > idx:
            stor[s] = stor[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = sha3(3) + sub_3076e9de.length
        while sha3(3) + sub_3076e9de.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        emit RemoveStrategy(arg1);
    if not sub_3076e9de.length:
        idx = 0
        while sub_3076e9de.length > idx:
            uint256(sub_3076e9de[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while sub_3076e9de.length > idx:
            uint256(sub_3076e9de[s]) = uint256(sub_3076e9de[idx])
            s = s + 1
            idx = idx + 1
            continue 
        idx = sub_3076e9de.length
        while sub_3076e9de.length > idx:
            uint256(sub_3076e9de[idx]) = 0
            idx = idx + 1
            continue 
    emit RemoveStrategy(arg1);
}

function sub_20fdebc4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not address(arg1):
        revert with 0, 'Strategy is a 0 address'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Strategy is not supported, cannot remove.'
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'Withdrawal failed'
    if ext_call.return_data[0] < sub_d63f4c07:
        revert with 0, 17
    if sub_89519c05 > !ext_call.return_data[0]:
        revert with 0, 17
    sub_89519c05 += ext_call.return_data[0]
    if sub_d63f4c07 > !(ext_call.return_data[0] - sub_d63f4c07):
        revert with 0, 17
    if ext_call.return_data[0] < sub_89519c05 + ext_call.return_data[0]:
        revert with 0, 17
    sub_d63f4c07 = -sub_89519c05
    emit 0xb28e99af: ext_call.return_data[0], address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositToVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'Amount must be greater than 0'
    mem[100] = this.address
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if sub_89519c05 > !arg1:
        revert with 0, 17
    sub_89519c05 += arg1
    emit Deposit(arg1, msg.sender);
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
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call depositTokenAddress with:
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
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
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
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] + arg1:
        revert with 0, 'Balance verification failed'
    stor1 = 1
}

function sub_c69454d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not address(arg1):
        revert with 0, 'FractVault::no active strategy'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Strategy is not in supported strategies.'
    mem[100] = this.address
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Cannot deploy balance, amount must be greater than 0'
    if sub_d63f4c07 > !ext_call.return_data[0]:
        revert with 0, 17
    sub_d63f4c07 += ext_call.return_data[0]
    if sub_89519c05 < ext_call.return_data[0]:
        revert with 0, 17
    sub_89519c05 -= ext_call.return_data[0]
    emit 0x43d1bf5f: ext_call.return_data[0], address(arg1)
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 2 * ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call depositTokenAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 2 * ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 2 * ext_call.return_data[0], 0) << 288)
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
    require ext_code.size(address(arg1))
    call address(arg1).deposit(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Deployment Failed'
}

function sub_91127fe4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if arg2 <= 0:
        revert with 0, 'Invalid Percentage'
    if arg2 > 10000:
        revert with 0, 'Invalid Percentage'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Strategy is not in supported strategies'
    mem[100] = this.address
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Deposit token balance must be greater than  0'
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if sub_d63f4c07 > !(ext_call.return_data[0] * arg2 / 10000):
        revert with 0, 17
    sub_d63f4c07 += ext_call.return_data[0] * arg2 / 10000
    if sub_89519c05 < ext_call.return_data[0] * arg2 / 10000:
        revert with 0, 17
    sub_89519c05 -= ext_call.return_data[0] * arg2 / 10000
    emit 0x43d1bf5f: (ext_call.return_data[0] * arg2 / 10000), address(arg1)
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !(ext_call.return_data[0] * arg2 / 10000):
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + (ext_call.return_data[0] * arg2 / 10000)
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0] + (ext_call.return_data[0] * arg2 / 10000), 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call depositTokenAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0] + (ext_call.return_data[0] * arg2 / 10000), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0] + (ext_call.return_data[0] * arg2 / 10000), 0) << 288)
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
    require ext_code.size(address(arg1))
    call address(arg1).deposit(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * arg2 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Deployment Failed'
}



}

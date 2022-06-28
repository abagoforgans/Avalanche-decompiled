contract main {




// =====================  Runtime code  =====================


#
#  - withdrawInterest(uint256 arg1)
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - harvest(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
uint8 decimals;
uint256 totalTokenSupply;
mapping of uint256 balances;
mapping of uint256 allowances;
address owner;
address depositTokenAddress;
address rewardTokenAddress;
address sub_573dba71Address;
address devAddr;
uint256 sub_b1f07751;
uint256 sub_3f6efa0d;
uint256 totalDeposits;
uint8 depositsEnabled;
uint256 sub_0f4221d6;
uint256 sub_3ed6c090;
address stor17;
address sub_ffc94f90Address;
uint256 sub_8e15bea3;
address sub_6f3c38d7Address;

function sub_0f4221d6(?) payable {
    return sub_0f4221d6
}

function totalTokenSupply() payable {
    return totalTokenSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function sub_3ed6c090(?) payable {
    return sub_3ed6c090
}

function sub_3f6efa0d(?) payable {
    return sub_3f6efa0d
}

function depositsEnabled() payable {
    return bool(depositsEnabled)
}

function allowances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowances[arg1][arg2]
}

function sub_573dba71(?) payable {
    return sub_573dba71Address
}

function sub_6f3c38d7(?) payable {
    return sub_6f3c38d7Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function owner() payable {
    return owner
}

function sub_8e15bea3(?) payable {
    return sub_8e15bea3
}

function sub_b1f07751(?) payable {
    return sub_b1f07751
}

function depositToken() payable {
    return depositTokenAddress
}

function devAddr() payable {
    return devAddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowances[address(arg1)][address(arg2)]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function sub_ffc94f90(?) payable {
    return sub_ffc94f90Address
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
    return (owner == arg1)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balances[msg.sender] < arg2:
        revert with 0, 17
    balances[msg.sender] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowances[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getTotalDeposits() payable {
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateDevAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Developer can call this function'
    if not arg1:
        revert with 0, 'Address is a 0 address'
    emit 0xa8e91499: devAddr, arg1
    devAddr = arg1
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalTokenSupply and totalDeposits > -1 / totalTokenSupply:
        revert with 0, 17
    if totalTokenSupply * totalDeposits <= 0:
        return 0
    if arg1 and totalDeposits > -1 / arg1:
        revert with 0, 17
    if not totalTokenSupply:
        revert with 0, 18
    return (arg1 * totalDeposits / totalTokenSupply)
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalTokenSupply and totalDeposits > -1 / totalTokenSupply:
        revert with 0, 17
    if totalTokenSupply * totalDeposits <= 0:
        return arg1
    if arg1 and totalTokenSupply > -1 / arg1:
        revert with 0, 17
    if not totalDeposits:
        revert with 0, 18
    return (arg1 * totalTokenSupply / totalDeposits)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowances[address(arg1)][msg.sender] != -1:
        if allowances[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        allowances[address(arg1)][msg.sender] -= arg3
    if balances[address(arg1)] < arg3:
        revert with 0, 17
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setPoolID(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    sub_8e15bea3 = arg1
    emit 0x90f6c792: arg1
}

function sub_a35c3159(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    emit 0x9d9924d5: sub_b1f07751, arg1
    sub_b1f07751 = arg1
}

function sub_d3b60ef9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    emit 0x1d73bc4a: sub_3f6efa0d, arg1
    sub_3f6efa0d = arg1
}

function setVaultAddress(address arg1) payable {
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
        revert with 0, 'Address cannot be a 0 address'
    sub_573dba71Address = arg1
    emit SetVault(arg1);
}

function updateDepositsEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if arg1 == bool(depositsEnabled):
        revert with 0, 'Update Failed'
    depositsEnabled = uint8(arg1)
    emit DepositsEnabled(arg1);
}

function sub_5502240c(?) payable {
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
    sub_ffc94f90Address = address(arg1)
    emit 0xbd4ba2c0: address(arg1)
}

function sub_dd195ec7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if arg1 > !sub_3ed6c090:
        revert with 0, 17
    if arg1 + sub_3ed6c090 > 10000:
        revert with 0, 'Update Failed'
    emit 0x656574a9: sub_0f4221d6, arg1
    sub_0f4221d6 = arg1
}

function updateAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if arg1 > !sub_0f4221d6:
        revert with 0, 17
    if arg1 + sub_0f4221d6 > 10000:
        revert with 0, 'Updated Failed'
    emit UpdateAdminFee(sub_3ed6c090, arg1);
    sub_3ed6c090 = arg1
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

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Revoke Failed'
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Recovery amount must be greater than 0'
    emit Recovered(address(arg1), arg2);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Recovery Failed'
}

function withdrawMasterChef(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_6f3c38d7Address)
    staticcall sub_6f3c38d7Address.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Amount must be greater than 0'
    if sub_8e15bea3 != arg1:
        revert with 0, 'poolID not set or incorrect poolID'
    require ext_code.size(sub_6f3c38d7Address)
    call sub_6f3c38d7Address.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c99f079a(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    sub_b1f07751 = arg1
    sub_3ed6c090 = arg2
    sub_0f4221d6 = arg3
    emit 0x9d9924d5: sub_b1f07751, arg1
    sub_b1f07751 = arg1
    if sub_3ed6c090 > !sub_0f4221d6:
        revert with 0, 17
    if sub_3ed6c090 + sub_0f4221d6 > 10000:
        revert with 0, 'Updated Failed'
    emit UpdateAdminFee(sub_3ed6c090, sub_3ed6c090);
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if sub_0f4221d6 > !sub_3ed6c090:
        revert with 0, 17
    if sub_0f4221d6 + sub_3ed6c090 > 10000:
        revert with 0, 'Update Failed'
    emit 0x656574a9: sub_0f4221d6, sub_0f4221d6
}

function sub_0bd233cb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = address(arg2)
    require ext_code.size(sub_6f3c38d7Address)
    staticcall sub_6f3c38d7Address.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require uint32(arg1), address(arg2) << 64 == Mask(96, 0, arg2) << 64
    _6 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    _7 = mem[0, mem[164 len 28] + 96]
    if mem[0, mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[0, mem[164 len 28] + 96]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[_7 + ceil32(return_data.size) + 128] = 0
    return _4, mem[192]
}

function depositMasterChef(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    require ext_code.size(stor17)
    staticcall stor17.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Amount must be greater than 0'
    if sub_8e15bea3 != arg1:
        revert with 0, 'poolID not set or incorrect poolID'
    require ext_code.size(stor17)
    call stor17.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6f3c38d7Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to approve'
    require ext_code.size(sub_6f3c38d7Address)
    call sub_6f3c38d7Address.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function sub_a55a9d05(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    if not address(arg1):
        revert with 0, 'Address cannot be a 0 address'
    if not address(arg2):
        revert with 0, 'Address cannot be a 0 address'
    if not address(arg3):
        revert with 0, 'Address cannot be a 0 address'
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    depositTokenAddress = address(arg2)
    emit 0xfd287217: address(arg2)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if address(arg1) < address(arg2):
        if address(arg1) == address(arg1):
            if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            require ext_code.size(address(arg3))
            if address(arg1) == address(arg1):
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
            else:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
        else:
            if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            require ext_code.size(address(arg3))
            if address(arg1) == address(arg1):
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
            else:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    else:
        if address(arg2) == address(arg1):
            if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            require ext_code.size(address(arg3))
            if address(arg2) == address(arg1):
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
            else:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
        else:
            if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            require ext_code.size(address(arg3))
            if address(arg2) == address(arg1):
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
            else:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2edf2b6(?) payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    emit 0xd8a9f032: stor17
    if not stor17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid pair for removingliquidity'
    require ext_code.size(stor17)
    staticcall stor17.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    call stor17.0xa9059cbb with:
         gas gas_remaining wei
        args stor17, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
    require ext_code.size(stor17)
    call stor17.burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_ffc94f90Address)
    staticcall sub_ffc94f90Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    staticcall stor17.getReserves() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if sub_ffc94f90Address < depositTokenAddress:
        if sub_ffc94f90Address == sub_ffc94f90Address:
            if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(sub_ffc94f90Address)
            call sub_ffc94f90Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor17, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            require ext_code.size(stor17)
            if sub_ffc94f90Address == sub_ffc94f90Address:
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
            else:
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_ffc94f90Address)
            staticcall sub_ffc94f90Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'Swap Failed'
        else:
            if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(sub_ffc94f90Address)
            call sub_ffc94f90Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor17, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            if sub_ffc94f90Address == sub_ffc94f90Address:
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffc94f90Address)
                staticcall sub_ffc94f90Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    revert with 0, 'Swap Failed'
            else:
                mem[(8 * ceil32(return_data.size)) + 164] = 0
                mem[(8 * ceil32(return_data.size)) + 196] = this.address
                mem[(8 * ceil32(return_data.size)) + 228] = 128
                mem[(8 * ceil32(return_data.size)) + 260] = 0
                mem[(8 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffc94f90Address)
                staticcall sub_ffc94f90Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(10 * ceil32(return_data.size)) + 164 len 17 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    revert with 0, 'Swap Failed', mem[(12 * ceil32(return_data.size)) + 228 len 20 * ceil32(return_data.size)]
    else:
        if depositTokenAddress == sub_ffc94f90Address:
            if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(sub_ffc94f90Address)
            call sub_ffc94f90Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor17, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            require ext_code.size(stor17)
            if depositTokenAddress == sub_ffc94f90Address:
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
            else:
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_ffc94f90Address)
            staticcall sub_ffc94f90Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'Swap Failed'
        else:
            if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(sub_ffc94f90Address)
            call sub_ffc94f90Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor17, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
            if depositTokenAddress == sub_ffc94f90Address:
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffc94f90Address)
                staticcall sub_ffc94f90Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    revert with 0, 'Swap Failed'
            else:
                mem[(8 * ceil32(return_data.size)) + 164] = 0
                mem[(8 * ceil32(return_data.size)) + 196] = this.address
                mem[(8 * ceil32(return_data.size)) + 228] = 128
                mem[(8 * ceil32(return_data.size)) + 260] = 0
                mem[(8 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffc94f90Address)
                staticcall sub_ffc94f90Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(10 * ceil32(return_data.size)) + 164 len 17 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    revert with 0, 'Swap Failed', mem[(12 * ceil32(return_data.size)) + 228 len 20 * ceil32(return_data.size)]
    ('gt', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
}

function swapAddLiquidity() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x6e4f6e6c7920746865206f776e6572206f662074686520736d61727420636f6e,
                    0xfe7261637420697320616c6c6f77656420746f2063616c6c2074686973206675,
                    0x6374696f6e2e0000000000000000000000000000000000000000000000000000
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 2 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if not sub_ffc94f90Address:
        revert with 0, 'Must set Paired Token before calling this function'
    emit 0xc3c6b9e4: (ext_call.return_data[0] / 2), sub_ffc94f90Address
    emit AddLiquidity(stor17);
    require ext_code.size(stor17)
    staticcall stor17.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if depositTokenAddress < sub_ffc94f90Address:
        if depositTokenAddress == depositTokenAddress:
            if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0] / 2):
                revert with 0, 18
            if depositTokenAddress == depositTokenAddress:
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) > 0:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2)
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0 / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = stor17
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 0 > 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 0 / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0, mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED', mem[(12 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address, mem[(12 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
        else:
            if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0] / 2):
                revert with 0, 18
            if depositTokenAddress != depositTokenAddress:
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 0 > 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0 / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = stor17
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2), address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) > 0:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 0 / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0, mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED', mem[(12 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address, mem[(12 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    else:
        if sub_ffc94f90Address == depositTokenAddress:
            if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0] / 2):
                revert with 0, 18
            if sub_ffc94f90Address != depositTokenAddress:
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 0 > 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0 / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = stor17
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2), address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) > 0:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0] / 2), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 0 / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0, mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED', mem[(12 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address, mem[(12 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
        else:
            if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0] / 2):
                revert with 0, 18
            if sub_ffc94f90Address == depositTokenAddress:
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) > 0:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2)
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0 / Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = stor17
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor17, ext_call.return_data[0] / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED'
                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                mem[(4 * ceil32(return_data.size)) + 228] = 128
                mem[(4 * ceil32(return_data.size)) + 260] = 0
                mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                require ext_code.size(stor17)
                call stor17.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor17)
                staticcall stor17.getReserves() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0] / 2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 0 > 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0:
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if False and ext_call.return_data[18 len 14] > 0:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 0 / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 0, mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                else:
                    if ext_call.return_data[0] / 2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                    else:
                        if 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2):
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        mem[(6 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token0() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(8 * ceil32(return_data.size)) + 132] = stor17
                        mem[(8 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 132] = 32
                            mem[(8 * ceil32(return_data.size)) + 164] = 32
                            mem[(8 * ceil32(return_data.size)) + 196] = 'DexLibrary::TRANSFER_FROM_FAILED'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 128
                               len (15 * ceil32(return_data.size)) + 100
                        mem[(8 * ceil32(return_data.size)) + 128] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor17)
                        staticcall stor17.token1() with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 132 len 15 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(11 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor17, 997 * ext_call.return_data[0] / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0] / 2), mem[(11 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'DexLibrary::TRANSFER_FROM_FAILED', mem[(12 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                require ext_code.size(stor17)
                call stor17.'jbxB' with:
                     gas gas_remaining wei
                    args this.address, mem[(12 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}

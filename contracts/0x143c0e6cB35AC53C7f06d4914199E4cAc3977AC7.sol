contract main {




// =====================  Runtime code  =====================


#
#  - distributeVerificationRewards(address arg1, address arg2, uint256 arg3)
#  - lockDSLAValue(address arg1, address arg2, uint256 arg3)
#  - getActivePool(address arg1)
#
address owner;
uint256 stor1;
address sub_8b8e5309Address;
address sub_db69a462Address;
uint256 stor3;
uint256 stor4;
mapping of struct sub_5f635ce1;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor12; offset 64
uint64 stor12;
uint256 stor12; offset 64
array of address allowedTokens;
array of address sub_a3f5cadf;

function allowedTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allowedTokens.length
    return allowedTokens[arg1]
}

function sub_5f635ce1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5f635ce1[arg1].field_0, 
           sub_5f635ce1[arg1].field_256,
           sub_5f635ce1[arg1].field_512,
           sub_5f635ce1[arg1].field_768,
           sub_5f635ce1[arg1].field_1024,
           sub_5f635ce1[arg1].field_1280,
           sub_5f635ce1[arg1].field_1536
}

function sub_8b8e5309(?) payable {
    return sub_8b8e5309Address
}

function owner() payable {
    return owner
}

function sub_a3f5cadf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_a3f5cadf[arg1])
    return address(sub_a3f5cadf[arg1][arg2])
}

function periodIsVerified(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(sub_5f635ce1[address(arg1)][7][arg2].field_0)
}

function sub_db69a462(?) payable {
    return address(sub_db69a462Address)
}

function _fallback() payable {
    revert
}

function getStakingParameters() payable {
    return stor4, stor6, stor7, stor8, stor9, stor10, stor11, uint64(stor12.field_0), bool(uint8(stor12.field_64))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSLARegistry() payable {
    if address(sub_db69a462Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SLARegistry address has already been set'
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function isAllowedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < allowedTokens.length:
        mem[0] = 13
        if allowedTokens[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function slaWasStakedByUser(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    while idx < uint256(sub_a3f5cadf[address(arg1)]):
        require idx < uint256(sub_a3f5cadf[address(arg1)])
        if address(sub_a3f5cadf[address(arg1)][idx]) == arg2:
            return 1
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        continue 
    return 0
}

function addAllowedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < allowedTokens.length:
        mem[0] = 13
        if allowedTokens[idx] == arg1:
            revert with 0, 'token already added'
        idx = idx + 1
        continue 
    allowedTokens.length++
    allowedTokens[allowedTokens.length] = arg1
}

function sub_8d9cc7ed(?) payable {
    require calldata.size - 4 >= 288
    require arg8 == uint64(arg8)
    require arg9 == bool(arg9)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
    stor6 = arg2
    stor7 = arg3
    stor8 = arg4
    stor9 = arg5
    stor10 = arg6
    stor11 = arg7
    uint64(stor12.field_0) = uint64(arg8)
    Mask(192, 0, stor12.field_64) = Mask(192, 0, bool(arg9))
    if arg4 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stor6 != arg6 + arg5 + arg4 + arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking parameters should match on summation'
    emit 0x6f8c694d: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8 << 192, bool(arg9)
}

function registerStakedSla(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(sub_db69a462Address))
    staticcall address(sub_db69a462Address).isRegisteredSLA(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only for registered SLAs'
    idx = 0
    while idx < uint256(sub_a3f5cadf[address(arg1)]):
        require idx < uint256(sub_a3f5cadf[address(arg1)])
        if address(sub_a3f5cadf[address(arg1)][idx]) == msg.sender:
            return 1
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        continue 
    uint256(sub_a3f5cadf[address(arg1)])++
    uint256(sub_a3f5cadf[address(arg1)][uint256(sub_a3f5cadf[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(sub_a3f5cadf[address(arg1)][uint256(sub_a3f5cadf[address(arg1)])]))
    return 1
}

function sub_66a0428e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(address(sub_db69a462Address))
    staticcall address(sub_db69a462Address).isRegisteredSLA(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only for registered SLAs'
    mem[ceil32(return_data.size) + 96 len 7560] = code.data[9230 len 7560]
    mem[ceil32(return_data.size) + 7656] = 64
    mem[ceil32(return_data.size) + 7720] = arg1.length
    mem[ceil32(return_data.size) + 7752 len arg1.length] = arg1[all]
    mem[ceil32(return_data.size) + arg1.length + 7752] = 0
    mem[ceil32(return_data.size) + 7688] = ceil32(arg1.length) + 96
    mem[ceil32(return_data.size) + ceil32(arg1.length) + 7752] = arg2.length
    mem[ceil32(return_data.size) + ceil32(arg1.length) + 7784 len arg2.length] = arg2[all]
    mem[ceil32(return_data.size) + ceil32(arg1.length) + arg2.length + 7784] = 0
    create contract with 0 wei
                    code: code.data[9230 len 7560], 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[ceil32(return_data.size) + arg1.length + 7784 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).MINTER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).grantRole(bytes32 rg1, address rg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(arg1.length) + 192] = arg2.length
    mem[(2 * ceil32(return_data.size)) + ceil32(arg1.length) + 224 len arg2.length] = arg2[all]
    mem[(2 * ceil32(return_data.size)) + ceil32(arg1.length) + arg2.length + 224] = 0
    emit DTokenCreated(address rg1, address rg2, string rg3, string rg4):
                       64,
                       ceil32(arg1.length) + 96,
                       arg1.length,
                       arg1[all],
                       0,
                       mem[(2 * ceil32(return_data.size)) + arg1.length + 224 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length],
                       address(create.new_address),
                       msg.sender,
    return address(create.new_address)
}

function returnLockedValue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(sub_db69a462Address) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by SLARegistry'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not sub_5f635ce1[address(arg1)].field_0:
        revert with 0, 'locked value is empty'
    sub_5f635ce1[address(arg1)].field_0 = 0
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = sub_5f635ce1[address(arg1)].field_0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_8b8e5309Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = 0, ext_call.return_data[12 len 20], sub_5f635ce1[address(arg1)].field_0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_8b8e5309Address with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], sub_5f635ce1[address(arg1)].field_0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], sub_5f635ce1[address(arg1)].field_0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
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
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit LockedValueReturned(sub_5f635ce1[address(arg1)].field_0, arg1, ext_call.return_data[12 len 20]);
    stor1 = 1
}



}

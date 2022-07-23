contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, address arg2, uint256 arg3)
#
address owner;
address awardTokenAddress;
uint256 sub_dec91b64;
mapping of uint256 claimed;

function owner() payable {
    return owner
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimed[arg1]
}

function awardToken() payable {
    return awardTokenAddress
}

function sub_dec91b64(?) payable {
    return sub_dec91b64
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

function setAirdropRoot(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dec91b64 = arg1
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

function sub_7b5c0a80(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128] = address(arg1)
    mem[148] = arg2
    mem[96] = 52
    mem[64] = (32 * arg3.length) + 212
    mem[180] = arg3.length
    mem[212 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 212] = 0
    idx = 0
    s = 0
    while idx < arg3.length:
        if idx >= mem[180]:
            revert with 'NH{q', 50
        _21 = mem[(32 * idx) + 212]
        if s + sha3(mem[128 len 52]) > mem[(32 * idx) + 212]:
            mem[mem[64] + 32] = mem[(32 * idx) + 212]
            mem[mem[64] + 64] = s + sha3(mem[128 len 52])
            _26 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_26 + 32 len mem[_26]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 52])
        mem[mem[64] + 64] = _21
        _29 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_29 + 32 len mem[_29]])
        continue 
    return (s == sub_dec91b64)
}

function sub_0bcae1ac(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128] = address(msg.sender)
    mem[148] = arg1
    mem[96] = 52
    mem[64] = (32 * arg2.length) + 212
    mem[180] = arg2.length
    mem[212 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 212] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= mem[180]:
            revert with 'NH{q', 50
        _88 = mem[(32 * idx) + 212]
        if s + sha3(mem[128 len 52]) > mem[(32 * idx) + 212]:
            mem[mem[64] + 32] = mem[(32 * idx) + 212]
            mem[mem[64] + 64] = s + sha3(mem[128 len 52])
            _97 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_97 + 32 len mem[_97]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 52])
        mem[mem[64] + 64] = _88
        _100 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_100 + 32 len mem[_100]])
        continue 
    if s != sub_dec91b64:
        revert with 0, 'Invalid merkle proof'
    if arg1 < claimed[address(msg.sender)]:
        revert with 'NH{q', 17
    if arg1 - claimed[address(msg.sender)] <= 0:
        revert with 0, 'Nothing to claim'
    mem[0] = msg.sender
    mem[32] = 3
    claimed[address(msg.sender)] = arg1
    _96 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = arg1 - claimed[address(msg.sender)]
    _104 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_96 + 100] = 32
    mem[_96 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(awardTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    _110 = mem[_104]
    mem[_96 + 164 len ceil32(mem[_104])] = mem[_104 + 32 len ceil32(mem[_104])]
    if ceil32(_110) > _110:
        mem[_96 + _110 + 164] = 0
    call awardTokenAddress with:
         gas gas_remaining wei
        args mem[_96 + 168 len _110 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_96 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_96 + 196] == bool(mem[_96 + 196])
            if not mem[_96 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}

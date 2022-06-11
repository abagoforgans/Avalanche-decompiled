contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(address arg1, uint256 arg2)
#
uint256 stor0;
address owner;
address sub_599e092aAddress;
mapping of struct campaigns;
array of struct stor4;

function campaigns(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return campaigns[arg1].field_0
}

function sub_599e092a(?) payable {
    return sub_599e092aAddress
}

function owner() payable {
    return owner
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

function sub_daac5ae7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_599e092aAddress = address(arg1)
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

function sub_08f86c3e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor4[arg1][address(arg2)].field_0:
        mem[212] = stor4[arg1][address(arg2)].field_0
        idx = 212
        s = 0
        while (32 * stor4[arg1][address(arg2)].field_0) + 180 > idx:
            mem[idx + 32] = stor4[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor4[arg1][address(arg2)].field_0, data=mem[212 len 32 * stor4[arg1][address(arg2)].field_0])
}

function sub_2dbc3c1f(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < cd[68] + (64 * ('cd', 68).length) + 36:
        require calldata.size - idx >= 64
        _19 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        mem[_19] = cd[idx]
        mem[_19 + 32] = cd[(idx + 32)]
        mem[s] = _19
        s = s + 32
        idx = idx + 64
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[32] = 3
    campaigns[cd[4]].field_256 = 0
    mem[0] = sha3(cd[4], 3) + 1
    idx = 0
    while 2 * campaigns[cd[4]].field_256 > idx:
        campaigns[cd[4]][idx + 1].field_0 = 0
        campaigns[cd[4]][idx + 1].field_256 = 0
        idx = idx + 2
        continue 
    campaigns[cd[4]].field_0 = address(cd[36])
    idx = 0
    while idx < mem[96]:
        if idx:
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] <= mem[mem[(32 * idx - 1) + 128]]:
                revert with 0, 'time is not on asc order'
        if idx >= mem[96]:
            revert with 0, 50
        campaigns[cd[4]].field_256++
        mem[0] = sha3(cd[4], 3) + 1
        stor[(2 * campaigns[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'campaigns', 3)))].field_0 = mem[mem[(32 * idx) + 128]]
        stor[(2 * campaigns[cd[4]].field_256) + ('array', 1, ('map', ('cd', 4), ('name', 'campaigns', 3)))].field_256 = mem[mem[(32 * idx) + 128] + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _49 = mem[64]
    mem[mem[64]] = cd[4]
    mem[mem[64] + 32] = address(cd[36])
    mem[mem[64] + 64] = 96
    _50 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = mem[64] + 128
    t = 128
    while idx < _50:
        _73 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_73 + 32]
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    emit 0xd16a78f0: mem[mem[64] len _49 + (64 * _50) + -mem[64] + 128]
}

function claim(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[128] = arg1
    mem[160] = address(msg.sender)
    mem[96] = 52
    mem[180] = campaigns[arg1].field_0
    mem[64] = (32 * campaigns[arg1].field_256) + 276
    mem[244] = campaigns[arg1].field_256
    s = 276
    idx = 0
    while idx < campaigns[arg1].field_256:
        mem[0] = sha3(arg1, 3) + 1
        _37 = mem[64]
        mem[64] = mem[64] + 64
        mem[_37] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'campaigns', 3)))].field_0
        mem[_37 + 32] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'campaigns', 3)))].field_256
        mem[s] = _37
        s = s + 32
        idx = idx + 1
        continue 
    mem[212] = 244
    mem[0] = sha3(arg1, msg.sender)
    mem[32] = 4
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = msg.sender
    staticcall sub_599e092aAddress.getAllocation(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_38]
    idx = arg2
    s = 0
    while idx <= arg3:
        if idx >= mem[244]:
            revert with 0, 50
        if block.timestamp < mem[mem[(32 * idx) + 276]]:
            revert with 0, 'not relased yet'
        mem[0] = idx
        mem[32] = sha3(sha3(arg1, msg.sender), 4) + 1
        if stor4[arg1][msg.sender][1][idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        stor4[arg1][msg.sender].field_0++
        stor4[arg1][msg.sender][stor4[arg1][msg.sender].field_0].field_0 = idx
        mem[0] = idx
        mem[32] = sha3(sha3(arg1, msg.sender), 4) + 1
        stor4[arg1][msg.sender][1][idx].field_0 = stor4[arg1][msg.sender].field_0
        if idx >= mem[244]:
            revert with 0, 50
        if s > !mem[mem[(32 * idx) + 276] + 32]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + 276] + 32]
        continue 
    if s and _39 > -1 / s:
        revert with 0, 17
    _65 = mem[180]
    if s * _39 / 10000 <= 0:
        revert with 0, 'transfer zero'
    if not mem[192 len 20]:
        call msg.sender with:
           value s * _39 / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'transfer failed'
    else:
        _72 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s * _39 / 10000
        _73 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_72 + 100] = 32
        mem[_72 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_65)):
            revert with 0, 'Address: call to non-contract'
        _87 = mem[_73]
        mem[_72 + 164 len ceil32(mem[_73])] = mem[_73 + 32 len ceil32(mem[_73])]
        if ceil32(_87) > _87:
            mem[_87 + _72 + 164] = 0
        call address(_65) with:
             gas gas_remaining wei
            args mem[_72 + 168 len _87 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_72 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_72 + 196] == bool(mem[_72 + 196])
                if not mem[_72 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor0 = 1
}



}

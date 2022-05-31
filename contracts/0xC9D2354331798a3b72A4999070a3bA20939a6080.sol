contract main {




// =====================  Runtime code  =====================


const sub_ac6ddd5d(?) = 200


address sub_27144c05Address;
address whitelistAdminAddress;
mapping of uint256 whitelistedAmountFor;

function sub_27144c05(?) payable {
    return sub_27144c05Address
}

function whitelistAdmin() payable {
    return whitelistAdminAddress
}

function whitelistedAmountFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Whitelist: zero account'
    return whitelistedAmountFor[address(arg1)]
}

function _fallback() payable {
    revert
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Whitelist: zero account'
    return (whitelistedAmountFor[address(arg1)] > 0)
}

function setWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_27144c05Address != msg.sender:
        revert with 0, 'Whitelist: sender unauthorized'
    if not arg1:
        revert with 0, 'Whitelist: zero account'
    whitelistAdminAddress = arg1
}

function setGovernanceAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_27144c05Address != msg.sender:
        revert with 0, 'Whitelist: sender unauthorized'
    if not arg1:
        revert with 0, 'Whitelist: zero account'
    sub_27144c05Address = arg1
}

function removeWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if whitelistAdminAddress != msg.sender:
        revert with 0, 'Whitelist: sender unauthorized'
    if not arg1:
        revert with 0, 'Whitelist: zero account'
    if whitelistedAmountFor[address(arg1)] <= 0:
        revert with 0, 'Whitelist: not whitelisted'
    whitelistedAmountFor[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelisted(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if whitelistAdminAddress != msg.sender:
        revert with 0, 'Whitelist: sender unauthorized'
    if not arg1:
        revert with 0, 'Whitelist: zero account'
    if arg2 <= 0:
        revert with 0, 'Whitelist: zero amount'
    if whitelistedAmountFor[address(arg1)]:
        revert with 0, 'Whitelist: already whitelisted'
    whitelistedAmountFor[address(arg1)] = arg2
    emit WhitelistedAdded(arg2, arg1);
}

function sub_26fc5d4b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if whitelistAdminAddress != msg.sender:
        revert with 0, 'Whitelist: sender unauthorized'
    if ('cd', 4).length <= 0:
        revert with 0, 'Whitelist: empty'
    if ('cd', 4).length > 200:
        revert with 0, 'Whitelist: exceed max'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Whitelist: zero account'
        if whitelistedAmountFor[mem[(32 * idx) + 140 len 20]] <= 0:
            revert with 0, 'Whitelist: not whitelisted'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        whitelistedAmountFor[address(mem[(32 * idx) + 128])] = 0
        emit WhitelistedRemoved(mem[(32 * idx) + 140 len 20]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_70827a4d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if whitelistAdminAddress != msg.sender:
        revert with 0, 'Whitelist: sender unauthorized'
    if ('cd', 4).length <= 0:
        revert with 0, 'Whitelist: empty'
    if ('cd', 4).length > 200:
        revert with 0, 'Whitelist: exceed max'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Whitelist: different length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _87 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _89 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Whitelist: zero account'
        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
            revert with 0, 'Whitelist: zero amount'
        if whitelistedAmountFor[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Whitelist: already whitelisted'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        whitelistedAmountFor[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        emit WhitelistedAdded(_89, address(_87));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}

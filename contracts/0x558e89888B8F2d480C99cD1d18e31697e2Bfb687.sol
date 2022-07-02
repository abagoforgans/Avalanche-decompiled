contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_cf11ff29;
address rewardTokenAddress;
uint256 rewardPerSecond;
array of struct sub_3b1039c5;
uint256 sub_ab4ccf01;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function sub_3b1039c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        if sub_3b1039c5[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_3b1039c5.length:
            revert with 0, 50
        return sub_3b1039c5[idx].field_256
    revert with 0, 'Entry does not exist'
}

function owner() {
    return owner
}

function rewardPerSecond() {
    return rewardPerSecond
}

function sub_ab4ccf01(?) {
    return sub_ab4ccf01
}

function entries(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_3b1039c5.length
    return sub_3b1039c5[arg1].field_0, sub_3b1039c5[arg1].field_256
}

function sub_cf11ff29(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_cf11ff29[address(arg1)][arg2]
}

function rewardToken() {
    return rewardTokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPerSecond(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_fad9884d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        if idx == -1:
            revert with 0, 17
        if sub_3b1039c5[idx].field_0 != address(arg1):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function addEntry(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        if idx == -1:
            revert with 0, 17
        if sub_3b1039c5[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        revert with 0, 'Entry already exists'
    sub_3b1039c5.length++
    sub_3b1039c5[sub_3b1039c5.length].field_0 = arg1
    stor8A35[stor4.length] = arg2
    if sub_ab4ccf01 == -1:
        revert with 0, 17
    sub_ab4ccf01++
}

function sub_c73be5ad(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        if idx == -1:
            revert with 0, 17
        if sub_3b1039c5[idx].field_0 != address(arg1):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0, 'Entry does not exist'
    idx = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        if sub_3b1039c5[idx].field_0 == address(arg1):
            if idx >= sub_3b1039c5.length:
                revert with 0, 50
            mem[0] = 4
            sub_3b1039c5[idx].field_256 = arg2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f207a1b4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _22 = mem[(32 * idx) + 128]
        s = 0
        t = 0
        while s < sub_3b1039c5.length:
            mem[0] = 4
            if s == -1:
                revert with 0, 17
            if sub_3b1039c5[s].field_0 != mem[(32 * idx) + 140 len 20]:
                s = s + 1
                t = t
                continue 
            s = s + 1
            t = 1
            continue 
        if not t:
            _28 = mem[64]
            mem[64] = mem[64] + 64
            mem[_28] = mem[(32 * idx) + 140 len 20]
            mem[_28 + 32] = 1
            sub_3b1039c5.length++
            mem[0] = 4
            sub_3b1039c5[sub_3b1039c5.length].field_0 = address(_22)
            stor8A35[stor4.length] = 1
            if sub_ab4ccf01 == -1:
                revert with 0, 17
            sub_ab4ccf01++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeEntry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        if idx == -1:
            revert with 0, 17
        if sub_3b1039c5[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0, 'Entry does not exist'
    if sub_3b1039c5.length > test266151307():
        revert with 0, 65
    mem[96] = sub_3b1039c5.length
    mem[64] = (32 * sub_3b1039c5.length) + 128
    if not sub_3b1039c5.length:
        idx = 0
        while idx < sub_3b1039c5.length:
            mem[0] = 4
            _40 = mem[64]
            mem[64] = mem[64] + 64
            mem[_40] = sub_3b1039c5[idx].field_0
            mem[_40 + 32] = sub_3b1039c5[idx].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _40
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * sub_3b1039c5.length) + 192
        mem[(32 * sub_3b1039c5.length) + 128] = 0
        mem[(32 * sub_3b1039c5.length) + 160] = 0
        mem[128] = (32 * sub_3b1039c5.length) + 128
        s = 128
        t = sub_3b1039c5.length
        while t - 1:
            mem[64] = mem[64] + 64
            mem[(32 * sub_3b1039c5.length) + 128] = 0
            mem[(32 * sub_3b1039c5.length) + 160] = 0
            mem[s + 32] = (32 * sub_3b1039c5.length) + 128
            s = s + 32
            t = t - 1
            continue 
        idx = 0
        while idx < sub_3b1039c5.length:
            mem[0] = 4
            _66 = mem[64]
            mem[64] = mem[64] + 64
            mem[_66] = sub_3b1039c5[idx].field_0
            mem[_66 + 32] = sub_3b1039c5[idx].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _66
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    sub_3b1039c5.length = 0
    mem[0] = 4
    idx = 0
    while 2 * sub_3b1039c5.length > idx:
        sub_3b1039c5[idx].field_0 = 0
        sub_3b1039c5[idx].field_256 = 0
        idx = idx + 2
        continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 12 len 20] != arg1:
            if idx >= mem[96]:
                revert with 0, 50
            sub_3b1039c5.length++
            mem[0] = 4
            sub_3b1039c5[sub_3b1039c5.length].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
            sub_3b1039c5[sub_3b1039c5.length].field_256 = mem[mem[(32 * idx) + 128] + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not sub_ab4ccf01:
        revert with 0, 17
    sub_ab4ccf01--
}

function pendingReward() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.mem[var40003 len 4] with:
                gas gas_remaining wei
               args mem[var40003 + 4 len var40004 - 4]
        mem[var40005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require var44002 - var44001 >= 32
        if var48002 >= var48001:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = var50001
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.mem[var52003 len 4] with:
                gas gas_remaining wei
               args mem[var52003 + 4 len var52004 - 4]
        mem[var52005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require var56002 - var56001 >= 32
        mem[0] = var60001
        mem[32] = sha3(sub_3b1039c5[idx].field_0, 1)
        if not sub_cf11ff29[stor4[idx].field_0][var60001]:
            if var60003 == -1:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_3b1039c5[idx].field_0)
            staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if var60003 + 1 >= mem[_203]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var60003 + 1
            require ext_code.size(sub_3b1039c5[idx].field_0)
            staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, var60003 + 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            var60001 = mem[_207]
            var60003 = var60003 + 1
            var60007 = var60007
            continue 
        if block.timestamp < sub_cf11ff29[stor4[idx].field_0][var60001]:
            revert with 0, 17
        if block.timestamp - sub_cf11ff29[stor4[idx].field_0][var60001] and sub_3b1039c5[idx].field_256 > -1 / block.timestamp - sub_cf11ff29[stor4[idx].field_0][var60001]:
            revert with 0, 17
        if (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var60001] * sub_3b1039c5[idx].field_256) and rewardPerSecond > -1 / (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var60001] * sub_3b1039c5[idx].field_256):
            revert with 0, 17
        if var60007 > !((block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var60001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)):
            revert with 0, 17
        if var60003 == -1:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if var60003 + 1 >= mem[_211]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = var60003 + 1
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, var60003 + 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        var60001 = mem[_215]
        var60003 = var60003 + 1
        var60007 = var60007 + (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var60001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
        continue 
    return 0
}

function update() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < sub_3b1039c5.length:
        mem[0] = 4
        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.mem[var42003 len 4] with:
                gas gas_remaining wei
               args mem[var42003 + 4 len var42004 - 4]
        mem[var42005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require var46002 - var46001 >= 32
        if var50002 >= var50001:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = var52001
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.mem[var54003 len 4] with:
                gas gas_remaining wei
               args mem[var54003 + 4 len var54004 - 4]
        mem[var54005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require var58002 - var58001 >= 32
        if not sub_cf11ff29[stor4[idx].field_0][var62001]:
            mem[0] = var62001
            mem[32] = sha3(sub_3b1039c5[idx].field_0, 1)
            sub_cf11ff29[stor4[idx].field_0][var62001] = block.timestamp
            if var62003 == -1:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_3b1039c5[idx].field_0)
            staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if var62003 + 1 >= mem[_279]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = var62003 + 1
            require ext_code.size(sub_3b1039c5[idx].field_0)
            staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, var62003 + 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            var62001 = mem[_285]
            var62003 = var62003 + 1
            var62007 = var62007
            continue 
        if block.timestamp < sub_cf11ff29[stor4[idx].field_0][var62001]:
            revert with 0, 17
        if block.timestamp - sub_cf11ff29[stor4[idx].field_0][var62001] and sub_3b1039c5[idx].field_256 > -1 / block.timestamp - sub_cf11ff29[stor4[idx].field_0][var62001]:
            revert with 0, 17
        if (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var62001] * sub_3b1039c5[idx].field_256) and rewardPerSecond > -1 / (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var62001] * sub_3b1039c5[idx].field_256):
            revert with 0, 17
        mem[mem[64] + 36] = (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var62001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var62001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var62007 > !((block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var62001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)):
            revert with 0, 17
        mem[0] = var62001
        mem[32] = sha3(sub_3b1039c5[idx].field_0, 1)
        sub_cf11ff29[stor4[idx].field_0][var62001] = block.timestamp
        if var62003 == -1:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if var62003 + 1 >= mem[_291]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = var62003 + 1
        require ext_code.size(sub_3b1039c5[idx].field_0)
        staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, var62003 + 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        var62001 = mem[_295]
        var62003 = var62003 + 1
        var62007 = var62007 + (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var62001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
        continue 
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xab4ccf01(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x8f10369a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardPerSecond
                    require unknown_0xa2e62045(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    idx = 0
                    while idx < sub_3b1039c5.length:
                        mem[0] = 4
                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.mem[var49003 len 4] with:
                                gas gas_remaining wei
                               args mem[var49003 + 4 len var49004 - 4]
                        mem[var49005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require var53002 - var53001 >= 32
                        if var57002 >= var57001:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var59001
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.mem[var61003 len 4] with:
                                gas gas_remaining wei
                               args mem[var61003 + 4 len var61004 - 4]
                        mem[var61005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require var65002 - var65001 >= 32
                        if not sub_cf11ff29[stor4[idx].field_0][var69001]:
                            mem[0] = var69001
                            mem[32] = sha3(sub_3b1039c5[idx].field_0, 1)
                            sub_cf11ff29[stor4[idx].field_0][var69001] = block.timestamp
                            if var69003 == -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(sub_3b1039c5[idx].field_0)
                            staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if var69003 + 1 >= mem[_691]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = var69003 + 1
                            require ext_code.size(sub_3b1039c5[idx].field_0)
                            staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, var69003 + 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _701 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            var69001 = mem[_701]
                            var69003 = var69003 + 1
                            var69007 = var69007
                            continue 
                        if block.timestamp < sub_cf11ff29[stor4[idx].field_0][var69001]:
                            revert with 0, 17
                        if block.timestamp - sub_cf11ff29[stor4[idx].field_0][var69001] and sub_3b1039c5[idx].field_256 > -1 / block.timestamp - sub_cf11ff29[stor4[idx].field_0][var69001]:
                            revert with 0, 17
                        if (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var69001] * sub_3b1039c5[idx].field_256) and rewardPerSecond > -1 / (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var69001] * sub_3b1039c5[idx].field_256):
                            revert with 0, 17
                        mem[mem[64] + 36] = (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var69001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var69001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var69007 > !((block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var69001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)):
                            revert with 0, 17
                        mem[0] = var69001
                        mem[32] = sha3(sub_3b1039c5[idx].field_0, 1)
                        sub_cf11ff29[stor4[idx].field_0][var69001] = block.timestamp
                        if var69003 == -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _712 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if var69003 + 1 >= mem[_712]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var69003 + 1
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, var69003 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        var69001 = mem[_720]
                        var69003 = var69003 + 1
                        var69007 = var69007 + (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var69001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
                        continue 
            else:
                if unknown_0x137ee36e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    idx = 0
                    while idx < sub_3b1039c5.length:
                        mem[0] = 4
                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.mem[var44003 len 4] with:
                                gas gas_remaining wei
                               args mem[var44003 + 4 len var44004 - 4]
                        mem[var44005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require var48002 - var48001 >= 32
                        if var52002 >= var52001:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var54001
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.mem[var56003 len 4] with:
                                gas gas_remaining wei
                               args mem[var56003 + 4 len var56004 - 4]
                        mem[var56005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require var60002 - var60001 >= 32
                        mem[0] = var64001
                        mem[32] = sha3(sub_3b1039c5[idx].field_0, 1)
                        if not sub_cf11ff29[stor4[idx].field_0][var64001]:
                            if var64003 == -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(sub_3b1039c5[idx].field_0)
                            staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _690 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if var64003 + 1 >= mem[_690]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = var64003 + 1
                            require ext_code.size(sub_3b1039c5[idx].field_0)
                            staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, var64003 + 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _700 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            var64001 = mem[_700]
                            var64003 = var64003 + 1
                            var64007 = var64007
                            continue 
                        if block.timestamp < sub_cf11ff29[stor4[idx].field_0][var64001]:
                            revert with 0, 17
                        if block.timestamp - sub_cf11ff29[stor4[idx].field_0][var64001] and sub_3b1039c5[idx].field_256 > -1 / block.timestamp - sub_cf11ff29[stor4[idx].field_0][var64001]:
                            revert with 0, 17
                        if (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var64001] * sub_3b1039c5[idx].field_256) and rewardPerSecond > -1 / (block.timestamp * sub_3b1039c5[idx].field_256) - (sub_cf11ff29[stor4[idx].field_0][var64001] * sub_3b1039c5[idx].field_256):
                            revert with 0, 17
                        if var64007 > !((block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var64001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)):
                            revert with 0, 17
                        if var64003 == -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _708 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if var64003 + 1 >= mem[_708]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = var64003 + 1
                        require ext_code.size(sub_3b1039c5[idx].field_0)
                        staticcall sub_3b1039c5[idx].field_0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, var64003 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        var64001 = mem[_716]
                        var64003 = var64003 + 1
                        var64007 = var64007 + (block.timestamp * sub_3b1039c5[idx].field_256 * rewardPerSecond) - (sub_cf11ff29[stor4[idx].field_0][var64001] * sub_3b1039c5[idx].field_256 * rewardPerSecond)
                        continue 
                    return 0
                if uint32(call.func_hash) >> 224 != unknown_0x22ba5f7b(?????):
                    if unknown_0x3b1039c5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        idx = 0
                        while idx < sub_3b1039c5.length:
                            mem[0] = 4
                            if sub_3b1039c5[idx].field_0 != address(cd[4]):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= sub_3b1039c5.length:
                                revert with 0, 50
                            return sub_3b1039c5[idx].field_256
                        revert with 0, 'Entry does not exist'
                    require unknown_0x66da5815(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    rewardPerSecond = cd[4]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    s = 0
                    while idx < sub_3b1039c5.length:
                        mem[0] = 4
                        if idx == -1:
                            revert with 0, 17
                        if sub_3b1039c5[idx].field_0 != address(cd[4]):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 1
                        continue 
                    if s:
                        revert with 0, 'Entry already exists'
                    sub_3b1039c5.length++
                    sub_3b1039c5[sub_3b1039c5.length].field_0 = address(cd[4])
                    stor8A35[stor4.length] = cd[36]
                    if sub_ab4ccf01 == -1:
                        revert with 0, 17
                    sub_ab4ccf01++
        else:
            if unknown_0xcf11ff29(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xcf11ff29(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    return sub_cf11ff29[address(cd[4])][cd[36]]
                if uint32(call.func_hash) >> 224 != unknown_0xf207a1b4(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf7c618c1(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardTokenAddress
                        require unknown_0xfad9884d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        idx = 0
                        s = 0
                        while idx < sub_3b1039c5.length:
                            mem[0] = 4
                            if idx == -1:
                                revert with 0, 17
                            if sub_3b1039c5[idx].field_0 != address(cd[4]):
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 1
                            continue 
                        return bool(s)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 0, 50
                        _199 = mem[(32 * idx) + 160]
                        s = 0
                        t = 0
                        while s < sub_3b1039c5.length:
                            mem[0] = 4
                            if s == -1:
                                revert with 0, 17
                            if sub_3b1039c5[s].field_0 != mem[(32 * idx) + 172 len 20]:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = 1
                            continue 
                        if not t:
                            _264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_264] = mem[(32 * idx) + 172 len 20]
                            mem[_264 + 32] = 1
                            sub_3b1039c5.length++
                            mem[0] = 4
                            sub_3b1039c5[sub_3b1039c5.length].field_0 = address(_199)
                            stor8A35[stor4.length] = 1
                            if sub_ab4ccf01 == -1:
                                revert with 0, 17
                            sub_ab4ccf01++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if unknown_0xab4ccf01(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_ab4ccf01
                if unknown_0xb30906d4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] < sub_3b1039c5.length
                    return sub_3b1039c5[cd[4]].field_0, sub_3b1039c5[cd[4]].field_256
                if uint32(call.func_hash) >> 224 != unknown_0xb66deb80(?????):
                    require unknown_0xc73be5ad(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    s = 0
                    while idx < sub_3b1039c5.length:
                        mem[0] = 4
                        if idx == -1:
                            revert with 0, 17
                        if sub_3b1039c5[idx].field_0 != address(cd[4]):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 1
                        continue 
                    if not s:
                        revert with 0, 'Entry does not exist'
                    idx = 0
                    while idx < sub_3b1039c5.length:
                        mem[0] = 4
                        if sub_3b1039c5[idx].field_0 == address(cd[4]):
                            if idx >= sub_3b1039c5.length:
                                revert with 0, 50
                            mem[0] = 4
                            sub_3b1039c5[idx].field_256 = cd[36]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    s = 0
                    while idx < sub_3b1039c5.length:
                        mem[0] = 4
                        if idx == -1:
                            revert with 0, 17
                        if sub_3b1039c5[idx].field_0 != address(cd[4]):
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 1
                        continue 
                    if not s:
                        revert with 0, 'Entry does not exist'
                    if sub_3b1039c5.length > test266151307():
                        revert with 0, 65
                    mem[128] = sub_3b1039c5.length
                    mem[64] = (32 * sub_3b1039c5.length) + 160
                    if not sub_3b1039c5.length:
                        idx = 0
                        while idx < sub_3b1039c5.length:
                            mem[0] = 4
                            _196 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_196] = sub_3b1039c5[idx].field_0
                            mem[_196 + 32] = sub_3b1039c5[idx].field_256
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _196
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[64] = (32 * sub_3b1039c5.length) + 224
                        mem[(32 * sub_3b1039c5.length) + 160] = 0
                        mem[(32 * sub_3b1039c5.length) + 192] = 0
                        mem[160] = (32 * sub_3b1039c5.length) + 160
                        s = 160
                        t = sub_3b1039c5.length
                        while t - 1:
                            mem[64] = mem[64] + 64
                            mem[(32 * sub_3b1039c5.length) + 160] = 0
                            mem[(32 * sub_3b1039c5.length) + 192] = 0
                            mem[s + 32] = (32 * sub_3b1039c5.length) + 160
                            s = s + 32
                            t = t - 1
                            continue 
                        idx = 0
                        while idx < sub_3b1039c5.length:
                            mem[0] = 4
                            _259 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_259] = sub_3b1039c5[idx].field_0
                            mem[_259 + 32] = sub_3b1039c5[idx].field_256
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _259
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    sub_3b1039c5.length = 0
                    mem[0] = 4
                    idx = 0
                    while 2 * sub_3b1039c5.length > idx:
                        sub_3b1039c5[idx].field_0 = 0
                        sub_3b1039c5[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    idx = 0
                    while idx < mem[128]:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if mem[mem[(32 * idx) + 160] + 12 len 20] != address(cd[4]):
                            if idx >= mem[128]:
                                revert with 0, 50
                            sub_3b1039c5.length++
                            mem[0] = 4
                            sub_3b1039c5[sub_3b1039c5.length].field_0 = mem[mem[(32 * idx) + 160] + 12 len 20]
                            sub_3b1039c5[sub_3b1039c5.length].field_256 = mem[mem[(32 * idx) + 160] + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not sub_ab4ccf01:
                        revert with 0, 17
                    sub_ab4ccf01--
}



}

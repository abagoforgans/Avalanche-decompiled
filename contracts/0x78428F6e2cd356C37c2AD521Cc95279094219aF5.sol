contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_62d6b3cf;
uint256 sub_1448d1a3;
address stor3;
address stor4;
uint256 totalPayout;
uint256 tokenSupply;
uint256 sub_dd2acd99;
uint256 sub_73b76874;
uint256 sub_caa1a7e2;
mapping of uint256 sub_0389c76e;

function sub_0389c76e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0389c76e[arg1]
}

function sub_1448d1a3(?) {
    return sub_1448d1a3
}

function totalPayout() {
    return totalPayout
}

function sub_62d6b3cf(?) {
    return sub_62d6b3cf
}

function sub_73b76874(?) {
    return sub_73b76874
}

function tokenSupply() {
    return tokenSupply
}

function owner() {
    return owner
}

function sub_caa1a7e2(?) {
    return sub_caa1a7e2
}

function sub_dd2acd99(?) {
    return sub_dd2acd99
}

function _fallback() payable {
    revert
}

function getBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setNFT(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function sub_6882175f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dd2acd99 = arg1
}

function sub_6da2e054(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_caa1a7e2 = arg1
}

function sub_7fbec71a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73b76874 = arg1
}

function setNFTAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function setTokenSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenSupply = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_a6a91d55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        if msg.value < sub_caa1a7e2:
            revert with 'NH{q', 17
        if msg.value - sub_caa1a7e2 / 100 and sub_62d6b3cf > -1 / msg.value - sub_caa1a7e2 / 100:
            revert with 'NH{q', 17
        if sub_1448d1a3 > (-1 * msg.value - sub_caa1a7e2 / 100 * sub_62d6b3cf) - 1:
            revert with 'NH{q', 17
        sub_1448d1a3 += msg.value - sub_caa1a7e2 / 100 * sub_62d6b3cf
    else:
        if arg1 == 2:
            if msg.value < sub_dd2acd99:
                revert with 'NH{q', 17
            if msg.value - sub_dd2acd99 / 100 and sub_62d6b3cf > -1 / msg.value - sub_dd2acd99 / 100:
                revert with 'NH{q', 17
            if sub_1448d1a3 > (-1 * msg.value - sub_dd2acd99 / 100 * sub_62d6b3cf) - 1:
                revert with 'NH{q', 17
            sub_1448d1a3 += msg.value - sub_dd2acd99 / 100 * sub_62d6b3cf
        else:
            if arg1 != 3:
                if msg.value / 100 and sub_62d6b3cf > -1 / msg.value / 100:
                    revert with 'NH{q', 17
                if sub_1448d1a3 > (-1 * msg.value / 100 * sub_62d6b3cf) - 1:
                    revert with 'NH{q', 17
                sub_1448d1a3 += msg.value / 100 * sub_62d6b3cf
            else:
                if msg.value < sub_73b76874:
                    revert with 'NH{q', 17
                if msg.value - sub_73b76874 / 100 and sub_62d6b3cf > -1 / msg.value - sub_73b76874 / 100:
                    revert with 'NH{q', 17
                if sub_1448d1a3 > (-1 * msg.value - sub_73b76874 / 100 * sub_62d6b3cf) - 1:
                    revert with 'NH{q', 17
                sub_1448d1a3 += msg.value - sub_73b76874 / 100 * sub_62d6b3cf
}

function sub_f7b86449(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _25 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor4)
        staticcall stor4.0x6352211e with:
                gas gas_remaining wei
               args _25
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == mem[_29 + 12 len 20]
        if mem[_29 + 12 len 20] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if not tokenSupply:
            revert with 'NH{q', 18
        mem[0] = _25
        mem[32] = 10
        if sub_1448d1a3 / tokenSupply < sub_0389c76e[_25]:
            revert with 'NH{q', 17
        if s > -(sub_1448d1a3 / tokenSupply) + sub_0389c76e[_25] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (sub_1448d1a3 / tokenSupply) - sub_0389c76e[_25]
        continue 
    return s
}

function sub_713c5c9d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _32 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor4)
        staticcall stor4.0x6352211e with:
                gas gas_remaining wei
               args _32
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_37] == mem[_37 + 12 len 20]
        if mem[_37 + 12 len 20] != msg.sender:
            revert with 0, 'Cannot claim share for a token that you don't own.'
        if not tokenSupply:
            revert with 'NH{q', 18
        if sub_1448d1a3 / tokenSupply < sub_0389c76e[_32]:
            revert with 'NH{q', 17
        if s > -(sub_1448d1a3 / tokenSupply) + sub_0389c76e[_32] - 1:
            revert with 'NH{q', 17
        if sub_0389c76e[_32] > -(sub_1448d1a3 / tokenSupply) + sub_0389c76e[_32] - 1:
            revert with 'NH{q', 17
        mem[0] = _32
        mem[32] = 10
        sub_0389c76e[_32] = sub_1448d1a3 / tokenSupply
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (sub_1448d1a3 / tokenSupply) - sub_0389c76e[_32]
        continue 
    if totalPayout > (-1 * s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length) - 1:
        revert with 'NH{q', 17
    totalPayout += s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    call msg.sender with:
       value s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_8dc040e8;
uint8 sub_3ac7249a;
uint256 sub_d6528900;
mapping of address sub_75fc623a;
mapping of uint256 balanceOf;
mapping of struct sub_d440b138;
mapping of struct sub_ddc73fcb;
mapping of uint256 pendingWithdrawals;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_3ac7249a(?) {
    return bool(sub_3ac7249a)
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_75fc623a(?) {
    return sub_75fc623a[arg1]
}

function sub_8dc040e8(?) {
    return sub_8dc040e8
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function sub_d440b138(?) {
    return bool(sub_d440b138[arg1].field_0), 
           sub_d440b138[arg1].field_256,
           sub_d440b138[arg1].field_512,
           sub_d440b138[arg1].field_768,
           sub_d440b138[arg1].field_1024
}

function sub_d6528900(?) {
    return sub_d6528900
}

function sub_ddc73fcb(?) {
    return bool(sub_ddc73fcb[arg1].field_0), 
           sub_ddc73fcb[arg1].field_256,
           sub_ddc73fcb[arg1].field_512,
           sub_ddc73fcb[arg1].field_768
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function withdraw() {
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_998ee00e(?) {
    require not sub_3ac7249a
    require sub_d6528900
    require sub_d6528900 > 411
    require sub_d6528900 <= 511
    sub_75fc623a[stor5 - stor8] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Assign((totalSupply - sub_d6528900), msg.sender);
    sub_d6528900--
}

function sub_074b5b73(?) {
    require sub_75fc623a[arg1] == msg.sender
    require arg1 < 511
    sub_d440b138[arg1].field_0 = 1
    sub_d440b138[arg1].field_256 = arg1
    sub_d440b138[arg1].field_512 = msg.sender
    sub_d440b138[arg1].field_768 = arg2
    sub_d440b138[arg1].field_1024 = arg3
    emit 0x3367de91: arg2, arg1, arg3
}

function sub_cf35ea47(?) {
    require sub_75fc623a[arg1] == msg.sender
    require arg1 < 511
    sub_d440b138[arg1].field_0 = 0
    sub_d440b138[arg1].field_256 = arg1
    sub_d440b138[arg1].field_512 = msg.sender
    sub_d440b138[arg1].field_768 = 0
    sub_d440b138[arg1].field_1024 = 0
    sub_d440b138[arg1].field_1280 = 0
    emit 0x1bb4dd7b: arg1
}

function sub_77183678(?) {
    require sub_75fc623a[arg1] == msg.sender
    require arg1 < 511
    sub_d440b138[arg1].field_0 = 1
    sub_d440b138[arg1].field_256 = arg1
    sub_d440b138[arg1].field_512 = msg.sender
    sub_d440b138[arg1].field_768 = arg2
    sub_d440b138[arg1].field_1024 = 0
    sub_d440b138[arg1].field_1280 = 0
    emit 0x3367de91: arg2, arg1, 0
}

function sub_a882267a(?) payable {
    require arg1 < 511
    require sub_75fc623a[arg1]
    require sub_75fc623a[arg1] != msg.sender
    require msg.value
    require msg.value > sub_ddc73fcb[arg1].field_768
    if sub_ddc73fcb[arg1].field_768 > 0:
        pendingWithdrawals[stor12[arg1].field_512] += sub_ddc73fcb[arg1].field_768
    sub_ddc73fcb[arg1].field_0 = 1
    sub_ddc73fcb[arg1].field_256 = arg1
    sub_ddc73fcb[arg1].field_512 = msg.sender
    sub_ddc73fcb[arg1].field_768 = msg.value
    emit 0x3704af87: msg.value, arg1, msg.sender
}

function sub_3a0208ab(?) payable {
    stor0 = msg.sender
    totalSupply = 511
    sub_d6528900 = totalSupply
    bool(name.length) = 0
    name.length.field_1 = 11
    name.length.field_8 = 'CRYPTORUNES' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 1
    symbol.length.field_8 = 'R' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 0
}

function sub_ad4859ab(?) {
    require arg1 < 511
    require sub_75fc623a[arg1]
    require sub_75fc623a[arg1] != msg.sender
    require sub_ddc73fcb[arg1].field_512 == msg.sender
    emit 0x59b2be5a: sub_ddc73fcb[arg1].field_768, arg1, msg.sender
    sub_ddc73fcb[arg1].field_0 = 0
    sub_ddc73fcb[arg1].field_256 = arg1
    sub_ddc73fcb[arg1].field_512 = 0
    sub_ddc73fcb[arg1].field_768 = 0
    sub_ddc73fcb[arg1].field_768 = 0
    call msg.sender with:
       value sub_ddc73fcb[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_28419b66(?) {
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = code.data[11566 len 32 * balanceOf[address(msg.sender)]]
    idx = 0
    s = 0
    while idx < 511:
        mem[0] = idx
        mem[32] = 9
        if sub_75fc623a[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(msg.sender)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(msg.sender)]) + 192 len floor32(balanceOf[address(msg.sender)])] = mem[128 len floor32(balanceOf[address(msg.sender)])]
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len floor32(balanceOf[address(msg.sender)])], mem[(32 * balanceOf[address(msg.sender)]) + floor32(balanceOf[address(msg.sender)]) + 192 len (32 * balanceOf[address(msg.sender)]) - floor32(balanceOf[address(msg.sender)])]), 
}

function sub_cecf29b4(?) {
    require arg1 < 511
    require sub_75fc623a[arg1] == msg.sender
    require sub_ddc73fcb[arg1].field_768
    require sub_ddc73fcb[arg1].field_768 >= arg2
    sub_75fc623a[arg1] = sub_ddc73fcb[arg1].field_512
    balanceOf[address(msg.sender)]--
    balanceOf[stor12[arg1].field_512]++
    emit Transfer(1, msg.sender, sub_ddc73fcb[arg1].field_512);
    sub_d440b138[arg1].field_0 = 0
    sub_d440b138[arg1].field_256 = arg1
    sub_d440b138[arg1].field_512 = sub_ddc73fcb[arg1].field_512
    sub_d440b138[arg1].field_768 = 0
    sub_d440b138[arg1].field_1024 = 0
    sub_d440b138[arg1].field_1280 = 0
    sub_ddc73fcb[arg1].field_0 = 0
    sub_ddc73fcb[arg1].field_256 = arg1
    sub_ddc73fcb[arg1].field_512 = 0
    sub_ddc73fcb[arg1].field_768 = 0
    sub_ddc73fcb[arg1].field_768 = 0
    pendingWithdrawals[address(msg.sender)] += sub_ddc73fcb[arg1].field_768
    emit 0xe6f55821: sub_ddc73fcb[arg1].field_768, arg1, msg.sender, sub_ddc73fcb[arg1].field_512
}

function transferRune(address arg1, uint256 arg2) {
    require sub_75fc623a[arg2] == msg.sender
    require arg2 < 511
    if sub_d440b138[arg2].field_0:
        require sub_75fc623a[arg2] == msg.sender
        require arg2 < 511
        sub_d440b138[arg2].field_0 = 0
        sub_d440b138[arg2].field_256 = arg2
        sub_d440b138[arg2].field_512 = msg.sender
        sub_d440b138[arg2].field_768 = 0
        sub_d440b138[arg2].field_1024 = 0
        sub_d440b138[arg2].field_1280 = 0
        emit 0x1bb4dd7b: arg2
    sub_75fc623a[arg2] = arg1
    balanceOf[address(msg.sender)]--
    balanceOf[address(arg1)]++
    emit Transfer(1, msg.sender, arg1);
    emit 0x4fc3d48a: arg2, msg.sender, arg1
    if sub_ddc73fcb[arg2].field_512 == arg1:
        pendingWithdrawals[address(arg1)] += sub_ddc73fcb[arg2].field_768
        sub_ddc73fcb[arg2].field_0 = 0
        sub_ddc73fcb[arg2].field_256 = arg2
        sub_ddc73fcb[arg2].field_512 = 0
        sub_ddc73fcb[arg2].field_768 = 0
        sub_ddc73fcb[arg2].field_768 = 0
}

function sub_a234fcf2(?) payable {
    require arg1 < 511
    require sub_d440b138[arg1].field_0
    if sub_d440b138[arg1].field_1024:
        require sub_d440b138[arg1].field_1024 == msg.sender
    require msg.value >= sub_d440b138[arg1].field_768
    require sub_d440b138[arg1].field_512 == sub_75fc623a[arg1]
    sub_75fc623a[arg1] = msg.sender
    balanceOf[stor11[arg1].field_512]--
    balanceOf[address(msg.sender)]++
    emit Transfer(1, sub_d440b138[arg1].field_512, msg.sender);
    require sub_75fc623a[arg1] == msg.sender
    require arg1 < 511
    sub_d440b138[arg1].field_0 = 0
    sub_d440b138[arg1].field_256 = arg1
    sub_d440b138[arg1].field_512 = msg.sender
    sub_d440b138[arg1].field_768 = 0
    sub_d440b138[arg1].field_1024 = 0
    sub_d440b138[arg1].field_1280 = 0
    emit 0x1bb4dd7b: arg1
    pendingWithdrawals[stor11[arg1].field_512] += msg.value
    emit 0xe6f55821: msg.value, arg1, sub_d440b138[arg1].field_512, msg.sender
    if sub_ddc73fcb[arg1].field_512 == msg.sender:
        pendingWithdrawals[address(msg.sender)] += sub_ddc73fcb[arg1].field_768
        sub_ddc73fcb[arg1].field_0 = 0
        sub_ddc73fcb[arg1].field_256 = arg1
        sub_ddc73fcb[arg1].field_512 = 0
        sub_ddc73fcb[arg1].field_768 = 0
        sub_ddc73fcb[arg1].field_768 = 0
}

function sub_bdf07b18(?) payable {
    require not sub_3ac7249a
    require sub_d6528900
    if sub_d6528900 <= 0:
        require sub_d6528900 >= 11
        if sub_d6528900 < 111:
            require msg.value == 6 * 10^18
        else:
            if sub_d6528900 < 211:
                require msg.value == 3 * 10^18
            else:
                if sub_d6528900 < 311:
                    require msg.value == 15 * 10^17
                else:
                    require sub_d6528900 <= 411
                    require msg.value == 75 * 10^16
    else:
        if sub_d6528900 < 11:
            require msg.value == 12 * 10^18
        else:
            if sub_d6528900 < 111:
                require msg.value == 6 * 10^18
            else:
                if sub_d6528900 < 211:
                    require msg.value == 3 * 10^18
                else:
                    if sub_d6528900 < 311:
                        require msg.value == 15 * 10^17
                    else:
                        require sub_d6528900 <= 411
                        require msg.value == 75 * 10^16
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_75fc623a[stor5 - stor8] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Assign((totalSupply - sub_d6528900), msg.sender);
    sub_d6528900--
}



}

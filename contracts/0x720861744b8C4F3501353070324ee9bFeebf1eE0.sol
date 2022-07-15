contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
address t1Address;
address t2Address;
array of address sub_09263db9;
uint256 sub_dd72d99c;
uint256 maxPlayers;
address treasuryAddress;
uint256 sub_e97280b4;
array of address sub_9559e1e3;
array of address sub_e4b70e5a;
uint256 stor12;
uint256 sub_2062a07f;
uint256 sub_6c3a28e1;
uint8 open;
mapping of uint256 balanceOf;
mapping of uint256 sub_3eaa2160;
mapping of uint256 sub_e12c4d51;
array of uint256 info;
mapping of uint256 sub_75963ed8;
mapping of uint256 sub_18f71eea;
mapping of uint8 stor22;

function name() {
    return name[0 len name.length]
}

function sub_09263db9(?) {
    require arg1 < sub_09263db9.length
    return sub_09263db9[arg1]
}

function info(address arg1) {
    return info[arg1][0 len info[arg1].length]
}

function sub_18f71eea(?) {
    return sub_18f71eea[arg1]
}

function sub_2062a07f(?) {
    return sub_2062a07f
}

function sub_3eaa2160(?) {
    return sub_3eaa2160[arg1]
}

function maxPlayers() {
    return maxPlayers
}

function treasury() {
    return treasuryAddress
}

function sub_6c3a28e1(?) {
    return sub_6c3a28e1
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_75963ed8(?) {
    return sub_75963ed8[arg1]
}

function owner() {
    return owner
}

function sub_9559e1e3(?) {
    require arg1 < sub_9559e1e3.length
    return sub_9559e1e3[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96210c51(?) {
    return bool(stor22[arg1])
}

function t2() {
    return t2Address
}

function sub_dd72d99c(?) {
    return sub_dd72d99c
}

function sub_e12c4d51(?) {
    return sub_e12c4d51[arg1]
}

function sub_e4b70e5a(?) {
    require arg1 < sub_e4b70e5a.length
    return sub_e4b70e5a[arg1]
}

function sub_e97280b4(?) {
    return sub_e97280b4
}

function t1() {
    return t1Address
}

function open() {
    return bool(open)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_76c42bb1(?) {
    require msg.sender == owner
    t2Address = arg1
    return 1
}

function sub_e4c1c30a(?) {
    require msg.sender == owner
    t1Address = arg1
    return 1
}

function sub_60653c44(?) {
    require msg.sender == owner
    maxPlayers = arg1
    return 1
}

function sub_9e5de98d(?) {
    require msg.sender == owner
    open = uint8(arg1)
    return 1
}

function changeTreasury(address arg1) {
    require msg.sender == owner
    treasuryAddress = arg1
    return 1
}

function changePeriod(uint256 arg1) {
    require msg.sender == owner
    sub_2062a07f = 3600 * arg1
    return 1
}

function sub_48d83d2a(?) {
    require msg.sender == owner
    info[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function sub_f97d9fc1(?) {
    require msg.sender == owner
    sub_e4b70e5a.length++
    sub_e4b70e5a[sub_e4b70e5a.length] = arg1
    stor12++
    return 1
}

function register(address arg1, string arg2) {
    require msg.sender == owner
    require not balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 1
    info[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    sub_9559e1e3.length++
    sub_9559e1e3[sub_9559e1e3.length] = arg1
    sub_e97280b4++
    emit PlayerAdded(block.timestamp, arg1);
    return 1
}

function sub_75fed8d4(?) {
    require msg.sender == owner
    require sub_e4b70e5a.length > 0
    idx = 0
    while idx < sub_e4b70e5a.length:
        mem[0] = 11
        if sub_e4b70e5a[idx] == arg1:
            require sub_e4b70e5a.length - 1 < sub_e4b70e5a.length
            require idx < sub_e4b70e5a.length
            sub_e4b70e5a[idx] = sub_e4b70e5a[sub_e4b70e5a.length]
            require sub_e4b70e5a.length - 1 < sub_e4b70e5a.length
            mem[0] = 11
            sub_e4b70e5a[sub_e4b70e5a.length] = 0
            sub_e4b70e5a.length--
            if sub_e4b70e5a.length > sub_e4b70e5a.length - 1:
                mem[0] = 11
                s = sha3(11) + sub_e4b70e5a.length - 1
                while sha3(11) + sub_e4b70e5a.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    stor12--
    return 1
}

function sub_e8667982(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_9559e1e3.length:
        sub_3eaa2160[stor10[idx]] = 0
        mem[0] = sub_9559e1e3[idx]
        mem[32] = 18
        sub_e12c4d51[stor10[idx]] = 0
        idx = idx + 1
        continue 
    sub_3eaa2160[stor8] = 0
    sub_e12c4d51[stor8] = 0
    require ext_code.size(t1Address)
    call t1Address.0x70a08231 with:
         gas gas_remaining wei
        args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(t2Address)
    call t2Address.0x70a08231 with:
         gas gas_remaining wei
        args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5f84a1de: block.timestamp, ext_call.return_data[0], ext_call.return_data[0]
    return 1
}

function remove(address arg1) {
    require msg.sender == owner
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    require sub_9559e1e3.length > 0
    idx = 0
    while idx < sub_9559e1e3.length:
        mem[0] = 10
        if sub_9559e1e3[idx] == arg1:
            require sub_9559e1e3.length - 1 < sub_9559e1e3.length
            require idx < sub_9559e1e3.length
            sub_9559e1e3[idx] = sub_9559e1e3[sub_9559e1e3.length]
            require sub_9559e1e3.length - 1 < sub_9559e1e3.length
            mem[0] = 10
            sub_9559e1e3[sub_9559e1e3.length] = 0
            sub_9559e1e3.length--
            if sub_9559e1e3.length > sub_9559e1e3.length - 1:
                mem[0] = 10
                s = sha3(10) + sub_9559e1e3.length - 1
                while sha3(10) + sub_9559e1e3.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    sub_e97280b4--
    emit 0x9196f2b6: block.timestamp, arg1
    return 1
}

function sub_c79b3276(?) {
    require msg.sender == owner
    require ext_code.size(t1Address)
    call t1Address.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    u = 0
    u = 0
    while idx < stor12:
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_e4b70e5a.length
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require ext_call.return_data[0] >= 0
        require idx < sub_e4b70e5a.length
        if ext_call.return_data[0] > sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]):
            require ext_code.size(t1Address)
            call t1Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e4b70e5a[idx], treasuryAddress, ext_call.return_data[0] - (sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        mem[0] = 11
        mem[ceil32(arg1.length) + 132] = sub_e4b70e5a[idx]
        mem[ceil32(arg1.length) + 164] = treasuryAddress
        mem[ceil32(arg1.length) + 196] = ext_call.return_data[0]
        require ext_code.size(t2Address)
        call t2Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx], treasuryAddress, ext_call.return_data[0]
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        u = ext_call.return_data[0]
        u = ext_call.return_data[0]
        continue 
    sub_3eaa2160[address(msg.sender)] += t
    sub_e12c4d51[address(msg.sender)] += s
    emit 0xf517dafb: block.timestamp, t, s, msg.sender
    emit 0xd15220ec: block.timestamp, Array(len=arg1.length, data=arg1[all])
    return 1
}

function sub_f811548b(?) {
    require msg.sender == owner
    require balanceOf[address(arg1)] > 0
    require stor22[address(arg1)]
    require ext_code.size(t1Address)
    call t1Address.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    u = 0
    u = 0
    while idx < stor12:
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_e4b70e5a.length
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require ext_call.return_data[0] >= 0
        require idx < sub_e4b70e5a.length
        if ext_call.return_data[0] > sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]):
            require ext_code.size(t1Address)
            call t1Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e4b70e5a[idx], treasuryAddress, ext_call.return_data[0] - (sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        mem[0] = 11
        mem[100] = sub_e4b70e5a[idx]
        mem[132] = treasuryAddress
        mem[164] = ext_call.return_data[0]
        require ext_code.size(t2Address)
        call t2Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx], treasuryAddress, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        u = ext_call.return_data[0]
        u = ext_call.return_data[0]
        continue 
    sub_3eaa2160[address(arg1)] += t
    sub_e12c4d51[address(arg1)] += s
    emit 0xf517dafb: block.timestamp, t, s, arg1
    require sub_09263db9.length > 0
    idx = 0
    while idx < sub_09263db9.length:
        mem[0] = 5
        if sub_09263db9[idx] == arg1:
            require sub_09263db9.length - 1 < sub_09263db9.length
            require idx < sub_09263db9.length
            sub_09263db9[idx] = sub_09263db9[sub_09263db9.length]
            require sub_09263db9.length - 1 < sub_09263db9.length
            mem[0] = 5
            sub_09263db9[sub_09263db9.length] = 0
            sub_09263db9.length--
            if sub_09263db9.length > sub_09263db9.length - 1:
                mem[0] = 5
                s = sha3(5) + sub_09263db9.length - 1
                while sha3(5) + sub_09263db9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    sub_dd72d99c--
    sub_18f71eea[address(arg1)] = block.timestamp
    stor22[address(arg1)] = 0
    emit 0xd864d185: block.timestamp, arg1
    return 1
}

function checkOut() {
    require open
    require balanceOf[address(msg.sender)] > 0
    require stor22[address(msg.sender)]
    require block.timestamp > sub_75963ed8[address(msg.sender)] + sub_2062a07f
    require ext_code.size(t1Address)
    call t1Address.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    t = 0
    u = 0
    u = 0
    while idx < stor12:
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_e4b70e5a.length
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require ext_call.return_data[0] >= 0
        require idx < sub_e4b70e5a.length
        if ext_call.return_data[0] > sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]):
            require ext_code.size(t1Address)
            call t1Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e4b70e5a[idx], treasuryAddress, ext_call.return_data[0] - (sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        mem[0] = 11
        mem[100] = sub_e4b70e5a[idx]
        mem[132] = treasuryAddress
        mem[164] = ext_call.return_data[0]
        require ext_code.size(t2Address)
        call t2Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx], treasuryAddress, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        u = ext_call.return_data[0]
        u = ext_call.return_data[0]
        continue 
    sub_3eaa2160[address(msg.sender)] += t
    sub_e12c4d51[address(msg.sender)] += s
    emit 0xf517dafb: block.timestamp, t, s, msg.sender
    require sub_09263db9.length > 0
    idx = 0
    while idx < sub_09263db9.length:
        mem[0] = 5
        if sub_09263db9[idx] == msg.sender:
            require sub_09263db9.length - 1 < sub_09263db9.length
            require idx < sub_09263db9.length
            sub_09263db9[idx] = sub_09263db9[sub_09263db9.length]
            require sub_09263db9.length - 1 < sub_09263db9.length
            mem[0] = 5
            sub_09263db9[sub_09263db9.length] = 0
            sub_09263db9.length--
            if sub_09263db9.length > sub_09263db9.length - 1:
                mem[0] = 5
                s = sha3(5) + sub_09263db9.length - 1
                while sha3(5) + sub_09263db9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    sub_dd72d99c--
    sub_18f71eea[address(msg.sender)] = block.timestamp
    stor22[address(msg.sender)] = 0
    emit 0xd864d185: block.timestamp, msg.sender
    return 1
}

function sub_31a189a7(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require open
    require balanceOf[address(arg1)] > 0
    require sub_dd72d99c < maxPlayers
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor12:
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_e4b70e5a.length
        mem[0] = 11
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if ext_call.return_data[0] <= 0:
                require idx < sub_e4b70e5a.length
                require ext_code.size(t1Address)
                call t1Address.0x70a08231 with:
                     gas gas_remaining wei
                    args sub_e4b70e5a[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(t1Address)
                call t1Address.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]) >= ext_call.return_data[0]
                require idx < sub_e4b70e5a.length
                mem[0] = 11
                mem[mem[64] + 4] = sub_e4b70e5a[idx]
                require ext_code.size(t2Address)
                call t2Address.0x70a08231 with:
                     gas gas_remaining wei
                    args sub_e4b70e5a[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
        require ext_code.size(t1Address)
        call t1Address.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        u = 0
        v = 0
        w = 0
        x = 0
        x = 0
        while u < stor12:
            require u < sub_e4b70e5a.length
            require ext_code.size(t1Address)
            call t1Address.0x70a08231 with:
                 gas gas_remaining wei
                args sub_e4b70e5a[u]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < sub_e4b70e5a.length
            require ext_code.size(t2Address)
            call t2Address.0x70a08231 with:
                 gas gas_remaining wei
                args sub_e4b70e5a[u]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
            require ext_call.return_data[0] >= 0
            require u < sub_e4b70e5a.length
            if ext_call.return_data[0] > sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]):
                require ext_code.size(t1Address)
                call t1Address.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_e4b70e5a[u], treasuryAddress, ext_call.return_data[0] - (sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            mem[0] = 11
            mem[mem[64] + 4] = sub_e4b70e5a[u]
            mem[mem[64] + 36] = treasuryAddress
            mem[mem[64] + 68] = ext_call.return_data[0]
            require ext_code.size(t2Address)
            call t2Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e4b70e5a[u], treasuryAddress, ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            u = u + 1
            v = v + ext_call.return_data[0]
            w = w + ext_call.return_data[0]
            x = ext_call.return_data[0]
            x = ext_call.return_data[0]
            continue 
        sub_3eaa2160[address(arg1)] += w
        mem[32] = 18
        sub_e12c4d51[address(arg1)] += v
        mem[mem[64] + 32] = w
        mem[mem[64] + 64] = v
        emit 0xf517dafb: block.timestamp, w, v, arg1
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(t1Address)
        call t1Address.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]) >= ext_call.return_data[0]
        require idx < sub_e4b70e5a.length
        mem[0] = 11
        mem[mem[64] + 4] = sub_e4b70e5a[idx]
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        continue 
    sub_09263db9.length++
    sub_09263db9[sub_09263db9.length] = arg1
    stor22[address(arg1)] = 1
    sub_dd72d99c++
    sub_75963ed8[address(arg1)] = block.timestamp
    emit 0xf22aa3f4: block.timestamp, t, s, arg1
    return 1
}

function checkIn() payable {
    mem[64] = 96
    require not msg.value
    require open
    require balanceOf[address(msg.sender)] > 0
    require sub_dd72d99c < maxPlayers
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor12:
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_e4b70e5a.length
        mem[0] = 11
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            if ext_call.return_data[0] <= 0:
                require idx < sub_e4b70e5a.length
                require ext_code.size(t1Address)
                call t1Address.0x70a08231 with:
                     gas gas_remaining wei
                    args sub_e4b70e5a[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(t1Address)
                call t1Address.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]) >= ext_call.return_data[0]
                require idx < sub_e4b70e5a.length
                mem[0] = 11
                mem[mem[64] + 4] = sub_e4b70e5a[idx]
                require ext_code.size(t2Address)
                call t2Address.0x70a08231 with:
                     gas gas_remaining wei
                    args sub_e4b70e5a[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
        require ext_code.size(t1Address)
        call t1Address.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        u = 0
        v = 0
        w = 0
        x = 0
        x = 0
        while u < stor12:
            require u < sub_e4b70e5a.length
            require ext_code.size(t1Address)
            call t1Address.0x70a08231 with:
                 gas gas_remaining wei
                args sub_e4b70e5a[u]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < sub_e4b70e5a.length
            require ext_code.size(t2Address)
            call t2Address.0x70a08231 with:
                 gas gas_remaining wei
                args sub_e4b70e5a[u]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
            require ext_call.return_data[0] >= 0
            require u < sub_e4b70e5a.length
            if ext_call.return_data[0] > sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]):
                require ext_code.size(t1Address)
                call t1Address.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_e4b70e5a[u], treasuryAddress, ext_call.return_data[0] - (sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            mem[0] = 11
            mem[mem[64] + 4] = sub_e4b70e5a[u]
            mem[mem[64] + 36] = treasuryAddress
            mem[mem[64] + 68] = ext_call.return_data[0]
            require ext_code.size(t2Address)
            call t2Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e4b70e5a[u], treasuryAddress, ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            u = u + 1
            v = v + ext_call.return_data[0]
            w = w + ext_call.return_data[0]
            x = ext_call.return_data[0]
            x = ext_call.return_data[0]
            continue 
        sub_3eaa2160[address(msg.sender)] += w
        mem[32] = 18
        sub_e12c4d51[address(msg.sender)] += v
        mem[mem[64] + 32] = w
        mem[mem[64] + 64] = v
        emit 0xf517dafb: block.timestamp, w, v, msg.sender
        require idx < sub_e4b70e5a.length
        require ext_code.size(t1Address)
        call t1Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(t1Address)
        call t1Address.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_6c3a28e1 * 10^uint8(ext_call.return_data[0]) >= ext_call.return_data[0]
        require idx < sub_e4b70e5a.length
        mem[0] = 11
        mem[mem[64] + 4] = sub_e4b70e5a[idx]
        require ext_code.size(t2Address)
        call t2Address.0x70a08231 with:
             gas gas_remaining wei
            args sub_e4b70e5a[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        continue 
    sub_09263db9.length++
    sub_09263db9[sub_09263db9.length] = msg.sender
    stor22[address(msg.sender)] = 1
    sub_dd72d99c++
    sub_75963ed8[address(msg.sender)] = block.timestamp
    emit 0xf22aa3f4: block.timestamp, t, s, msg.sender
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


const sub_388655fb(?) = eth.balance(this.address)

const getContractBalance = eth.balance(this.address)


mapping of uint256 sub_2688325a;
mapping of uint256 sub_9675715c;
array of uint8 stor2;
uint256 INVEST_MIN_AMOUNT;
uint256 CEO_FEE;
uint256 sub_a25f7e22;
uint256 startDate;
uint256 startBlock;
address ceoWalletAddress;

function startDate() {
    return startDate
}

function getMinDeposit() {
    return INVEST_MIN_AMOUNT
}

function sub_2688325a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(sub_2688325a[arg1])
}

function ceoWallet() {
    return ceoWalletAddress
}

function startBlock() {
    return startBlock
}

function sub_9675715c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9675715c[arg1]
}

function sub_a25f7e22(?) {
    return sub_a25f7e22
}

function sub_b9bf629f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor2.length
    return sub_b9bf629f[uint8(arg1)]
}

function INVEST_MIN_AMOUNT() {
    return INVEST_MIN_AMOUNT
}

function CEO_FEE() {
    return CEO_FEE
}

function _fallback() payable {
    revert
}

function sub_f119be42(?) {
    idx = 0
    while idx < 20:
        mem[0] = idx
        mem[32] = 0
        uint256(sub_2688325a[idx]) = 0
        idx = idx + 1
        continue 
}

function randMod(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    return (sha3(block.timestamp, this.address, block.number) % arg1)
}

function setMinDeposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    INVEST_MIN_AMOUNT = arg1
}

function sub_26775b00(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if arg1 <= 100:
        revert with 0, 'Max 100 only'
    CEO_FEE = arg1
}

function sub_544b4c74(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if arg1 <= 100:
        revert with 0, 'Max 100 only'
    sub_a25f7e22 = arg1
}

function sub_1a6a2148(?) {
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d9883952(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fbdd60e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_28749814(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_90bf53da(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3 * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bf7f2c7d(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor2.length:
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = address(this.address)
        mem[mem[64] + 84] = block.number
        _10 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        _12 = sha3(mem[_10 + 32 len mem[_10]])
        require stor2.length
        require sha3(mem[_10 + 32 len mem[_10]]) % stor2.length < stor2.length
        require idx < stor2.length
        require sha3(mem[_10 + 32 len mem[_10]]) % stor2.length < stor2.length
        uint256(stor2[0.03125 / sha3(mem[_10 + 32 len mem[_10]]) % stor2.length].field_0) = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)] * 256^(sha3(mem[_10 + 32 len mem[_10]]) % stor2.length % 32) or !(255 * 256^(sha3(mem[_10 + 32 len mem[_10]]) % stor2.length % 32)) and uint256(stor2[0.03125 / sha3(mem[_10 + 32 len mem[_10]]) % stor2.length].field_0)
        require idx < stor2.length
        mem[0] = 2
        uint256(stor2[0.03125 / idx].field_0) = stor('array', ('div', 0.03125, ('mod', ('var', '_12'), ('stor', 256, 0, ('length', ('name', 'stor2', 2))))), ('name', 'stor2', 2))[uint8(_12 % stor2.length)] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor2[0.03125 / idx].field_0)
        idx = idx + 1
        continue 
}

function sub_20d8649e(?) {
    require 0 < stor2.length
    mem[0] = 2
    idx = 0
    s = stor[sha3(mem[0])]
    t = uint8(stor2.field_0)
    u = uint8(stor2.field_0)
    while idx < 9:
        require idx < stor2.length
        require idx < stor2.length
        require idx < stor2.length
        mem[0] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
        mem[32] = 0
        if uint256(sub_2688325a[u]) > uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
            if uint256(sub_2688325a[s]) < uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    continue 
                require idx < stor2.length
                mem[0] = 2
                idx = idx + 1
                s = s
                t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                u = u
                continue 
            if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                idx = idx + 1
                s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                t = t
                u = u
                continue 
            require idx < stor2.length
            mem[0] = 2
            idx = idx + 1
            s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
            t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
            u = u
            continue 
        if uint256(sub_2688325a[s]) < uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
            if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                idx = idx + 1
                s = s
                t = t
                u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                continue 
            require idx < stor2.length
            mem[0] = 2
            idx = idx + 1
            s = s
            t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
            u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
            continue 
        if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
            idx = idx + 1
            s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
            t = t
            u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
            continue 
        require idx < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
        t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
        u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
        continue 
    if not uint256(sub_2688325a[u]):
        if 0 > eth.balance(this.address):
            return t, t, s
    else:
        require uint256(sub_2688325a[u])
        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 8 * uint256(sub_2688325a[u]) > eth.balance(this.address):
            return t, t, s
    return u, t, s
}

function sub_7cb22c96(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if block.timestamp <= startDate:
        revert with 0, 'contract does not launch yet'
    if msg.value < INVEST_MIN_AMOUNT:
        revert with 0, 'error min'
    if tx.origin != msg.sender:
        sub_9675715c[address(msg.sender)] = 0
        emit 0xd55f8fab: msg.sender, msg.value
        call ceoWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_code.size(msg.sender) > 0:
            sub_9675715c[address(msg.sender)] = 0
            emit 0xfee79f86: msg.sender, msg.value
            call ceoWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if ('cd', 4).length != ('cd', 36).length:
                sub_9675715c[address(msg.sender)] = 0
                emit 0x28da2439: msg.sender, msg.value
                call ceoWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                while idx < 20:
                    mem[0] = idx
                    mem[32] = 0
                    uint256(sub_2688325a[idx]) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < stor2.length:
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(this.address)
                    mem[mem[64] + 84] = block.number
                    _158 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    _160 = sha3(mem[_158 + 32 len mem[_158]])
                    require stor2.length
                    require sha3(mem[_158 + 32 len mem[_158]]) % stor2.length < stor2.length
                    require idx < stor2.length
                    require sha3(mem[_158 + 32 len mem[_158]]) % stor2.length < stor2.length
                    uint256(stor2[0.03125 / sha3(mem[_158 + 32 len mem[_158]]) % stor2.length].field_0) = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)] * 256^(sha3(mem[_158 + 32 len mem[_158]]) % stor2.length % 32) or !(255 * 256^(sha3(mem[_158 + 32 len mem[_158]]) % stor2.length % 32)) and uint256(stor2[0.03125 / sha3(mem[_158 + 32 len mem[_158]]) % stor2.length].field_0)
                    require idx < stor2.length
                    mem[0] = 2
                    uint256(stor2[0.03125 / idx].field_0) = stor('array', ('div', 0.03125, ('mod', ('var', '_160'), ('stor', 256, 0, ('length', ('name', 'stor2', 2))))), ('name', 'stor2', 2))[uint8(_160 % stor2.length)] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor2[0.03125 / idx].field_0)
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                while uint8(idx) < mem[(32 * ('cd', 4).length) + 128]:
                    require uint8(idx) < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 160] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < mem[(32 * ('cd', 4).length) + 128]
                    if s + mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 160] < s:
                        revert with 0, 'SafeMath: addition overflow'
                    require uint8(idx) < mem[(32 * ('cd', 4).length) + 128]
                    require uint8(idx) < mem[96]
                    mem[0] = mem[(32 * uint8(idx)) + 128]
                    mem[32] = 0
                    uint256(sub_2688325a[mem[(32 * uint8(idx)) + 128]]) = mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 160]
                    idx = idx + 1
                    s = s + mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 160]
                    continue 
                require 0 < stor2.length
                mem[0] = 2
                idx = 0
                t = stor[sha3(mem[0])]
                u = uint8(stor2.field_0)
                v = uint8(stor2.field_0)
                while idx < 9:
                    require idx < stor2.length
                    require idx < stor2.length
                    require idx < stor2.length
                    mem[0] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                    mem[32] = 0
                    if uint256(sub_2688325a[v]) > uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                        if uint256(sub_2688325a[t]) < uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                            if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                                idx = idx + 1
                                t = t
                                u = u
                                v = v
                                continue 
                            require idx < stor2.length
                            mem[0] = 2
                            idx = idx + 1
                            t = t
                            u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                            v = v
                            continue 
                        if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                            idx = idx + 1
                            t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                            u = u
                            v = v
                            continue 
                        require idx < stor2.length
                        mem[0] = 2
                        idx = idx + 1
                        t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                        u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                        v = v
                        continue 
                    if uint256(sub_2688325a[t]) < uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                        if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                            idx = idx + 1
                            t = t
                            u = u
                            v = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                            continue 
                        require idx < stor2.length
                        mem[0] = 2
                        idx = idx + 1
                        t = t
                        u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                        v = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                        continue 
                    if uint256(sub_2688325a[stor2[0.03125 / idx].field_(8 * idx % 32) - 248]):
                        idx = idx + 1
                        t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                        u = u
                        v = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                        continue 
                    require idx < stor2.length
                    mem[0] = 2
                    idx = idx + 1
                    t = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                    u = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                    v = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor2', 2))[uint8(idx)]
                    continue 
                if not uint256(sub_2688325a[v]):
                    if 0 > eth.balance(this.address):
                        if s != msg.value:
                            sub_9675715c[address(msg.sender)] = 0
                            call ceoWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x2757fb28: msg.sender, msg.value
                            if not uint256(sub_2688325a[u]):
                                emit 0x44b70361: eth.balance(this.address)
                                emit 0x0: eth.balance(this.address)
                            else:
                                require uint256(sub_2688325a[u])
                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                        else:
                            if uint256(sub_2688325a[u]) <= 0:
                                if sub_9675715c[address(msg.sender)] <= 5:
                                    if sub_9675715c[address(msg.sender)]:
                                        sub_9675715c[address(msg.sender)]++
                                    else:
                                        sub_9675715c[address(msg.sender)] = 1
                                    if not msg.value:
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                    else:
                                        require msg.value
                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        call ceoWalletAddress with:
                                           value msg.value * CEO_FEE / 100 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                    if not uint256(sub_2688325a[u]):
                                        emit 0x44b70361: eth.balance(this.address)
                                        emit 0x0: eth.balance(this.address)
                                    else:
                                        require uint256(sub_2688325a[u])
                                        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                else:
                                    if not uint256(sub_2688325a[t]):
                                        if 0 <= eth.balance(this.address):
                                            sub_9675715c[address(msg.sender)] = 0
                                            if not uint256(sub_2688325a[t]):
                                                call msg.sender with:
                                                     gas 2300 wei
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call msg.sender with:
                                                   value 8 * uint256(sub_2688325a[t]) wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Win(eth.balance(this.address), t, msg.sender);
                                            if not uint256(sub_2688325a[t]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                        else:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[u]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[u])
                                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                    else:
                                        require uint256(sub_2688325a[t])
                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not Mask(253, 0, sub_2688325a[t]):
                                            if 0 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[u]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[u])
                                                    if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                        else:
                                            require 8 * uint256(sub_2688325a[t])
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[u]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[u])
                                                    if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                            else:
                                if not uint256(sub_2688325a[u]):
                                    if 0 <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[u]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[u]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), u, msg.sender);
                                        if not uint256(sub_2688325a[u]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[u]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[u])
                                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[u]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[u])
                                                        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                else:
                                    require uint256(sub_2688325a[u])
                                    if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 8 * uint256(sub_2688325a[u]) <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[u]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[u]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), u, msg.sender);
                                        if not uint256(sub_2688325a[u]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[u]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[u])
                                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[u]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[u])
                                                        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                    else:
                        if s != msg.value:
                            sub_9675715c[address(msg.sender)] = 0
                            call ceoWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x2757fb28: msg.sender, msg.value
                            if not uint256(sub_2688325a[v]):
                                emit 0x44b70361: eth.balance(this.address)
                                emit 0x0: eth.balance(this.address)
                            else:
                                require uint256(sub_2688325a[v])
                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                        else:
                            if uint256(sub_2688325a[v]) <= 0:
                                if sub_9675715c[address(msg.sender)] <= 5:
                                    if sub_9675715c[address(msg.sender)]:
                                        sub_9675715c[address(msg.sender)]++
                                    else:
                                        sub_9675715c[address(msg.sender)] = 1
                                    if not msg.value:
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                    else:
                                        require msg.value
                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        call ceoWalletAddress with:
                                           value msg.value * CEO_FEE / 100 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                    if not uint256(sub_2688325a[v]):
                                        emit 0x44b70361: eth.balance(this.address)
                                        emit 0x0: eth.balance(this.address)
                                    else:
                                        require uint256(sub_2688325a[v])
                                        if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                else:
                                    if not uint256(sub_2688325a[t]):
                                        if 0 <= eth.balance(this.address):
                                            sub_9675715c[address(msg.sender)] = 0
                                            if not uint256(sub_2688325a[t]):
                                                call msg.sender with:
                                                     gas 2300 wei
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call msg.sender with:
                                                   value 8 * uint256(sub_2688325a[t]) wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Win(eth.balance(this.address), t, msg.sender);
                                            if not uint256(sub_2688325a[t]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                        else:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[v]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[v])
                                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                    else:
                                        require uint256(sub_2688325a[t])
                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not Mask(253, 0, sub_2688325a[t]):
                                            if 0 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[v]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[v])
                                                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                        else:
                                            require 8 * uint256(sub_2688325a[t])
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[v]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[v])
                                                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                            else:
                                if not uint256(sub_2688325a[v]):
                                    if 0 <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[v]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[v]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), v, msg.sender);
                                        if not uint256(sub_2688325a[v]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[v]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[v])
                                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[v]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[v])
                                                        if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                else:
                                    require uint256(sub_2688325a[v])
                                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 8 * uint256(sub_2688325a[v]) <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[v]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[v]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), v, msg.sender);
                                        if not uint256(sub_2688325a[v]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[v]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[v])
                                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[v]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[v])
                                                        if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                else:
                    require uint256(sub_2688325a[v])
                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 8 * uint256(sub_2688325a[v]) > eth.balance(this.address):
                        if s != msg.value:
                            sub_9675715c[address(msg.sender)] = 0
                            call ceoWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x2757fb28: msg.sender, msg.value
                            if not uint256(sub_2688325a[u]):
                                emit 0x44b70361: eth.balance(this.address)
                                emit 0x0: eth.balance(this.address)
                            else:
                                require uint256(sub_2688325a[u])
                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                        else:
                            if uint256(sub_2688325a[u]) <= 0:
                                if sub_9675715c[address(msg.sender)] <= 5:
                                    if sub_9675715c[address(msg.sender)]:
                                        sub_9675715c[address(msg.sender)]++
                                    else:
                                        sub_9675715c[address(msg.sender)] = 1
                                    if not msg.value:
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                    else:
                                        require msg.value
                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        call ceoWalletAddress with:
                                           value msg.value * CEO_FEE / 100 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                    if not uint256(sub_2688325a[u]):
                                        emit 0x44b70361: eth.balance(this.address)
                                        emit 0x0: eth.balance(this.address)
                                    else:
                                        require uint256(sub_2688325a[u])
                                        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                else:
                                    if not uint256(sub_2688325a[t]):
                                        if 0 <= eth.balance(this.address):
                                            sub_9675715c[address(msg.sender)] = 0
                                            if not uint256(sub_2688325a[t]):
                                                call msg.sender with:
                                                     gas 2300 wei
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call msg.sender with:
                                                   value 8 * uint256(sub_2688325a[t]) wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Win(eth.balance(this.address), t, msg.sender);
                                            if not uint256(sub_2688325a[t]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                        else:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[u]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[u])
                                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                    else:
                                        require uint256(sub_2688325a[t])
                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not Mask(253, 0, sub_2688325a[t]):
                                            if 0 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[u]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[u])
                                                    if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                        else:
                                            require 8 * uint256(sub_2688325a[t])
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[u]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[u])
                                                    if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                            else:
                                if not uint256(sub_2688325a[u]):
                                    if 0 <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[u]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[u]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), u, msg.sender);
                                        if not uint256(sub_2688325a[u]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[u]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[u])
                                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[u]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[u])
                                                        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                else:
                                    require uint256(sub_2688325a[u])
                                    if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 8 * uint256(sub_2688325a[u]) <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[u]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[u]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), u, msg.sender);
                                        if not uint256(sub_2688325a[u]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[u])
                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[u]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[u])
                                                if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[u]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[u])
                                                        if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[u]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[u])
                                                            if 8 * uint256(sub_2688325a[u]) / uint256(sub_2688325a[u]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[u])
                    else:
                        if s != msg.value:
                            sub_9675715c[address(msg.sender)] = 0
                            call ceoWalletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x2757fb28: msg.sender, msg.value
                            if not uint256(sub_2688325a[v]):
                                emit 0x44b70361: eth.balance(this.address)
                                emit 0x0: eth.balance(this.address)
                            else:
                                require uint256(sub_2688325a[v])
                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                        else:
                            if uint256(sub_2688325a[v]) <= 0:
                                if sub_9675715c[address(msg.sender)] <= 5:
                                    if sub_9675715c[address(msg.sender)]:
                                        sub_9675715c[address(msg.sender)]++
                                    else:
                                        sub_9675715c[address(msg.sender)] = 1
                                    if not msg.value:
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                    else:
                                        require msg.value
                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        call ceoWalletAddress with:
                                           value msg.value * CEO_FEE / 100 wei
                                             gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                    if not uint256(sub_2688325a[v]):
                                        emit 0x44b70361: eth.balance(this.address)
                                        emit 0x0: eth.balance(this.address)
                                    else:
                                        require uint256(sub_2688325a[v])
                                        if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                else:
                                    if not uint256(sub_2688325a[t]):
                                        if 0 <= eth.balance(this.address):
                                            sub_9675715c[address(msg.sender)] = 0
                                            if not uint256(sub_2688325a[t]):
                                                call msg.sender with:
                                                     gas 2300 wei
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call msg.sender with:
                                                   value 8 * uint256(sub_2688325a[t]) wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit Win(eth.balance(this.address), t, msg.sender);
                                            if not uint256(sub_2688325a[t]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                        else:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[v]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[v])
                                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                    else:
                                        require uint256(sub_2688325a[t])
                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not Mask(253, 0, sub_2688325a[t]):
                                            if 0 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[v]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[v])
                                                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                        else:
                                            require 8 * uint256(sub_2688325a[t])
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                sub_9675715c[address(msg.sender)] = 0
                                                if not uint256(sub_2688325a[t]):
                                                    call msg.sender with:
                                                         gas 2300 wei
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call msg.sender with:
                                                       value 8 * uint256(sub_2688325a[t]) wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit Win(eth.balance(this.address), t, msg.sender);
                                                if not uint256(sub_2688325a[t]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                            else:
                                                if sub_9675715c[address(msg.sender)]:
                                                    sub_9675715c[address(msg.sender)]++
                                                else:
                                                    sub_9675715c[address(msg.sender)] = 1
                                                if not msg.value:
                                                    call ceoWalletAddress with:
                                                         gas 2300 wei
                                                else:
                                                    require msg.value
                                                    if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    call ceoWalletAddress with:
                                                       value msg.value * CEO_FEE / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                if not uint256(sub_2688325a[v]):
                                                    emit 0x44b70361: eth.balance(this.address)
                                                    emit 0x0: eth.balance(this.address)
                                                else:
                                                    require uint256(sub_2688325a[v])
                                                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                            else:
                                if not uint256(sub_2688325a[v]):
                                    if 0 <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[v]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[v]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), v, msg.sender);
                                        if not uint256(sub_2688325a[v]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[v]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[v])
                                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[v]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[v])
                                                        if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                else:
                                    require uint256(sub_2688325a[v])
                                    if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 8 * uint256(sub_2688325a[v]) <= eth.balance(this.address):
                                        sub_9675715c[address(msg.sender)] = 0
                                        if not uint256(sub_2688325a[v]):
                                            call msg.sender with:
                                                 gas 2300 wei
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            call msg.sender with:
                                               value 8 * uint256(sub_2688325a[v]) wei
                                                 gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Win(eth.balance(this.address), v, msg.sender);
                                        if not uint256(sub_2688325a[v]):
                                            emit 0x44b70361: eth.balance(this.address)
                                            emit 0x0: eth.balance(this.address)
                                        else:
                                            require uint256(sub_2688325a[v])
                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                    else:
                                        if sub_9675715c[address(msg.sender)] <= 5:
                                            if sub_9675715c[address(msg.sender)]:
                                                sub_9675715c[address(msg.sender)]++
                                            else:
                                                sub_9675715c[address(msg.sender)] = 1
                                            if not msg.value:
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                            else:
                                                require msg.value
                                                if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                call ceoWalletAddress with:
                                                   value msg.value * CEO_FEE / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                            if not uint256(sub_2688325a[v]):
                                                emit 0x44b70361: eth.balance(this.address)
                                                emit 0x0: eth.balance(this.address)
                                            else:
                                                require uint256(sub_2688325a[v])
                                                if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                        else:
                                            if not uint256(sub_2688325a[t]):
                                                if 0 <= eth.balance(this.address):
                                                    sub_9675715c[address(msg.sender)] = 0
                                                    if not uint256(sub_2688325a[t]):
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 8 * uint256(sub_2688325a[t]) wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit Win(eth.balance(this.address), t, msg.sender);
                                                    if not uint256(sub_2688325a[t]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[t])
                                                        if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                else:
                                                    if sub_9675715c[address(msg.sender)]:
                                                        sub_9675715c[address(msg.sender)]++
                                                    else:
                                                        sub_9675715c[address(msg.sender)] = 1
                                                    if not msg.value:
                                                        call ceoWalletAddress with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        call ceoWalletAddress with:
                                                           value msg.value * CEO_FEE / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                    if not uint256(sub_2688325a[v]):
                                                        emit 0x44b70361: eth.balance(this.address)
                                                        emit 0x0: eth.balance(this.address)
                                                    else:
                                                        require uint256(sub_2688325a[v])
                                                        if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                            else:
                                                require uint256(sub_2688325a[t])
                                                if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not Mask(253, 0, sub_2688325a[t]):
                                                    if 0 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
                                                else:
                                                    require 8 * uint256(sub_2688325a[t])
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 8 * uint256(sub_2688325a[t]) != sub_a25f7e22:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 8 * uint256(sub_2688325a[t]) * sub_a25f7e22 / 100 <= eth.balance(this.address):
                                                        sub_9675715c[address(msg.sender)] = 0
                                                        if not uint256(sub_2688325a[t]):
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value 8 * uint256(sub_2688325a[t]) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit Win(eth.balance(this.address), t, msg.sender);
                                                        if not uint256(sub_2688325a[t]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[t])
                                                            if 8 * uint256(sub_2688325a[t]) / uint256(sub_2688325a[t]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[t])
                                                    else:
                                                        if sub_9675715c[address(msg.sender)]:
                                                            sub_9675715c[address(msg.sender)]++
                                                        else:
                                                            sub_9675715c[address(msg.sender)] = 1
                                                        if not msg.value:
                                                            call ceoWalletAddress with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * CEO_FEE / msg.value != CEO_FEE:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            call ceoWalletAddress with:
                                                               value msg.value * CEO_FEE / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd546dc9b: eth.balance(this.address), u, msg.sender
                                                        if not uint256(sub_2688325a[v]):
                                                            emit 0x44b70361: eth.balance(this.address)
                                                            emit 0x0: eth.balance(this.address)
                                                        else:
                                                            require uint256(sub_2688325a[v])
                                                            if 8 * uint256(sub_2688325a[v]) / uint256(sub_2688325a[v]) != 8:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            emit 0x44b70361: eth.balance(this.address), 8 * uint256(sub_2688325a[v])
}



}

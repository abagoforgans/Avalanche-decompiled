contract main {




// =====================  Runtime code  =====================


const ETH = '', 0

const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
address refAddress;
mapping of struct stor67;
mapping of uint256 sub_ae23e6c7;

function governor() payable {
    return address(governorAddress)
}

function ref() payable {
    return refAddress
}

function sub_ae23e6c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ae23e6c7[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function setRef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    refAddress = arg1
    emit SetRef(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function sub_13b4b912(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens & maxDelays length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 68
        sub_ae23e6c7[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit SetMaxDelayTime(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function symbols(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor67[arg1].field_0):
        if bool(stor67[arg1].field_0) == uint255(stor67[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor67[arg1].field_0):
            if bool(stor67[arg1].field_0) == uint255(stor67[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor67[arg1].field_0):
                if 31 < uint255(stor67[arg1].field_0) * 0.5:
                    mem[128] = stor67[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor67[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor67[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor67[arg1].field_0), data=mem[128 len ceil32(uint255(stor67[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor67[arg1].field_8)
        else:
            if bool(stor67[arg1].field_0) == stor67[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor67[arg1].field_1 % 128:
                if 31 < stor67[arg1].field_1 % 128:
                    mem[128] = stor67[arg1].field_0
                    idx = 128
                    s = 0
                    while stor67[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor67[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor67[arg1].field_0), data=mem[128 len ceil32(uint255(stor67[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor67[arg1].field_8)
        mem[ceil32(uint255(stor67[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor67[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor67[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor67[arg1].field_0) * 0.5) > uint255(stor67[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor67[arg1].field_0) * 0.5) + (uint255(stor67[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor67[arg1].field_0), data=mem[128 len ceil32(uint255(stor67[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor67[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor67[arg1].field_0) * 0.5)]), 
    if bool(stor67[arg1].field_0) == stor67[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor67[arg1].field_0):
        if bool(stor67[arg1].field_0) == uint255(stor67[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor67[arg1].field_0):
            if 31 < uint255(stor67[arg1].field_0) * 0.5:
                mem[128] = stor67[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor67[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor67[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor67[arg1].field_0 % 128, data=mem[128 len ceil32(stor67[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor67[arg1].field_8)
    else:
        if bool(stor67[arg1].field_0) == stor67[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor67[arg1].field_1 % 128:
            if 31 < stor67[arg1].field_1 % 128:
                mem[128] = stor67[arg1].field_0
                idx = 128
                s = 0
                while stor67[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor67[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor67[arg1].field_0 % 128, data=mem[128 len ceil32(stor67[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor67[arg1].field_8)
    mem[ceil32(stor67[arg1].field_1 % 128) + 192 len ceil32(stor67[arg1].field_1 % 128)] = mem[128 len ceil32(stor67[arg1].field_1 % 128)]
    if ceil32(stor67[arg1].field_1 % 128) > stor67[arg1].field_1 % 128:
        mem[ceil32(stor67[arg1].field_1 % 128) + stor67[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor67[arg1].field_0 % 128, data=mem[128 len ceil32(stor67[arg1].field_1 % 128)], mem[(2 * ceil32(stor67[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor67[arg1].field_1 % 128)]), 
}

function getETHPx(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        return 0x10000000000000000000000000000
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return 0x10000000000000000000000000000
    if bool(stor67[address(arg1)].field_0):
        if bool(stor67[address(arg1)].field_0) == uint255(stor67[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor67[address(arg1)].field_0):
            if bool(stor67[address(arg1)].field_0) == uint255(stor67[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor67[address(arg1)].field_0):
                if 31 >= uint255(stor67[address(arg1)].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor67[address(arg1)].field_8)
                else:
                    mem[128] = stor67[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor67[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor67[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor67[address(arg1)].field_0) == stor67[address(arg1)].field_1 % 128 < 32:
                revert with 0, 34
            if stor67[address(arg1)].field_1 % 128:
                if 31 >= stor67[address(arg1)].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor67[address(arg1)].field_8)
                else:
                    mem[128] = stor67[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor67[address(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor67[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not uint255(stor67[address(arg1)].field_0) * 0.5:
            revert with 0, 'no mapping'
        if not sub_ae23e6c7[address(arg1)]:
            revert with 0, 'max delay time not set'
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[ceil32(uint255(stor67[address(arg1)].field_0) * 0.5) + ceil32(return_data.size) + 128] = 4
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, ceil32(uint255(stor67[address(arg1)].field_0) * 0.5) + 96, 2 * Mask(256, -1, stor67[address(arg1)].field_0), mem[128 len ceil32(uint255(stor67[address(arg1)].field_0) * 0.5)], 4, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool(ceil32(uint255(stor67[address(arg1)].field_0) * 0.5) + (2 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
    else:
        if bool(stor67[address(arg1)].field_0) == stor67[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor67[address(arg1)].field_0):
            if bool(stor67[address(arg1)].field_0) == uint255(stor67[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor67[address(arg1)].field_0):
                if 31 >= uint255(stor67[address(arg1)].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor67[address(arg1)].field_8)
                else:
                    mem[128] = stor67[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor67[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor67[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor67[address(arg1)].field_0) == stor67[address(arg1)].field_1 % 128 < 32:
                revert with 0, 34
            if stor67[address(arg1)].field_1 % 128:
                if 31 >= stor67[address(arg1)].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor67[address(arg1)].field_8)
                else:
                    mem[128] = stor67[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor67[address(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor67[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not stor67[address(arg1)].field_1 % 128:
            revert with 0, 'no mapping'
        if not sub_ae23e6c7[address(arg1)]:
            revert with 0, 'max delay time not set'
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[ceil32(stor67[address(arg1)].field_1 % 128) + ceil32(return_data.size) + 128] = 4
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, ceil32(stor67[address(arg1)].field_1 % 128) + 96, stor67[address(arg1)].field_0 % 128, mem[128 len ceil32(stor67[address(arg1)].field_1 % 128)], 4, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool(ceil32(stor67[address(arg1)].field_1 % 128) + (2 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
    if block.timestamp < sub_ae23e6c7[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[32] < block.timestamp - sub_ae23e6c7[address(arg1)]:
        revert with 0, 'delayed base data'
    if block.timestamp < sub_ae23e6c7[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[64] < block.timestamp - sub_ae23e6c7[address(arg1)]:
        revert with 0, 'delayed quote data'
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > test266151307():
            revert with 0, 17
        return (ext_call.return_data[0] << 112)
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if ext_call.return_data[0] > test266151307():
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (ext_call.return_data[0] << 112 / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] > test266151307():
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[0] << 112 / s * t)
}

function sub_500e5e98(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _191 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_191] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_191 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_191 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _191
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if mem[ceil32(32 * ('cd', 4).length) + 97] != mem[96]:
        revert with 0, 'inconsistent length'
    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    while idx < _280:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 67
        _286 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
        if bool(stor67[mem[(32 * idx) + 140 len 20]].field_0):
            if bool(stor67[mem[(32 * idx) + 140 len 20]].field_0) == uint255(stor67[mem[(32 * idx) + 140 len 20]].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(mem[(32 * idx) + 140 len 20], 67)
            if not _286:
                stor67[mem[(32 * idx) + 140 len 20]].field_0 = 0
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 67))
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 67)) + ((uint255(stor67[mem[(32 * idx) + 140 len 20]].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _389 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _390 = mem[64]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = 64
                _403 = mem[_389]
                mem[mem[64] + 64] = mem[_389]
                s = 0
                while s < _403:
                    mem[s + mem[64] + 96] = mem[_389 + s + 32]
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_403) > _403:
                    mem[_390 + _403 + 96] = 0
                emit SetSymbol(address rg1, string rg2):
                               mem[mem[64] len ceil32(_403) + _390 + -mem[64] + 96],
            else:
                stor67[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _286) + 1
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 67))
                t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _286 + 32 > t:
                    stor[s] = mem[t]
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 67)) + (Mask(251, 0, _286 + 31) >> 5)
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 67)) + ((uint255(stor67[mem[(32 * idx) + 140 len 20]].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _458 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _459 = mem[64]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = 64
                _467 = mem[_458]
                mem[mem[64] + 64] = mem[_458]
                s = 0
                while s < _467:
                    mem[s + mem[64] + 96] = mem[_458 + s + 32]
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_467) > _467:
                    mem[_459 + _467 + 96] = 0
                emit SetSymbol(address rg1, string rg2):
                               mem[mem[64] len ceil32(_467) + _459 + -mem[64] + 96],
        else:
            if bool(stor67[mem[(32 * idx) + 140 len 20]].field_0) == stor67[mem[(32 * idx) + 140 len 20]].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(mem[(32 * idx) + 140 len 20], 67)
            if not _286:
                stor67[mem[(32 * idx) + 140 len 20]].field_0 = 0
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 67))
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 67)) + (stor67[mem[(32 * idx) + 140 len 20]].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _395 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _396 = mem[64]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = 64
                _408 = mem[_395]
                mem[mem[64] + 64] = mem[_395]
                s = 0
                while s < _408:
                    mem[s + mem[64] + 96] = mem[_395 + s + 32]
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_408) > _408:
                    mem[_396 + _408 + 96] = 0
                emit SetSymbol(address rg1, string rg2):
                               mem[mem[64] len ceil32(_408) + _396 + -mem[64] + 96],
            else:
                stor67[mem[(32 * idx) + 140 len 20]].field_0 = (2 * _286) + 1
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 67))
                t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _286 + 32 > t:
                    stor[s] = mem[t]
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(mem[(32 * idx) + 140 len 20], 67)) + (Mask(251, 0, _286 + 31) >> 5)
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 67)) + (stor67[mem[(32 * idx) + 140 len 20]].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _463 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                _464 = mem[64]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = 64
                _468 = mem[_463]
                mem[mem[64] + 64] = mem[_463]
                s = 0
                while s < _468:
                    mem[s + mem[64] + 96] = mem[_463 + s + 32]
                    _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    s = s + 32
                    continue 
                if ceil32(_468) > _468:
                    mem[_464 + _468 + 96] = 0
                emit SetSymbol(address rg1, string rg2):
                               mem[mem[64] len ceil32(_468) + _464 + -mem[64] + 96],
        if idx == -1:
            revert with 0, 17
        _280 = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = idx + 1
        continue 
}



}

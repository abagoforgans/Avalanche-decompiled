contract main {




// =====================  Runtime code  =====================


#
#  - sub_8020d2ce(?)
#  - getTokenPrice(address arg1)
#
address owner;
array of uint256 stor1;
address stor2;
address stor4;
uint256 sub_19421ca6;
uint256 PRICE_PRECISION;
uint256 sub_462d3a49;
array of struct sub_eb6c8bcc;
mapping of struct stor10;
mapping of uint8 stor11;
uint256 sub_f56c8547;

function sub_19421ca6(?) payable {
    return sub_19421ca6
}

function sub_462d3a49(?) payable {
    return sub_462d3a49
}

function sub_4db769ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function nominatedOwner() payable {
    return address(stor1.length)
}

function owner() payable {
    return owner
}

function PRICE_PRECISION() payable {
    return PRICE_PRECISION
}

function sub_eb6c8bcc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_eb6c8bcc.length
    return address(sub_eb6c8bcc[arg1].field_0)
}

function sub_f56c8547(?) payable {
    return sub_f56c8547
}

function _fallback() payable {
    revert
}

function setMaxDelayTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not an owner or the governance timelock'
    sub_f56c8547 = arg1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not an owner or the governance timelock'
    stor2 = arg1
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    address(stor1.length) = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, address(stor1.length));
    owner = address(stor1.length)
    address(stor1.length) = 0
}

function sub_3179fabc(?) payable {
    staticcall stor4.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Invalid chainlink price'
    if block.timestamp < sub_f56c8547:
        revert with 'NH{q', 17
    if ext_call.return_data[96] < block.timestamp - sub_f56c8547:
        revert with 0, 'Invalid chainlink price'
    if ext_call.return_data[150 len 10] < ext_call.return_data[22 len 10]:
        revert with 0, 'Invalid chainlink price'
    if ext_call.return_data[32] and sub_19421ca6 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    return (ext_call.return_data[32] * sub_19421ca6 / 100 * 10^6)
}

function getETHPrice() payable {
    staticcall stor4.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'Invalid chainlink price'
    if block.timestamp < sub_f56c8547:
        revert with 'NH{q', 17
    if ext_call.return_data[96] < block.timestamp - sub_f56c8547:
        revert with 0, 'Invalid chainlink price'
    if ext_call.return_data[150 len 10] < ext_call.return_data[22 len 10]:
        revert with 0, 'Invalid chainlink price'
    if ext_call.return_data[32] and PRICE_PRECISION > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    return (ext_call.return_data[32] * PRICE_PRECISION / 100 * 10^6)
}

function sub_b01e981c(?) payable {
    mem[64] = (32 * sub_eb6c8bcc.length) + 128
    mem[96] = sub_eb6c8bcc.length
    if not sub_eb6c8bcc.length:
        mem[(32 * sub_eb6c8bcc.length) + 128] = 32
        mem[(32 * sub_eb6c8bcc.length) + 160] = sub_eb6c8bcc.length
        idx = 0
        s = (32 * sub_eb6c8bcc.length) + 192
        t = 128
        while idx < sub_eb6c8bcc.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_eb6c8bcc.length) + 128
           len (96 * sub_eb6c8bcc.length) + 64
    mem[128] = address(sub_eb6c8bcc.field_0)
    idx = 128
    s = 0
    while (32 * sub_eb6c8bcc.length) + 96 > idx:
        mem[idx + 32] = address(sub_eb6c8bcc[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_eb6c8bcc.length) + 128] = 32
    mem[(32 * sub_eb6c8bcc.length) + 160] = sub_eb6c8bcc.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_eb6c8bcc.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_eb6c8bcc.length) + -mem[64] + 192
}

function sub_b86a74b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor10[arg1].field_256):
        if bool(stor10[arg1].field_256) == uint255(stor10[arg1].field_256) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor10[arg1].field_256):
            if bool(stor10[arg1].field_256) == uint255(stor10[arg1].field_256) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor10[arg1].field_256):
                if 31 >= uint255(stor10[arg1].field_256) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor10[arg1].field_264)
                else:
                    mem[128] = stor10[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor10[arg1].field_256) == stor10[arg1].field_257 % 128 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_257 % 128:
                if 31 >= stor10[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor10[arg1].field_264)
                else:
                    mem[128] = stor10[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor10[arg1].field_0), 
               Array(len=2 * Mask(256, -1, stor10[arg1].field_256), data=mem[128 len ceil32(uint255(stor10[arg1].field_256) * 0.5)]),
               address(stor10[arg1].field_512),
               stor10[arg1].field_768,
               stor10[arg1].field_1024,
               address(stor10[arg1].field_1280),
               address(stor10[arg1].field_1536),
               Mask(96, 0, stor10[arg1].field_1696) << 224,
               stor10[arg1].field_1792,
               stor10[arg1].field_2048
    if bool(stor10[arg1].field_256) == stor10[arg1].field_257 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor10[arg1].field_256):
        if bool(stor10[arg1].field_256) == uint255(stor10[arg1].field_256) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor10[arg1].field_256):
            if 31 >= uint255(stor10[arg1].field_256) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_264)
            else:
                mem[128] = stor10[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor10[arg1].field_256) == stor10[arg1].field_257 % 128 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_257 % 128:
            if 31 >= stor10[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_264)
            else:
                mem[128] = stor10[arg1][1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor10[arg1].field_0), 
           Array(len=stor10[arg1].field_256 % 128, data=mem[128 len ceil32(stor10[arg1].field_257 % 128)]),
           address(stor10[arg1].field_512),
           stor10[arg1].field_768,
           stor10[arg1].field_1024,
           address(stor10[arg1].field_1280),
           address(stor10[arg1].field_1536),
           Mask(96, 0, stor10[arg1].field_1696) << 224,
           stor10[arg1].field_1792,
           stor10[arg1].field_2048
}

function sub_9b3370a0(?) payable {
    if sub_eb6c8bcc.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_eb6c8bcc.length
    mem[64] = (32 * sub_eb6c8bcc.length) + 128
    if not sub_eb6c8bcc.length:
        idx = 0
        while idx < sub_eb6c8bcc.length:
            mem[0] = address(sub_eb6c8bcc[idx].field_0)
            mem[32] = 10
            _97 = mem[64]
            mem[64] = mem[64] + 320
            mem[_97] = address(stor10[address(stor9[idx].field_0)].field_0)
            if bool(stor10[address(stor9[idx].field_0)].field_256):
                if bool(stor10[address(stor9[idx].field_0)].field_256) == uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5 < 32:
                    revert with 'NH{q', 34
                _108 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5) + 32
                mem[_108] = uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5
                if bool(stor10[address(stor9[idx].field_0)].field_256):
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor10[address(stor9[idx].field_0)].field_256):
                        if 31 >= uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5:
                            mem[_108 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_108 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _108 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _108 + (uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == stor10[address(stor9[idx].field_0)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor10[address(stor9[idx].field_0)].field_257 % 128:
                        if 31 >= stor10[address(stor9[idx].field_0)].field_257 % 128:
                            mem[_108 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_108 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _108 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _108 + stor10[address(stor9[idx].field_0)].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_97 + 32] = _108
            else:
                if bool(stor10[address(stor9[idx].field_0)].field_256) == stor10[address(stor9[idx].field_0)].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                _110 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[address(stor9[idx].field_0)].field_257 % 128) + 32
                mem[_110] = stor10[address(stor9[idx].field_0)].field_257 % 128
                if bool(stor10[address(stor9[idx].field_0)].field_256):
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor10[address(stor9[idx].field_0)].field_256):
                        if 31 >= uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5:
                            mem[_110 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_110 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _110 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _110 + (uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == stor10[address(stor9[idx].field_0)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor10[address(stor9[idx].field_0)].field_257 % 128:
                        if 31 >= stor10[address(stor9[idx].field_0)].field_257 % 128:
                            mem[_110 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_110 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _110 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _110 + stor10[address(stor9[idx].field_0)].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_97 + 32] = _110
            mem[_97 + 64] = address(stor10[address(stor9[idx].field_0)].field_512)
            mem[_97 + 96] = stor10[address(stor9[idx].field_0)].field_768
            mem[_97 + 128] = stor10[address(stor9[idx].field_0)].field_1024
            mem[_97 + 160] = address(stor10[address(stor9[idx].field_0)].field_1280)
            mem[_97 + 192] = address(stor10[address(stor9[idx].field_0)].field_1536)
            mem[_97 + 224] = Mask(96, 0, stor10[address(stor9[idx].field_0)].field_1696) << 224
            mem[_97 + 256] = stor10[address(stor9[idx].field_0)].field_1792
            mem[_97 + 288] = stor10[address(stor9[idx].field_0)].field_2048
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _97
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _94 = mem[64]
        mem[mem[64]] = 32
        _98 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _98:
            mem[u] = t + -_94 - 64
            _184 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _186 = mem[_184 + 32]
            mem[t + 32] = 320
            _188 = mem[_186]
            mem[t + 320] = mem[_186]
            v = 0
            while v < _188:
                mem[v + t + 352] = mem[v + _186 + 32]
                v = v + 32
                continue 
            if ceil32(_188) > _188:
                mem[t + _188 + 352] = 0
            mem[t + 64] = mem[_184 + 76 len 20]
            mem[t + 96] = mem[_184 + 96]
            mem[t + 128] = mem[_184 + 128]
            mem[t + 160] = mem[_184 + 172 len 20]
            mem[t + 192] = mem[_184 + 204 len 20]
            mem[t + 224] = Mask(32, 224, mem[_184 + 224])
            mem[t + 256] = mem[_184 + 256]
            mem[t + 288] = mem[_184 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_188) + t + 352
            u = u + 32
            continue 
    else:
        mem[64] = (32 * sub_eb6c8bcc.length) + 448
        mem[(32 * sub_eb6c8bcc.length) + 128] = 0
        mem[(32 * sub_eb6c8bcc.length) + 160] = 96
        mem[(32 * sub_eb6c8bcc.length) + 192] = 0
        mem[(32 * sub_eb6c8bcc.length) + 224] = 0
        mem[(32 * sub_eb6c8bcc.length) + 256] = 0
        mem[(32 * sub_eb6c8bcc.length) + 288] = 0
        mem[(32 * sub_eb6c8bcc.length) + 320] = 0
        mem[(32 * sub_eb6c8bcc.length) + 352] = 0
        mem[(32 * sub_eb6c8bcc.length) + 384] = 0
        mem[(32 * sub_eb6c8bcc.length) + 416] = 0
        mem[128] = (32 * sub_eb6c8bcc.length) + 128
        s = 128
        idx = sub_eb6c8bcc.length
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * sub_eb6c8bcc.length) + 128] = 0
            mem[(32 * sub_eb6c8bcc.length) + 160] = 96
            mem[(32 * sub_eb6c8bcc.length) + 192] = 0
            mem[(32 * sub_eb6c8bcc.length) + 224] = 0
            mem[(32 * sub_eb6c8bcc.length) + 256] = 0
            mem[(32 * sub_eb6c8bcc.length) + 288] = 0
            mem[(32 * sub_eb6c8bcc.length) + 320] = 0
            mem[(32 * sub_eb6c8bcc.length) + 352] = 0
            mem[(32 * sub_eb6c8bcc.length) + 384] = 0
            mem[(32 * sub_eb6c8bcc.length) + 416] = 0
            mem[s + 32] = (32 * sub_eb6c8bcc.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_eb6c8bcc.length:
            mem[0] = address(sub_eb6c8bcc[idx].field_0)
            mem[32] = 10
            _196 = mem[64]
            mem[64] = mem[64] + 320
            mem[_196] = address(stor10[address(stor9[idx].field_0)].field_0)
            if bool(stor10[address(stor9[idx].field_0)].field_256):
                if bool(stor10[address(stor9[idx].field_0)].field_256) == uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5 < 32:
                    revert with 'NH{q', 34
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5) + 32
                mem[_204] = uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5
                if bool(stor10[address(stor9[idx].field_0)].field_256):
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor10[address(stor9[idx].field_0)].field_256):
                        if 31 >= uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5:
                            mem[_204 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_204 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _204 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _204 + (uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == stor10[address(stor9[idx].field_0)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor10[address(stor9[idx].field_0)].field_257 % 128:
                        if 31 >= stor10[address(stor9[idx].field_0)].field_257 % 128:
                            mem[_204 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_204 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _204 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _204 + stor10[address(stor9[idx].field_0)].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_196 + 32] = _204
            else:
                if bool(stor10[address(stor9[idx].field_0)].field_256) == stor10[address(stor9[idx].field_0)].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[address(stor9[idx].field_0)].field_257 % 128) + 32
                mem[_205] = stor10[address(stor9[idx].field_0)].field_257 % 128
                if bool(stor10[address(stor9[idx].field_0)].field_256):
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor10[address(stor9[idx].field_0)].field_256):
                        if 31 >= uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5:
                            mem[_205 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_205 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _205 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _205 + (uint255(stor10[address(stor9[idx].field_0)].field_256) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor10[address(stor9[idx].field_0)].field_256) == stor10[address(stor9[idx].field_0)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor10[address(stor9[idx].field_0)].field_257 % 128:
                        if 31 >= stor10[address(stor9[idx].field_0)].field_257 % 128:
                            mem[_205 + 32] = 256 * Mask(248, 0, stor10[address(stor9[idx].field_0)].field_264)
                        else:
                            mem[0] = sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1
                            mem[_205 + 32] = stor10[address(stor9[idx].field_0)][1].field_0
                            s = _205 + 32
                            t = sha3(sha3(address(sub_eb6c8bcc[idx].field_0), 10) + 1)
                            while _205 + stor10[address(stor9[idx].field_0)].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_196 + 32] = _205
            mem[_196 + 64] = address(stor10[address(stor9[idx].field_0)].field_512)
            mem[_196 + 96] = stor10[address(stor9[idx].field_0)].field_768
            mem[_196 + 128] = stor10[address(stor9[idx].field_0)].field_1024
            mem[_196 + 160] = address(stor10[address(stor9[idx].field_0)].field_1280)
            mem[_196 + 192] = address(stor10[address(stor9[idx].field_0)].field_1536)
            mem[_196 + 224] = Mask(96, 0, stor10[address(stor9[idx].field_0)].field_1696) << 224
            mem[_196 + 256] = stor10[address(stor9[idx].field_0)].field_1792
            mem[_196 + 288] = stor10[address(stor9[idx].field_0)].field_2048
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _196
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _193 = mem[64]
        mem[mem[64]] = 32
        _197 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _197:
            mem[u] = t + -_193 - 64
            _256 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _258 = mem[_256 + 32]
            mem[t + 32] = 320
            _260 = mem[_258]
            mem[t + 320] = mem[_258]
            v = 0
            while v < _260:
                mem[v + t + 352] = mem[v + _258 + 32]
                v = v + 32
                continue 
            if ceil32(_260) > _260:
                mem[t + _260 + 352] = 0
            mem[t + 64] = mem[_256 + 76 len 20]
            mem[t + 96] = mem[_256 + 96]
            mem[t + 128] = mem[_256 + 128]
            mem[t + 160] = mem[_256 + 172 len 20]
            mem[t + 192] = mem[_256 + 204 len 20]
            mem[t + 224] = Mask(32, 224, mem[_256 + 224])
            mem[t + 256] = mem[_256 + 256]
            mem[t + 288] = mem[_256 + 288]
            idx = idx + 1
            s = s + 32
            t = ceil32(_260) + t + 352
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_f4836083(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == Mask(32, 224, arg6)
    if msg.sender == owner:
        if not address(arg1):
            revert with 0, 'Cannot add zero address'
        if not address(arg4):
            idx = 0
            while idx < sub_eb6c8bcc.length:
                mem[0] = 9
                if address(sub_eb6c8bcc[idx].field_0) != address(arg1):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[ceil32(return_data.size) + 96] = address(arg1)
                mem[ceil32(return_data.size) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                _1508 = mem[ceil32(return_data.size) + 416]
                require mem[ceil32(return_data.size) + 416] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 447 < ceil32(return_data.size) + return_data.size + 416
                _1516 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 417 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416]
                require _1508 + _1516 + 32 <= return_data.size
                idx = 0
                while idx < _1516:
                    mem[idx + (2 * ceil32(return_data.size)) + 448] = mem[idx + ceil32(return_data.size) + _1508 + 448]
                    idx = idx + 32
                    continue 
                if ceil32(_1516) > _1516:
                    mem[(2 * ceil32(return_data.size)) + _1516 + 448] = 0
                mem[ceil32(return_data.size) + 128] = (2 * ceil32(return_data.size)) + 416
                mem[ceil32(return_data.size) + 160] = address(arg2)
                mem[ceil32(return_data.size) + 192] = arg3
                mem[ceil32(return_data.size) + 224] = uint8(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 256] = address(arg4)
                mem[ceil32(return_data.size) + 288] = address(arg5)
                mem[ceil32(return_data.size) + 320] = Mask(32, 224, arg6)
                mem[ceil32(return_data.size) + 352] = arg7
                mem[ceil32(return_data.size) + 384] = 0
                address(stor10[address(arg1)].field_0) = mem[ceil32(return_data.size) + 108 len 20]
                if bool(stor10[address(arg1)].field_256):
                    if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not _1516:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * _1516) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (2 * ceil32(return_data.size)) + 448
                        while (2 * ceil32(return_data.size)) + _1516 + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, _1516 + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _1516:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * _1516) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (2 * ceil32(return_data.size)) + 448
                        while (2 * ceil32(return_data.size)) + _1516 + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, _1516 + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                address(stor10[address(arg1)].field_512) = address(arg2)
                stor10[address(arg1)].field_768 = arg3
                uint8(stor10[address(arg1)].field_1024) = uint8(ext_call.return_data[0])
                Mask(248, 0, stor10[address(arg1)].field_1032) = 0
                address(stor10[address(arg1)].field_1280) = address(arg4)
                address(stor10[address(arg1)].field_1536) = address(arg5)
                uint32(stor10[address(arg1)].field_1696) = 0
                stor10[address(arg1)].field_1792 = arg7
                stor10[address(arg1)].field_2048 = 0
                stor11[address(arg1)] = 1
            sub_eb6c8bcc.length++
            mem[0] = 9
            address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(arg1)
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[ceil32(return_data.size) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 416] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 447 < ceil32(return_data.size) + return_data.size + 416
            _1507 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 417 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 417
            require mem[ceil32(return_data.size) + 416] + _1507 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_1507)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 448 len ceil32(_1507)]
            address(stor10[address(arg1)].field_0) = uint64(arg1) << 96
            if bool(stor10[address(arg1)].field_256):
                if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                    revert with 'NH{q', 34
                if _1507:
                    stor10[address(arg1)][1][].field_0 = Array(len=_1507, data=mem[(2 * ceil32(return_data.size)) + 448 len _1507])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while (uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if _1507:
                    stor10[address(arg1)][1][].field_0 = Array(len=_1507, data=mem[(2 * ceil32(return_data.size)) + 448 len _1507])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while stor10[address(arg1)].field_257 % 128 + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            staticcall address(arg4).0x313ce567 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= 0 and uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[31 len 1] < 0 and uint8(ext_call.return_data[0]) > ext_call.return_data[31 len 1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = 0
            while idx < sub_eb6c8bcc.length:
                mem[0] = 9
                if address(sub_eb6c8bcc[idx].field_0) != address(arg1):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[(4 * ceil32(return_data.size)) + 96] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1510 = mem[(4 * ceil32(return_data.size)) + 416]
                require mem[(4 * ceil32(return_data.size)) + 416] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                _1518 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 417 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 417
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
                require _1510 + _1518 + 32 <= return_data.size
                idx = 0
                while idx < _1518:
                    mem[idx + (6 * ceil32(return_data.size)) + 448] = mem[idx + (4 * ceil32(return_data.size)) + _1510 + 448]
                    idx = idx + 32
                    continue 
                if ceil32(_1518) > _1518:
                    mem[(6 * ceil32(return_data.size)) + _1518 + 448] = 0
                mem[(4 * ceil32(return_data.size)) + 128] = (6 * ceil32(return_data.size)) + 416
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 192] = arg3
                mem[(4 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 256] = address(arg4)
                mem[(4 * ceil32(return_data.size)) + 288] = address(arg5)
                mem[(4 * ceil32(return_data.size)) + 320] = Mask(32, 224, arg6)
                mem[(4 * ceil32(return_data.size)) + 352] = arg7
                mem[(4 * ceil32(return_data.size)) + 384] = 0
                mem[32] = 10
                address(stor10[address(arg1)].field_0) = uint64(arg1) << 96
                if bool(stor10[address(arg1)].field_256):
                    if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(address(arg1), 10) + 1
                    if not mem[(6 * ceil32(return_data.size)) + 416]:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * mem[(6 * ceil32(return_data.size)) + 416]) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (6 * ceil32(return_data.size)) + 448
                        while (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416] + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, mem[(6 * ceil32(return_data.size)) + 416] + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(address(arg1), 10) + 1
                    if not mem[(6 * ceil32(return_data.size)) + 416]:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * mem[(6 * ceil32(return_data.size)) + 416]) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (6 * ceil32(return_data.size)) + 448
                        while (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416] + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, mem[(6 * ceil32(return_data.size)) + 416] + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                address(stor10[address(arg1)].field_512) = address(arg2)
                stor10[address(arg1)].field_768 = arg3
                uint8(stor10[address(arg1)].field_1024) = uint8(ext_call.return_data[0])
                Mask(248, 0, stor10[address(arg1)].field_1032) = 0
                address(stor10[address(arg1)].field_1280) = address(arg4)
                address(stor10[address(arg1)].field_1536) = address(arg5)
                uint32(stor10[address(arg1)].field_1696) = 0
                stor10[address(arg1)].field_1792 = arg7
                stor10[address(arg1)].field_2048 = 0
                stor11[address(arg1)] = 1
            sub_eb6c8bcc.length++
            address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(arg1)
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[(4 * ceil32(return_data.size)) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1501 = mem[(4 * ceil32(return_data.size)) + 416]
            require mem[(4 * ceil32(return_data.size)) + 416] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
            _1509 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 417 > test266151307():
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
            require _1501 + _1509 + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 448 len ceil32(_1509)] = mem[(4 * ceil32(return_data.size)) + _1501 + 448 len ceil32(_1509)]
            if ceil32(_1509) > _1509:
                mem[(6 * ceil32(return_data.size)) + _1509 + 448] = 0
            address(stor10[address(arg1)].field_0) = uint64(arg1) << 96
            if bool(stor10[address(arg1)].field_256):
                if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                    revert with 'NH{q', 34
                if mem[(6 * ceil32(return_data.size)) + 416]:
                    stor10[address(arg1)][1][].field_0 = Array(len=mem[(6 * ceil32(return_data.size)) + 416], data=mem[(6 * ceil32(return_data.size)) + 448 len mem[(6 * ceil32(return_data.size)) + 416]])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while (uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if mem[(6 * ceil32(return_data.size)) + 416]:
                    stor10[address(arg1)][1][].field_0 = Array(len=mem[(6 * ceil32(return_data.size)) + 416], data=mem[(6 * ceil32(return_data.size)) + 448 len mem[(6 * ceil32(return_data.size)) + 416]])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while stor10[address(arg1)].field_257 % 128 + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not an owner or the governance timelock'
        if not address(arg1):
            revert with 0, 'Cannot add zero address'
        if not address(arg4):
            idx = 0
            while idx < sub_eb6c8bcc.length:
                mem[0] = 9
                if address(sub_eb6c8bcc[idx].field_0) != address(arg1):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[ceil32(return_data.size) + 96] = address(arg1)
                mem[ceil32(return_data.size) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                _1512 = mem[ceil32(return_data.size) + 416]
                require mem[ceil32(return_data.size) + 416] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 447 < ceil32(return_data.size) + return_data.size + 416
                _1520 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 417 > test266151307():
                    revert with 'NH{q', 65
                mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416]
                require _1512 + _1520 + 32 <= return_data.size
                idx = 0
                while idx < _1520:
                    mem[idx + (2 * ceil32(return_data.size)) + 448] = mem[idx + ceil32(return_data.size) + _1512 + 448]
                    idx = idx + 32
                    continue 
                if ceil32(_1520) > _1520:
                    mem[(2 * ceil32(return_data.size)) + _1520 + 448] = 0
                mem[ceil32(return_data.size) + 128] = (2 * ceil32(return_data.size)) + 416
                mem[ceil32(return_data.size) + 160] = address(arg2)
                mem[ceil32(return_data.size) + 192] = arg3
                mem[ceil32(return_data.size) + 224] = uint8(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 256] = address(arg4)
                mem[ceil32(return_data.size) + 288] = address(arg5)
                mem[ceil32(return_data.size) + 320] = Mask(32, 224, arg6)
                mem[ceil32(return_data.size) + 352] = arg7
                mem[ceil32(return_data.size) + 384] = 0
                address(stor10[address(arg1)].field_0) = mem[ceil32(return_data.size) + 108 len 20]
                if bool(stor10[address(arg1)].field_256):
                    if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not _1520:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * _1520) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (2 * ceil32(return_data.size)) + 448
                        while (2 * ceil32(return_data.size)) + _1520 + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, _1520 + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _1520:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * _1520) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (2 * ceil32(return_data.size)) + 448
                        while (2 * ceil32(return_data.size)) + _1520 + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, _1520 + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                address(stor10[address(arg1)].field_512) = address(arg2)
                stor10[address(arg1)].field_768 = arg3
                uint8(stor10[address(arg1)].field_1024) = uint8(ext_call.return_data[0])
                Mask(248, 0, stor10[address(arg1)].field_1032) = 0
                address(stor10[address(arg1)].field_1280) = address(arg4)
                address(stor10[address(arg1)].field_1536) = address(arg5)
                uint32(stor10[address(arg1)].field_1696) = 0
                stor10[address(arg1)].field_1792 = arg7
                stor10[address(arg1)].field_2048 = 0
                stor11[address(arg1)] = 1
            sub_eb6c8bcc.length++
            mem[0] = 9
            address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(arg1)
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[ceil32(return_data.size) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 416] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 447 < ceil32(return_data.size) + return_data.size + 416
            _1511 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 417 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 416])) + 417
            require mem[ceil32(return_data.size) + 416] + _1511 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 448 len ceil32(_1511)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 448 len ceil32(_1511)]
            address(stor10[address(arg1)].field_0) = uint64(arg1) << 96
            if bool(stor10[address(arg1)].field_256):
                if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                    revert with 'NH{q', 34
                if _1511:
                    stor10[address(arg1)][1][].field_0 = Array(len=_1511, data=mem[(2 * ceil32(return_data.size)) + 448 len _1511])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while (uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if _1511:
                    stor10[address(arg1)][1][].field_0 = Array(len=_1511, data=mem[(2 * ceil32(return_data.size)) + 448 len _1511])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while stor10[address(arg1)].field_257 % 128 + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            staticcall address(arg4).0x313ce567 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= 0 and uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[31 len 1] < 0 and uint8(ext_call.return_data[0]) > ext_call.return_data[31 len 1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = 0
            while idx < sub_eb6c8bcc.length:
                mem[0] = 9
                if address(sub_eb6c8bcc[idx].field_0) != address(arg1):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[(4 * ceil32(return_data.size)) + 96] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1514 = mem[(4 * ceil32(return_data.size)) + 416]
                require mem[(4 * ceil32(return_data.size)) + 416] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                _1522 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 417 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 417
                mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
                require _1514 + _1522 + 32 <= return_data.size
                idx = 0
                while idx < _1522:
                    mem[idx + (6 * ceil32(return_data.size)) + 448] = mem[idx + (4 * ceil32(return_data.size)) + _1514 + 448]
                    idx = idx + 32
                    continue 
                if ceil32(_1522) > _1522:
                    mem[(6 * ceil32(return_data.size)) + _1522 + 448] = 0
                mem[(4 * ceil32(return_data.size)) + 128] = (6 * ceil32(return_data.size)) + 416
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 192] = arg3
                mem[(4 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 256] = address(arg4)
                mem[(4 * ceil32(return_data.size)) + 288] = address(arg5)
                mem[(4 * ceil32(return_data.size)) + 320] = Mask(32, 224, arg6)
                mem[(4 * ceil32(return_data.size)) + 352] = arg7
                mem[(4 * ceil32(return_data.size)) + 384] = 0
                mem[32] = 10
                address(stor10[address(arg1)].field_0) = uint64(arg1) << 96
                if bool(stor10[address(arg1)].field_256):
                    if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(address(arg1), 10) + 1
                    if not mem[(6 * ceil32(return_data.size)) + 416]:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * mem[(6 * ceil32(return_data.size)) + 416]) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (6 * ceil32(return_data.size)) + 448
                        while (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416] + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, mem[(6 * ceil32(return_data.size)) + 416] + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + ((uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(address(arg1), 10) + 1
                    if not mem[(6 * ceil32(return_data.size)) + 416]:
                        stor10[address(arg1)].field_256 = 0
                        idx = sha3(sha3(address(arg1), 10) + 1)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor10[address(arg1)].field_256 = (2 * mem[(6 * ceil32(return_data.size)) + 416]) + 1
                        s = sha3(sha3(address(arg1), 10) + 1)
                        idx = (6 * ceil32(return_data.size)) + 448
                        while (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 416] + 448 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 10) + 1) + (Mask(251, 0, mem[(6 * ceil32(return_data.size)) + 416] + 31) >> 5)
                        while sha3(sha3(address(arg1), 10) + 1) + (stor10[address(arg1)].field_257 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                address(stor10[address(arg1)].field_512) = address(arg2)
                stor10[address(arg1)].field_768 = arg3
                uint8(stor10[address(arg1)].field_1024) = uint8(ext_call.return_data[0])
                Mask(248, 0, stor10[address(arg1)].field_1032) = 0
                address(stor10[address(arg1)].field_1280) = address(arg4)
                address(stor10[address(arg1)].field_1536) = address(arg5)
                uint32(stor10[address(arg1)].field_1696) = 0
                stor10[address(arg1)].field_1792 = arg7
                stor10[address(arg1)].field_2048 = 0
                stor11[address(arg1)] = 1
            sub_eb6c8bcc.length++
            address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(arg1)
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[(4 * ceil32(return_data.size)) + 416] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1505 = mem[(4 * ceil32(return_data.size)) + 416]
            require mem[(4 * ceil32(return_data.size)) + 416] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
            _1513 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416])) + 417 > test266151307():
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + 416] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416] + 416]
            require _1505 + _1513 + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 448 len ceil32(_1513)] = mem[(4 * ceil32(return_data.size)) + _1505 + 448 len ceil32(_1513)]
            if ceil32(_1513) > _1513:
                mem[(6 * ceil32(return_data.size)) + _1513 + 448] = 0
            address(stor10[address(arg1)].field_0) = uint64(arg1) << 96
            if bool(stor10[address(arg1)].field_256):
                if bool(stor10[address(arg1)].field_256) == uint255(stor10[address(arg1)].field_256) * 0.5 < 32:
                    revert with 'NH{q', 34
                if mem[(6 * ceil32(return_data.size)) + 416]:
                    stor10[address(arg1)][1][].field_0 = Array(len=mem[(6 * ceil32(return_data.size)) + 416], data=mem[(6 * ceil32(return_data.size)) + 448 len mem[(6 * ceil32(return_data.size)) + 416]])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while (uint255(stor10[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[address(arg1)].field_256) == stor10[address(arg1)].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                if mem[(6 * ceil32(return_data.size)) + 416]:
                    stor10[address(arg1)][1][].field_0 = Array(len=mem[(6 * ceil32(return_data.size)) + 416], data=mem[(6 * ceil32(return_data.size)) + 448 len mem[(6 * ceil32(return_data.size)) + 416]])
                else:
                    stor10[address(arg1)].field_256 = 0
                    idx = 0
                    while stor10[address(arg1)].field_257 % 128 + 31 / 32 > idx:
                        stor10[address(arg1)][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
    address(stor10[address(arg1)].field_512) = address(arg2)
    stor10[address(arg1)].field_768 = arg3
    uint8(stor10[address(arg1)].field_1024) = uint8(ext_call.return_data[0])
    Mask(248, 0, stor10[address(arg1)].field_1032) = 0
    address(stor10[address(arg1)].field_1280) = address(arg4)
    address(stor10[address(arg1)].field_1536) = address(arg5)
    uint32(stor10[address(arg1)].field_1696) = 0
    stor10[address(arg1)].field_1792 = arg7
    stor10[address(arg1)].field_2048 = 0
    stor11[address(arg1)] = 1
}

function sub_06b4d8c0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (224 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (224 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 224
        _1457 = mem[64]
        if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 224
        require cd[idx] == address(cd[idx])
        mem[_1457] = cd[idx]
        require cd[(idx + 32)] == address(cd[(idx + 32)])
        mem[_1457 + 32] = cd[(idx + 32)]
        mem[_1457 + 64] = cd[(idx + 64)]
        require cd[(idx + 96)] == address(cd[(idx + 96)])
        mem[_1457 + 96] = cd[(idx + 96)]
        require cd[(idx + 128)] == address(cd[(idx + 128)])
        mem[_1457 + 128] = cd[(idx + 128)]
        require cd[(idx + 160)] == Mask(32, 224, cd[(idx + 160)])
        mem[_1457 + 160] = cd[(idx + 160)]
        mem[_1457 + 192] = cd[(idx + 192)]
        mem[s] = _1457
        s = s + 32
        idx = idx + 224
        continue 
    if msg.sender == owner:
        _2912 = mem[96]
        idx = 0
        while idx < _2912:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2917 = mem[mem[(32 * idx) + 128]]
            _2918 = mem[mem[(32 * idx) + 128] + 32]
            _2919 = mem[mem[(32 * idx) + 128] + 64]
            _2920 = mem[mem[(32 * idx) + 128] + 96]
            _2921 = mem[mem[(32 * idx) + 128] + 128]
            _2922 = mem[mem[(32 * idx) + 128] + 160]
            _2923 = mem[mem[(32 * idx) + 128] + 192]
            if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                revert with 0, 'Cannot add zero address'
            if not mem[mem[(32 * idx) + 128] + 108 len 20]:
                s = 0
                while s < sub_eb6c8bcc.length:
                    mem[0] = 9
                    if address(sub_eb6c8bcc[s].field_0) != address(_2917):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    staticcall address(_2918).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4389 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4399 = mem[_4389]
                    require mem[_4389] == mem[_4389 + 31 len 1]
                    _4416 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4416] = address(_2917)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    staticcall address(_2917).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4429 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4437 = mem[_4429]
                    require mem[_4429] <= test266151307()
                    require _4429 + mem[_4429] + 31 < _4429 + return_data.size
                    _4445 = mem[_4429 + mem[_4429]]
                    if mem[_4429 + mem[_4429]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4429 + mem[_4429]])) + 1 < 0 or _4429 + ceil32(return_data.size) + ceil32(ceil32(mem[_4429 + mem[_4429]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4429 + ceil32(return_data.size) + ceil32(ceil32(mem[_4429 + mem[_4429]])) + 1
                    mem[_4429 + ceil32(return_data.size)] = _4445
                    require _4437 + _4445 + 32 <= return_data.size
                    s = 0
                    while s < _4445:
                        mem[s + _4429 + ceil32(return_data.size) + 32] = mem[s + _4429 + _4437 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4445) > _4445:
                        mem[_4429 + ceil32(return_data.size) + _4445 + 32] = 0
                    mem[_4416 + 32] = _4429 + ceil32(return_data.size)
                    mem[_4416 + 64] = address(_2918)
                    mem[_4416 + 96] = _2919
                    mem[_4416 + 128] = uint8(_4399)
                    mem[_4416 + 160] = address(_2920)
                    mem[_4416 + 192] = address(_2921)
                    mem[_4416 + 224] = Mask(32, 224, _2922)
                    mem[_4416 + 256] = _2923
                    mem[_4416 + 288] = 0
                    mem[0] = address(_2917)
                    mem[32] = 10
                    address(stor10[address(_2917)].field_0) = mem[_4416 + 12 len 20]
                    if bool(stor10[address(_2917)].field_256):
                        if bool(stor10[address(_2917)].field_256) == uint255(stor10[address(_2917)].field_256) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not _4445:
                            stor10[address(_2917)].field_256 = 0
                            s = sha3(sha3(address(_2917), 10) + 1)
                            while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[address(_2917)].field_256 = (2 * _4445) + 1
                            t = sha3(sha3(address(_2917), 10) + 1)
                            s = _4429 + ceil32(return_data.size) + 32
                            while _4429 + ceil32(return_data.size) + _4445 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4445 + 31) >> 5)
                            while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[address(_2917)].field_256) == stor10[address(_2917)].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        if not _4445:
                            stor10[address(_2917)].field_256 = 0
                            s = sha3(sha3(address(_2917), 10) + 1)
                            while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[address(_2917)].field_256 = (2 * _4445) + 1
                            t = sha3(sha3(address(_2917), 10) + 1)
                            s = _4429 + ceil32(return_data.size) + 32
                            while _4429 + ceil32(return_data.size) + _4445 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4445 + 31) >> 5)
                            while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor10[address(_2917)].field_512) = address(_2918)
                    stor10[address(_2917)].field_768 = _2919
                    uint8(stor10[address(_2917)].field_1024) = uint8(_4399)
                    Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                    address(stor10[address(_2917)].field_1280) = address(_2920)
                    address(stor10[address(_2917)].field_1536) = address(_2921)
                    uint32(stor10[address(_2917)].field_1696) = 0
                    stor10[address(_2917)].field_1792 = _2923
                    stor10[address(_2917)].field_2048 = 0
                    mem[0] = address(_2917)
                    mem[32] = 11
                    stor11[address(_2917)] = 1
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                sub_eb6c8bcc.length++
                mem[0] = 9
                address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(_2917)
                staticcall address(_2918).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4388 = mem[_4376]
                require mem[_4376] == mem[_4376 + 31 len 1]
                _4396 = mem[64]
                mem[64] = mem[64] + 320
                mem[_4396] = address(_2917)
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(_2917).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4412 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4428 = mem[_4412]
                require mem[_4412] <= test266151307()
                require _4412 + mem[_4412] + 31 < _4412 + return_data.size
                _4436 = mem[_4412 + mem[_4412]]
                if mem[_4412 + mem[_4412]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4412 + mem[_4412]])) + 1 < 0 or _4412 + ceil32(return_data.size) + ceil32(ceil32(mem[_4412 + mem[_4412]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4412 + ceil32(return_data.size) + ceil32(ceil32(mem[_4412 + mem[_4412]])) + 1
                mem[_4412 + ceil32(return_data.size)] = _4436
                require _4428 + _4436 + 32 <= return_data.size
                s = 0
                while s < _4436:
                    mem[s + _4412 + ceil32(return_data.size) + 32] = mem[s + _4412 + _4428 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4436) > _4436:
                    mem[_4412 + ceil32(return_data.size) + _4436 + 32] = 0
                mem[_4396 + 32] = _4412 + ceil32(return_data.size)
                mem[_4396 + 64] = address(_2918)
                mem[_4396 + 96] = _2919
                mem[_4396 + 128] = uint8(_4388)
                mem[_4396 + 160] = address(_2920)
                mem[_4396 + 192] = address(_2921)
                mem[_4396 + 224] = Mask(32, 224, _2922)
                mem[_4396 + 256] = _2923
                mem[_4396 + 288] = 0
                mem[0] = address(_2917)
                mem[32] = 10
                address(stor10[address(_2917)].field_0) = mem[_4396 + 12 len 20]
                if bool(stor10[address(_2917)].field_256):
                    if bool(stor10[address(_2917)].field_256) == uint255(stor10[address(_2917)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not _4436:
                        stor10[address(_2917)].field_256 = 0
                        s = sha3(sha3(address(_2917), 10) + 1)
                        while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2917)].field_256 = (2 * _4436) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4412 + ceil32(return_data.size) + 32
                        while _4412 + ceil32(return_data.size) + _4436 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4436 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor10[address(_2917)].field_256) == stor10[address(_2917)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _4436:
                        stor10[address(_2917)].field_256 = 0
                        s = sha3(sha3(address(_2917), 10) + 1)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2917)].field_256 = (2 * _4436) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4412 + ceil32(return_data.size) + 32
                        while _4412 + ceil32(return_data.size) + _4436 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4436 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                address(stor10[address(_2917)].field_512) = address(_2918)
                stor10[address(_2917)].field_768 = _2919
                uint8(stor10[address(_2917)].field_1024) = uint8(_4388)
                Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                address(stor10[address(_2917)].field_1280) = address(_2920)
                address(stor10[address(_2917)].field_1536) = address(_2921)
                uint32(stor10[address(_2917)].field_1696) = 0
                stor10[address(_2917)].field_1792 = _2923
                stor10[address(_2917)].field_2048 = 0
            else:
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2940 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2943 = mem[_2940]
                require mem[_2940] == mem[_2940 + 31 len 1]
                staticcall address(_2920).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2958 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2966 = mem[_2958]
                require mem[_2958] == mem[_2958 + 31 len 1]
                if mem[_2958 + 31 len 1] >= 0 and uint8(_2943) < mem[_2958 + 31 len 1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if mem[_2958 + 31 len 1] < 0 and uint8(_2943) > mem[_2958 + 31 len 1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = 0
                while s < sub_eb6c8bcc.length:
                    mem[0] = 9
                    if address(sub_eb6c8bcc[s].field_0) != address(_2917):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    staticcall address(_2918).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4391 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4403 = mem[_4391]
                    require mem[_4391] == mem[_4391 + 31 len 1]
                    _4419 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4419] = address(_2917)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    staticcall address(_2917).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4431 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4439 = mem[_4431]
                    require mem[_4431] <= test266151307()
                    require _4431 + mem[_4431] + 31 < _4431 + return_data.size
                    _4447 = mem[_4431 + mem[_4431]]
                    if mem[_4431 + mem[_4431]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4431 + mem[_4431]])) + 1 < 0 or _4431 + ceil32(return_data.size) + ceil32(ceil32(mem[_4431 + mem[_4431]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4431 + ceil32(return_data.size) + ceil32(ceil32(mem[_4431 + mem[_4431]])) + 1
                    mem[_4431 + ceil32(return_data.size)] = _4447
                    require _4439 + _4447 + 32 <= return_data.size
                    s = 0
                    while s < _4447:
                        mem[s + _4431 + ceil32(return_data.size) + 32] = mem[s + _4431 + _4439 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4447) <= _4447:
                        mem[_4419 + 32] = _4431 + ceil32(return_data.size)
                        mem[_4419 + 64] = address(_2918)
                        mem[_4419 + 96] = _2919
                        mem[_4419 + 128] = uint8(_4403)
                        mem[_4419 + 160] = address(_2920)
                        mem[_4419 + 192] = address(_2921)
                        mem[_4419 + 224] = Mask(32, 224, _2922)
                        mem[_4419 + 256] = _2923
                        mem[_4419 + 288] = uint8(_2943) - uint8(_2966)
                        mem[0] = address(_2917)
                        mem[32] = 10
                        address(stor10[address(_2917)].field_0) = mem[_4419 + 12 len 20]
                        if bool(stor10[address(_2917)].field_256):
                            if bool(stor10[address(_2917)].field_256) == uint255(stor10[address(_2917)].field_256) * 0.5 < 32:
                                revert with 'NH{q', 34
                            if not _4447:
                                stor10[address(_2917)].field_256 = 0
                                s = sha3(sha3(address(_2917), 10) + 1)
                                while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[address(_2917)].field_256 = (2 * _4447) + 1
                                t = sha3(sha3(address(_2917), 10) + 1)
                                s = _4431 + ceil32(return_data.size) + 32
                                while _4431 + ceil32(return_data.size) + _4447 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4447 + 31) >> 5)
                                while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor10[address(_2917)].field_512) = address(_2918)
                            stor10[address(_2917)].field_768 = _2919
                            uint8(stor10[address(_2917)].field_1024) = uint8(_4403)
                            Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                            address(stor10[address(_2917)].field_1280) = address(_2920)
                            address(stor10[address(_2917)].field_1536) = address(_2921)
                            uint32(stor10[address(_2917)].field_1696) = 0
                            stor10[address(_2917)].field_1792 = _2923
                            stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
                            mem[0] = address(_2917)
                            mem[32] = 11
                            stor11[address(_2917)] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if bool(stor10[address(_2917)].field_256) == stor10[address(_2917)].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        if not _4447:
                            stor10[address(_2917)].field_256 = 0
                            s = sha3(sha3(address(_2917), 10) + 1)
                            while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            address(stor10[address(_2917)].field_512) = address(_2918)
                            stor10[address(_2917)].field_768 = _2919
                            uint8(stor10[address(_2917)].field_1024) = uint8(_4403)
                            Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                            address(stor10[address(_2917)].field_1280) = address(_2920)
                            address(stor10[address(_2917)].field_1536) = address(_2921)
                            uint32(stor10[address(_2917)].field_1696) = 0
                            stor10[address(_2917)].field_1792 = _2923
                            stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
                            mem[0] = address(_2917)
                            mem[32] = 11
                            stor11[address(_2917)] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor10[address(_2917)].field_256 = (2 * _4447) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4431 + ceil32(return_data.size) + 32
                        while _4431 + ceil32(return_data.size) + _4447 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4447 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        address(stor10[address(_2917)].field_512) = address(_2918)
                        stor10[address(_2917)].field_768 = _2919
                        uint8(stor10[address(_2917)].field_1024) = uint8(_4403)
                        Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                        address(stor10[address(_2917)].field_1280) = address(_2920)
                        address(stor10[address(_2917)].field_1536) = address(_2921)
                        uint32(stor10[address(_2917)].field_1696) = 0
                        stor10[address(_2917)].field_1792 = _2923
                        stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
                        mem[0] = address(_2917)
                        mem[32] = 11
                        stor11[address(_2917)] = 1
                        if sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) + 1
                        continue 
                    mem[_4431 + ceil32(return_data.size) + _4447 + 32] = 0
                    mem[_4419 + 32] = _4431 + ceil32(return_data.size)
                    mem[_4419 + 64] = address(_2918)
                    mem[_4419 + 96] = _2919
                    mem[_4419 + 128] = uint8(_4403)
                    mem[_4419 + 160] = address(_2920)
                    mem[_4419 + 192] = address(_2921)
                    mem[_4419 + 224] = Mask(32, 224, _2922)
                    mem[_4419 + 256] = _2923
                    mem[_4419 + 288] = uint8(_2943) - uint8(_2966)
                    mem[0] = address(_2917)
                    mem[32] = 10
                    address(stor10[address(_2917)].field_0) = mem[_4419 + 12 len 20]
                    if bool(stor10[address(_2917)].field_256):
                        if bool(stor10[address(_2917)].field_256) == uint255(stor10[address(_2917)].field_256) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not _4447:
                            stor10[address(_2917)].field_256 = 0
                            s = sha3(sha3(address(_2917), 10) + 1)
                            while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            address(stor10[address(_2917)].field_512) = address(_2918)
                            stor10[address(_2917)].field_768 = _2919
                            uint8(stor10[address(_2917)].field_1024) = uint8(_4403)
                            Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                            address(stor10[address(_2917)].field_1280) = address(_2920)
                            address(stor10[address(_2917)].field_1536) = address(_2921)
                            uint32(stor10[address(_2917)].field_1696) = 0
                            stor10[address(_2917)].field_1792 = _2923
                            stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
                            mem[0] = address(_2917)
                            mem[32] = 11
                            stor11[address(_2917)] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor10[address(_2917)].field_256 = (2 * _4447) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4431 + ceil32(return_data.size) + 32
                        while _4431 + ceil32(return_data.size) + _4447 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4447 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        address(stor10[address(_2917)].field_512) = address(_2918)
                        stor10[address(_2917)].field_768 = _2919
                        uint8(stor10[address(_2917)].field_1024) = uint8(_4403)
                        Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                        address(stor10[address(_2917)].field_1280) = address(_2920)
                        address(stor10[address(_2917)].field_1536) = address(_2921)
                        uint32(stor10[address(_2917)].field_1696) = 0
                        stor10[address(_2917)].field_1792 = _2923
                        stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
                        mem[0] = address(_2917)
                        mem[32] = 11
                        stor11[address(_2917)] = 1
                        if sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) + 1
                        continue 
                    if bool(stor10[address(_2917)].field_256) == stor10[address(_2917)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _4447:
                        stor10[address(_2917)].field_256 = 0
                        s = sha3(sha3(address(_2917), 10) + 1)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2917)].field_256 = (2 * _4447) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4431 + ceil32(return_data.size) + 32
                        while _4431 + ceil32(return_data.size) + _4447 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4447 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    address(stor10[address(_2917)].field_512) = address(_2918)
                    stor10[address(_2917)].field_768 = _2919
                    uint8(stor10[address(_2917)].field_1024) = uint8(_4403)
                    Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                    address(stor10[address(_2917)].field_1280) = address(_2920)
                    address(stor10[address(_2917)].field_1536) = address(_2921)
                    uint32(stor10[address(_2917)].field_1696) = 0
                    stor10[address(_2917)].field_1792 = _2923
                    stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
                    mem[0] = address(_2917)
                    mem[32] = 11
                    stor11[address(_2917)] = 1
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                sub_eb6c8bcc.length++
                mem[0] = 9
                address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(_2917)
                staticcall address(_2918).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4390 = mem[_4377]
                require mem[_4377] == mem[_4377 + 31 len 1]
                _4400 = mem[64]
                mem[64] = mem[64] + 320
                mem[_4400] = address(_2917)
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(_2917).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4413 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4430 = mem[_4413]
                require mem[_4413] <= test266151307()
                require _4413 + mem[_4413] + 31 < _4413 + return_data.size
                _4438 = mem[_4413 + mem[_4413]]
                if mem[_4413 + mem[_4413]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4413 + mem[_4413]])) + 1 < 0 or _4413 + ceil32(return_data.size) + ceil32(ceil32(mem[_4413 + mem[_4413]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4413 + ceil32(return_data.size) + ceil32(ceil32(mem[_4413 + mem[_4413]])) + 1
                mem[_4413 + ceil32(return_data.size)] = _4438
                require _4430 + _4438 + 32 <= return_data.size
                s = 0
                while s < _4438:
                    mem[s + _4413 + ceil32(return_data.size) + 32] = mem[s + _4413 + _4430 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4438) > _4438:
                    mem[_4413 + ceil32(return_data.size) + _4438 + 32] = 0
                mem[_4400 + 32] = _4413 + ceil32(return_data.size)
                mem[_4400 + 64] = address(_2918)
                mem[_4400 + 96] = _2919
                mem[_4400 + 128] = uint8(_4390)
                mem[_4400 + 160] = address(_2920)
                mem[_4400 + 192] = address(_2921)
                mem[_4400 + 224] = Mask(32, 224, _2922)
                mem[_4400 + 256] = _2923
                mem[_4400 + 288] = uint8(_2943) - uint8(_2966)
                mem[0] = address(_2917)
                mem[32] = 10
                address(stor10[address(_2917)].field_0) = mem[_4400 + 12 len 20]
                if bool(stor10[address(_2917)].field_256):
                    if bool(stor10[address(_2917)].field_256) == uint255(stor10[address(_2917)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not _4438:
                        stor10[address(_2917)].field_256 = 0
                        s = sha3(sha3(address(_2917), 10) + 1)
                        while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2917)].field_256 = (2 * _4438) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4413 + ceil32(return_data.size) + 32
                        while _4413 + ceil32(return_data.size) + _4438 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4438 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + ((uint255(stor10[address(_2917)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor10[address(_2917)].field_256) == stor10[address(_2917)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _4438:
                        stor10[address(_2917)].field_256 = 0
                        s = sha3(sha3(address(_2917), 10) + 1)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2917)].field_256 = (2 * _4438) + 1
                        t = sha3(sha3(address(_2917), 10) + 1)
                        s = _4413 + ceil32(return_data.size) + 32
                        while _4413 + ceil32(return_data.size) + _4438 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2917), 10) + 1) + (Mask(251, 0, _4438 + 31) >> 5)
                        while sha3(sha3(address(_2917), 10) + 1) + (stor10[address(_2917)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                address(stor10[address(_2917)].field_512) = address(_2918)
                stor10[address(_2917)].field_768 = _2919
                uint8(stor10[address(_2917)].field_1024) = uint8(_4390)
                Mask(248, 0, stor10[address(_2917)].field_1032) = 0
                address(stor10[address(_2917)].field_1280) = address(_2920)
                address(stor10[address(_2917)].field_1536) = address(_2921)
                uint32(stor10[address(_2917)].field_1696) = 0
                stor10[address(_2917)].field_1792 = _2923
                stor10[address(_2917)].field_2048 = uint8(_2943) - uint8(_2966)
            mem[0] = address(_2917)
            mem[32] = 11
            stor11[address(_2917)] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if stor2 != msg.sender:
            revert with 0, 'You are not an owner or the governance timelock'
        _2913 = mem[96]
        idx = 0
        while idx < _2913:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2925 = mem[mem[(32 * idx) + 128]]
            _2926 = mem[mem[(32 * idx) + 128] + 32]
            _2927 = mem[mem[(32 * idx) + 128] + 64]
            _2928 = mem[mem[(32 * idx) + 128] + 96]
            _2929 = mem[mem[(32 * idx) + 128] + 128]
            _2930 = mem[mem[(32 * idx) + 128] + 160]
            _2931 = mem[mem[(32 * idx) + 128] + 192]
            if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                revert with 0, 'Cannot add zero address'
            if not mem[mem[(32 * idx) + 128] + 108 len 20]:
                s = 0
                while s < sub_eb6c8bcc.length:
                    mem[0] = 9
                    if address(sub_eb6c8bcc[s].field_0) != address(_2925):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    staticcall address(_2926).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4407 = mem[_4393]
                    require mem[_4393] == mem[_4393 + 31 len 1]
                    _4422 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4422] = address(_2925)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    staticcall address(_2925).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4433 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4441 = mem[_4433]
                    require mem[_4433] <= test266151307()
                    require _4433 + mem[_4433] + 31 < _4433 + return_data.size
                    _4449 = mem[_4433 + mem[_4433]]
                    if mem[_4433 + mem[_4433]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4433 + mem[_4433]])) + 1 < 0 or _4433 + ceil32(return_data.size) + ceil32(ceil32(mem[_4433 + mem[_4433]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4433 + ceil32(return_data.size) + ceil32(ceil32(mem[_4433 + mem[_4433]])) + 1
                    mem[_4433 + ceil32(return_data.size)] = _4449
                    require _4441 + _4449 + 32 <= return_data.size
                    s = 0
                    while s < _4449:
                        mem[s + _4433 + ceil32(return_data.size) + 32] = mem[s + _4433 + _4441 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4449) > _4449:
                        mem[_4433 + ceil32(return_data.size) + _4449 + 32] = 0
                    mem[_4422 + 32] = _4433 + ceil32(return_data.size)
                    mem[_4422 + 64] = address(_2926)
                    mem[_4422 + 96] = _2927
                    mem[_4422 + 128] = uint8(_4407)
                    mem[_4422 + 160] = address(_2928)
                    mem[_4422 + 192] = address(_2929)
                    mem[_4422 + 224] = Mask(32, 224, _2930)
                    mem[_4422 + 256] = _2931
                    mem[_4422 + 288] = 0
                    mem[0] = address(_2925)
                    mem[32] = 10
                    address(stor10[address(_2925)].field_0) = mem[_4422 + 12 len 20]
                    if bool(stor10[address(_2925)].field_256):
                        if bool(stor10[address(_2925)].field_256) == uint255(stor10[address(_2925)].field_256) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not _4449:
                            stor10[address(_2925)].field_256 = 0
                            s = sha3(sha3(address(_2925), 10) + 1)
                            while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[address(_2925)].field_256 = (2 * _4449) + 1
                            t = sha3(sha3(address(_2925), 10) + 1)
                            s = _4433 + ceil32(return_data.size) + 32
                            while _4433 + ceil32(return_data.size) + _4449 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4449 + 31) >> 5)
                            while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[address(_2925)].field_256) == stor10[address(_2925)].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        if not _4449:
                            stor10[address(_2925)].field_256 = 0
                            s = sha3(sha3(address(_2925), 10) + 1)
                            while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[address(_2925)].field_256 = (2 * _4449) + 1
                            t = sha3(sha3(address(_2925), 10) + 1)
                            s = _4433 + ceil32(return_data.size) + 32
                            while _4433 + ceil32(return_data.size) + _4449 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4449 + 31) >> 5)
                            while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor10[address(_2925)].field_512) = address(_2926)
                    stor10[address(_2925)].field_768 = _2927
                    uint8(stor10[address(_2925)].field_1024) = uint8(_4407)
                    Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                    address(stor10[address(_2925)].field_1280) = address(_2928)
                    address(stor10[address(_2925)].field_1536) = address(_2929)
                    uint32(stor10[address(_2925)].field_1696) = 0
                    stor10[address(_2925)].field_1792 = _2931
                    stor10[address(_2925)].field_2048 = 0
                    mem[0] = address(_2925)
                    mem[32] = 11
                    stor11[address(_2925)] = 1
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                sub_eb6c8bcc.length++
                mem[0] = 9
                address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(_2925)
                staticcall address(_2926).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4392 = mem[_4378]
                require mem[_4378] == mem[_4378 + 31 len 1]
                _4404 = mem[64]
                mem[64] = mem[64] + 320
                mem[_4404] = address(_2925)
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(_2925).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4414 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4432 = mem[_4414]
                require mem[_4414] <= test266151307()
                require _4414 + mem[_4414] + 31 < _4414 + return_data.size
                _4440 = mem[_4414 + mem[_4414]]
                if mem[_4414 + mem[_4414]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4414 + mem[_4414]])) + 1 < 0 or _4414 + ceil32(return_data.size) + ceil32(ceil32(mem[_4414 + mem[_4414]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4414 + ceil32(return_data.size) + ceil32(ceil32(mem[_4414 + mem[_4414]])) + 1
                mem[_4414 + ceil32(return_data.size)] = _4440
                require _4432 + _4440 + 32 <= return_data.size
                s = 0
                while s < _4440:
                    mem[s + _4414 + ceil32(return_data.size) + 32] = mem[s + _4414 + _4432 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4440) > _4440:
                    mem[_4414 + ceil32(return_data.size) + _4440 + 32] = 0
                mem[_4404 + 32] = _4414 + ceil32(return_data.size)
                mem[_4404 + 64] = address(_2926)
                mem[_4404 + 96] = _2927
                mem[_4404 + 128] = uint8(_4392)
                mem[_4404 + 160] = address(_2928)
                mem[_4404 + 192] = address(_2929)
                mem[_4404 + 224] = Mask(32, 224, _2930)
                mem[_4404 + 256] = _2931
                mem[_4404 + 288] = 0
                mem[0] = address(_2925)
                mem[32] = 10
                address(stor10[address(_2925)].field_0) = mem[_4404 + 12 len 20]
                if bool(stor10[address(_2925)].field_256):
                    if bool(stor10[address(_2925)].field_256) == uint255(stor10[address(_2925)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not _4440:
                        stor10[address(_2925)].field_256 = 0
                        s = sha3(sha3(address(_2925), 10) + 1)
                        while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2925)].field_256 = (2 * _4440) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4414 + ceil32(return_data.size) + 32
                        while _4414 + ceil32(return_data.size) + _4440 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4440 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor10[address(_2925)].field_256) == stor10[address(_2925)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _4440:
                        stor10[address(_2925)].field_256 = 0
                        s = sha3(sha3(address(_2925), 10) + 1)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2925)].field_256 = (2 * _4440) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4414 + ceil32(return_data.size) + 32
                        while _4414 + ceil32(return_data.size) + _4440 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4440 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                address(stor10[address(_2925)].field_512) = address(_2926)
                stor10[address(_2925)].field_768 = _2927
                uint8(stor10[address(_2925)].field_1024) = uint8(_4392)
                Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                address(stor10[address(_2925)].field_1280) = address(_2928)
                address(stor10[address(_2925)].field_1536) = address(_2929)
                uint32(stor10[address(_2925)].field_1696) = 0
                stor10[address(_2925)].field_1792 = _2931
                stor10[address(_2925)].field_2048 = 0
            else:
                staticcall mem[mem[(32 * idx) + 128] + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2945 = mem[_2941]
                require mem[_2941] == mem[_2941 + 31 len 1]
                staticcall address(_2928).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2967 = mem[_2961]
                require mem[_2961] == mem[_2961 + 31 len 1]
                if mem[_2961 + 31 len 1] >= 0 and uint8(_2945) < mem[_2961 + 31 len 1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if mem[_2961 + 31 len 1] < 0 and uint8(_2945) > mem[_2961 + 31 len 1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = 0
                while s < sub_eb6c8bcc.length:
                    mem[0] = 9
                    if address(sub_eb6c8bcc[s].field_0) != address(_2925):
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    staticcall address(_2926).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4395 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4411 = mem[_4395]
                    require mem[_4395] == mem[_4395 + 31 len 1]
                    _4425 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4425] = address(_2925)
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    staticcall address(_2925).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4435 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4443 = mem[_4435]
                    require mem[_4435] <= test266151307()
                    require _4435 + mem[_4435] + 31 < _4435 + return_data.size
                    _4451 = mem[_4435 + mem[_4435]]
                    if mem[_4435 + mem[_4435]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4435 + mem[_4435]])) + 1 < 0 or _4435 + ceil32(return_data.size) + ceil32(ceil32(mem[_4435 + mem[_4435]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4435 + ceil32(return_data.size) + ceil32(ceil32(mem[_4435 + mem[_4435]])) + 1
                    mem[_4435 + ceil32(return_data.size)] = _4451
                    require _4443 + _4451 + 32 <= return_data.size
                    s = 0
                    while s < _4451:
                        mem[s + _4435 + ceil32(return_data.size) + 32] = mem[s + _4435 + _4443 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4451) <= _4451:
                        mem[_4425 + 32] = _4435 + ceil32(return_data.size)
                        mem[_4425 + 64] = address(_2926)
                        mem[_4425 + 96] = _2927
                        mem[_4425 + 128] = uint8(_4411)
                        mem[_4425 + 160] = address(_2928)
                        mem[_4425 + 192] = address(_2929)
                        mem[_4425 + 224] = Mask(32, 224, _2930)
                        mem[_4425 + 256] = _2931
                        mem[_4425 + 288] = uint8(_2945) - uint8(_2967)
                        mem[0] = address(_2925)
                        mem[32] = 10
                        address(stor10[address(_2925)].field_0) = mem[_4425 + 12 len 20]
                        if bool(stor10[address(_2925)].field_256):
                            if bool(stor10[address(_2925)].field_256) == uint255(stor10[address(_2925)].field_256) * 0.5 < 32:
                                revert with 'NH{q', 34
                            if not _4451:
                                stor10[address(_2925)].field_256 = 0
                                s = sha3(sha3(address(_2925), 10) + 1)
                                while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[address(_2925)].field_256 = (2 * _4451) + 1
                                t = sha3(sha3(address(_2925), 10) + 1)
                                s = _4435 + ceil32(return_data.size) + 32
                                while _4435 + ceil32(return_data.size) + _4451 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4451 + 31) >> 5)
                                while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor10[address(_2925)].field_512) = address(_2926)
                            stor10[address(_2925)].field_768 = _2927
                            uint8(stor10[address(_2925)].field_1024) = uint8(_4411)
                            Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                            address(stor10[address(_2925)].field_1280) = address(_2928)
                            address(stor10[address(_2925)].field_1536) = address(_2929)
                            uint32(stor10[address(_2925)].field_1696) = 0
                            stor10[address(_2925)].field_1792 = _2931
                            stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
                            mem[0] = address(_2925)
                            mem[32] = 11
                            stor11[address(_2925)] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if bool(stor10[address(_2925)].field_256) == stor10[address(_2925)].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        if not _4451:
                            stor10[address(_2925)].field_256 = 0
                            s = sha3(sha3(address(_2925), 10) + 1)
                            while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            address(stor10[address(_2925)].field_512) = address(_2926)
                            stor10[address(_2925)].field_768 = _2927
                            uint8(stor10[address(_2925)].field_1024) = uint8(_4411)
                            Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                            address(stor10[address(_2925)].field_1280) = address(_2928)
                            address(stor10[address(_2925)].field_1536) = address(_2929)
                            uint32(stor10[address(_2925)].field_1696) = 0
                            stor10[address(_2925)].field_1792 = _2931
                            stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
                            mem[0] = address(_2925)
                            mem[32] = 11
                            stor11[address(_2925)] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor10[address(_2925)].field_256 = (2 * _4451) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4435 + ceil32(return_data.size) + 32
                        while _4435 + ceil32(return_data.size) + _4451 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4451 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        address(stor10[address(_2925)].field_512) = address(_2926)
                        stor10[address(_2925)].field_768 = _2927
                        uint8(stor10[address(_2925)].field_1024) = uint8(_4411)
                        Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                        address(stor10[address(_2925)].field_1280) = address(_2928)
                        address(stor10[address(_2925)].field_1536) = address(_2929)
                        uint32(stor10[address(_2925)].field_1696) = 0
                        stor10[address(_2925)].field_1792 = _2931
                        stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
                        mem[0] = address(_2925)
                        mem[32] = 11
                        stor11[address(_2925)] = 1
                        if sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) + 1
                        continue 
                    mem[_4435 + ceil32(return_data.size) + _4451 + 32] = 0
                    mem[_4425 + 32] = _4435 + ceil32(return_data.size)
                    mem[_4425 + 64] = address(_2926)
                    mem[_4425 + 96] = _2927
                    mem[_4425 + 128] = uint8(_4411)
                    mem[_4425 + 160] = address(_2928)
                    mem[_4425 + 192] = address(_2929)
                    mem[_4425 + 224] = Mask(32, 224, _2930)
                    mem[_4425 + 256] = _2931
                    mem[_4425 + 288] = uint8(_2945) - uint8(_2967)
                    mem[0] = address(_2925)
                    mem[32] = 10
                    address(stor10[address(_2925)].field_0) = mem[_4425 + 12 len 20]
                    if bool(stor10[address(_2925)].field_256):
                        if bool(stor10[address(_2925)].field_256) == uint255(stor10[address(_2925)].field_256) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not _4451:
                            stor10[address(_2925)].field_256 = 0
                            s = sha3(sha3(address(_2925), 10) + 1)
                            while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            address(stor10[address(_2925)].field_512) = address(_2926)
                            stor10[address(_2925)].field_768 = _2927
                            uint8(stor10[address(_2925)].field_1024) = uint8(_4411)
                            Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                            address(stor10[address(_2925)].field_1280) = address(_2928)
                            address(stor10[address(_2925)].field_1536) = address(_2929)
                            uint32(stor10[address(_2925)].field_1696) = 0
                            stor10[address(_2925)].field_1792 = _2931
                            stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
                            mem[0] = address(_2925)
                            mem[32] = 11
                            stor11[address(_2925)] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor10[address(_2925)].field_256 = (2 * _4451) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4435 + ceil32(return_data.size) + 32
                        while _4435 + ceil32(return_data.size) + _4451 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4451 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        address(stor10[address(_2925)].field_512) = address(_2926)
                        stor10[address(_2925)].field_768 = _2927
                        uint8(stor10[address(_2925)].field_1024) = uint8(_4411)
                        Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                        address(stor10[address(_2925)].field_1280) = address(_2928)
                        address(stor10[address(_2925)].field_1536) = address(_2929)
                        uint32(stor10[address(_2925)].field_1696) = 0
                        stor10[address(_2925)].field_1792 = _2931
                        stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
                        mem[0] = address(_2925)
                        mem[32] = 11
                        stor11[address(_2925)] = 1
                        if sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        s = sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) + 1
                        continue 
                    if bool(stor10[address(_2925)].field_256) == stor10[address(_2925)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _4451:
                        stor10[address(_2925)].field_256 = 0
                        s = sha3(sha3(address(_2925), 10) + 1)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2925)].field_256 = (2 * _4451) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4435 + ceil32(return_data.size) + 32
                        while _4435 + ceil32(return_data.size) + _4451 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4451 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    address(stor10[address(_2925)].field_512) = address(_2926)
                    stor10[address(_2925)].field_768 = _2927
                    uint8(stor10[address(_2925)].field_1024) = uint8(_4411)
                    Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                    address(stor10[address(_2925)].field_1280) = address(_2928)
                    address(stor10[address(_2925)].field_1536) = address(_2929)
                    uint32(stor10[address(_2925)].field_1696) = 0
                    stor10[address(_2925)].field_1792 = _2931
                    stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
                    mem[0] = address(_2925)
                    mem[32] = 11
                    stor11[address(_2925)] = 1
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                sub_eb6c8bcc.length++
                mem[0] = 9
                address(sub_eb6c8bcc[sub_eb6c8bcc.length].field_0) = address(_2925)
                staticcall address(_2926).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4394 = mem[_4379]
                require mem[_4379] == mem[_4379 + 31 len 1]
                _4408 = mem[64]
                mem[64] = mem[64] + 320
                mem[_4408] = address(_2925)
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(_2925).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4415 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4434 = mem[_4415]
                require mem[_4415] <= test266151307()
                require _4415 + mem[_4415] + 31 < _4415 + return_data.size
                _4442 = mem[_4415 + mem[_4415]]
                if mem[_4415 + mem[_4415]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4415 + mem[_4415]])) + 1 < 0 or _4415 + ceil32(return_data.size) + ceil32(ceil32(mem[_4415 + mem[_4415]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4415 + ceil32(return_data.size) + ceil32(ceil32(mem[_4415 + mem[_4415]])) + 1
                mem[_4415 + ceil32(return_data.size)] = _4442
                require _4434 + _4442 + 32 <= return_data.size
                s = 0
                while s < _4442:
                    mem[s + _4415 + ceil32(return_data.size) + 32] = mem[s + _4415 + _4434 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4442) > _4442:
                    mem[_4415 + ceil32(return_data.size) + _4442 + 32] = 0
                mem[_4408 + 32] = _4415 + ceil32(return_data.size)
                mem[_4408 + 64] = address(_2926)
                mem[_4408 + 96] = _2927
                mem[_4408 + 128] = uint8(_4394)
                mem[_4408 + 160] = address(_2928)
                mem[_4408 + 192] = address(_2929)
                mem[_4408 + 224] = Mask(32, 224, _2930)
                mem[_4408 + 256] = _2931
                mem[_4408 + 288] = uint8(_2945) - uint8(_2967)
                mem[0] = address(_2925)
                mem[32] = 10
                address(stor10[address(_2925)].field_0) = mem[_4408 + 12 len 20]
                if bool(stor10[address(_2925)].field_256):
                    if bool(stor10[address(_2925)].field_256) == uint255(stor10[address(_2925)].field_256) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not _4442:
                        stor10[address(_2925)].field_256 = 0
                        s = sha3(sha3(address(_2925), 10) + 1)
                        while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2925)].field_256 = (2 * _4442) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4415 + ceil32(return_data.size) + 32
                        while _4415 + ceil32(return_data.size) + _4442 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4442 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + ((uint255(stor10[address(_2925)].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor10[address(_2925)].field_256) == stor10[address(_2925)].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if not _4442:
                        stor10[address(_2925)].field_256 = 0
                        s = sha3(sha3(address(_2925), 10) + 1)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor10[address(_2925)].field_256 = (2 * _4442) + 1
                        t = sha3(sha3(address(_2925), 10) + 1)
                        s = _4415 + ceil32(return_data.size) + 32
                        while _4415 + ceil32(return_data.size) + _4442 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(address(_2925), 10) + 1) + (Mask(251, 0, _4442 + 31) >> 5)
                        while sha3(sha3(address(_2925), 10) + 1) + (stor10[address(_2925)].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                address(stor10[address(_2925)].field_512) = address(_2926)
                stor10[address(_2925)].field_768 = _2927
                uint8(stor10[address(_2925)].field_1024) = uint8(_4394)
                Mask(248, 0, stor10[address(_2925)].field_1032) = 0
                address(stor10[address(_2925)].field_1280) = address(_2928)
                address(stor10[address(_2925)].field_1536) = address(_2929)
                uint32(stor10[address(_2925)].field_1696) = 0
                stor10[address(_2925)].field_1792 = _2931
                stor10[address(_2925)].field_2048 = uint8(_2945) - uint8(_2967)
            mem[0] = address(_2925)
            mem[32] = 11
            stor11[address(_2925)] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}

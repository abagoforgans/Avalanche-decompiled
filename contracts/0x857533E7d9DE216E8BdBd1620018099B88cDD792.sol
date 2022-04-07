contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint8 stor1;
array of uint256 stor2;
address stor3;
uint256 stor3;

function getMessengersLength() payable {
    return stor0.length
}

function sub_ef4003db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor1[address(arg1)]))
}

function _fallback() payable {
    revert
}

function setSLARegistry() payable {
    if address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SLARegistry address has already been set'
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function sub_822d332e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] < stor0.length
    require ext_code.size(stor0[cd[36]].field_256)
    staticcall stor0[cd[36]].field_256.0x8da5cb5b with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Can only be modified by the owner'
    stor0[cd[36]].field_512 = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        stor[s + sha3((7 * cd[36]) + ('name', 'stor0', 0) + 2)].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while stor[(7 * cd[36]) + ('name', 'stor0', 0) + 2].length + 31 / 32 > idx:
        stor[idx + sha3((7 * cd[36]) + ('name', 'stor0', 0) + 2)].field_0 = 0
        idx = idx + 1
        continue 
    stor0[cd[36]].field_0 = msg.sender or Mask(96, 160, stor0[cd[36]].field_0)
    if not stor0[cd[36]].field_512:
        emit MessengerModified(Array(len=stor0[cd[36]].field_512, data=Mask(248, 8, stor0[cd[36]].field_512)), stor0[cd[36]].field_768, stor0[cd[36]].field_1536, msg.sender, stor0[cd[36]].field_256);
    else:
        if stor0[cd[36]].field_512 != 1:
            emit MessengerModified(address rg1, address rg2, string rg3, uint256 rg4, uint256 rg5):
                                   mem[ceil32(return_data.size) + 96 len -ceil32(return_data.size) - 96],
                                   msg.sender,
                                   stor0[cd[36]].field_256,
        else:
            idx = 0
            s = 0
            while idx < stor0[cd[36]].field_513:
                mem[idx + ceil32(return_data.size) + 224] = stor[s + sha3((7 * cd[36]) + ('name', 'stor0', 0) + 2)].field_0
                idx = idx + 32
                s = s + 1
                continue 
            emit MessengerModified(Array(len=2 * Mask(256, -1, stor0[cd[36]].field_513), data=mem[ceil32(return_data.size) + 224 len ceil32(stor0[cd[36]].field_513)]), stor0[cd[36]].field_768, stor0[cd[36]].field_1536, msg.sender, stor0[cd[36]].field_256);
}

function sub_eabb8a73(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if address(stor3) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Should only be called using the SLARegistry contract'
    if uint8(stor1[address(arg2)]):
        revert with 0, 'messenger already registered'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg1):
        revert with 0, 'Should only be called by the messenger owner'
    require ext_code.size(address(arg2))
    staticcall address(arg2).messengerPrecision() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).requestsCounter() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).fulfillsCounter() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor1[address(arg2)]) = 1
    stor2[address(ext_call.return_data[0])]++
    stor2[address(ext_call.return_data[0])][stor2[address(ext_call.return_data[0])]] = stor0.length
    stor0.length++
    stor0[stor0.length].field_0 = address(ext_call.return_data[0])
    stor0[stor0.length].field_256 = address(arg2)
    stor[sha3((7 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[stor0.length].field_768 = ext_call.return_data[0]
    stor0[stor0.length].field_1024 = ext_call.return_data[0]
    stor0[stor0.length].field_1280 = ext_call.return_data[0]
    stor0[stor0.length].field_1536 = stor0.length
    mem[(6 * ceil32(return_data.size)) + ceil32(arg3.length) + 352] = 96
    mem[(6 * ceil32(return_data.size)) + ceil32(arg3.length) + 448] = arg3.length
    mem[(6 * ceil32(return_data.size)) + ceil32(arg3.length) + 384] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + ceil32(arg3.length) + 416] = stor0.length
    emit MessengerRegistered(address rg1, address rg2, string rg3, uint256 rg4, uint256 rg5):
                             Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                             mem[(6 * ceil32(return_data.size)) + arg3.length + 384 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
                             address(ext_call.return_data[0]),
                             address(arg2),
}

function getMessengers() payable {
    require stor0.length <= test266151307()
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            require ext_code.size(stor0[idx].field_256)
            staticcall stor0[idx].field_256.requestsCounter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_91]
            require ext_code.size(stor0[idx].field_256)
            staticcall stor0[idx].field_256.fulfillsCounter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _117 = mem[_110]
            _124 = mem[64]
            mem[64] = mem[64] + 224
            require idx < stor0.length
            mem[0] = 0
            mem[_124] = stor0[idx].field_0
            mem[_124 + 32] = stor0[idx].field_256
            mem[0] = 0
            _137 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(7 * idx) + ('name', 'stor0', 0) + 2].length) + 32
            mem[_137] = stor[(7 * idx) + ('name', 'stor0', 0) + 2].length
            mem[0] = (7 * idx) + sha3(0) + 2
            mem[_137 + 32] = stor[sha3((7 * idx) + ('name', 'stor0', 0) + 2)].field_0
            s = _137 + 32
            t = sha3(mem[0])
            while _137 + stor[(7 * idx) + ('name', 'stor0', 0) + 2].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_124 + 64] = _137
            require idx < stor0.length
            mem[_124 + 96] = stor0[idx].field_768
            mem[_124 + 128] = _97
            mem[_124 + 160] = _117
            mem[0] = 0
            mem[_124 + 192] = stor0[idx].field_1536
            require idx < mem[96]
            mem[(32 * idx) + 128] = _124
            idx = idx + 1
            continue 
        _89 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _90:
            mem[u] = t + -_89 - 64
            _169 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_169 + 44 len 20]
            _172 = mem[_169 + 64]
            mem[t + 64] = 224
            _173 = mem[_172]
            mem[t + 224] = mem[_172]
            v = 0
            while v < _173:
                mem[v + t + 256] = mem[v + _172 + 32]
                v = v + 32
                continue 
            if ceil32(_173) > _173:
                mem[t + _173 + 256] = 0
            mem[t + 96] = mem[_169 + 96]
            mem[t + 128] = mem[_169 + 128]
            mem[t + 160] = mem[_169 + 160]
            mem[t + 192] = mem[_169 + 192]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_173) + 256
            u = u + 32
            continue 
    else:
        mem[64] = (32 * stor0.length) + 352
        mem[(32 * stor0.length) + 128] = 0
        mem[(32 * stor0.length) + 160] = 0
        mem[(32 * stor0.length) + 192] = 96
        mem[(32 * stor0.length) + 224] = 0
        mem[(32 * stor0.length) + 256] = 0
        mem[(32 * stor0.length) + 288] = 0
        mem[(32 * stor0.length) + 320] = 0
        mem[var8001] = (32 * stor0.length) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(32 * stor0.length) + 128] = 0
            mem[(32 * stor0.length) + 160] = 0
            mem[(32 * stor0.length) + 192] = 96
            mem[(32 * stor0.length) + 224] = 0
            mem[(32 * stor0.length) + 256] = 0
            mem[(32 * stor0.length) + 288] = 0
            mem[(32 * stor0.length) + 320] = 0
            mem[s + 32] = (32 * stor0.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            require ext_code.size(stor0[idx].field_256)
            staticcall stor0[idx].field_256.requestsCounter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _248 = mem[_242]
            require ext_code.size(stor0[idx].field_256)
            staticcall stor0[idx].field_256.fulfillsCounter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_257]
            _263 = mem[64]
            mem[64] = mem[64] + 224
            require idx < stor0.length
            mem[0] = 0
            mem[_263] = stor0[idx].field_0
            mem[_263 + 32] = stor0[idx].field_256
            mem[0] = 0
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(7 * idx) + ('name', 'stor0', 0) + 2].length) + 32
            mem[_267] = stor[(7 * idx) + ('name', 'stor0', 0) + 2].length
            mem[0] = (7 * idx) + sha3(0) + 2
            mem[_267 + 32] = stor[sha3((7 * idx) + ('name', 'stor0', 0) + 2)].field_0
            s = _267 + 32
            t = sha3(mem[0])
            while _267 + stor[(7 * idx) + ('name', 'stor0', 0) + 2].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_263 + 64] = _267
            require idx < stor0.length
            mem[_263 + 96] = stor0[idx].field_768
            mem[_263 + 128] = _248
            mem[_263 + 160] = _262
            mem[0] = 0
            mem[_263 + 192] = stor0[idx].field_1536
            require idx < mem[96]
            mem[(32 * idx) + 128] = _263
            idx = idx + 1
            continue 
        _240 = mem[64]
        mem[mem[64]] = 32
        _241 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _241:
            mem[u] = t + -_240 - 64
            _278 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_278 + 44 len 20]
            _281 = mem[_278 + 64]
            mem[t + 64] = 224
            _282 = mem[_281]
            mem[t + 224] = mem[_281]
            v = 0
            while v < _282:
                mem[v + t + 256] = mem[v + _281 + 32]
                v = v + 32
                continue 
            if ceil32(_282) > _282:
                mem[t + _282 + 256] = 0
            mem[t + 96] = mem[_278 + 96]
            mem[t + 128] = mem[_278 + 128]
            mem[t + 160] = mem[_278 + 160]
            mem[t + 192] = mem[_278 + 192]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_282) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}

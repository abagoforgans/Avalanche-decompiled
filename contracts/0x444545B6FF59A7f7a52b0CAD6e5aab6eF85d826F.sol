contract main {




// =====================  Runtime code  =====================


mapping of struct stor90909012999857140622417080374671856515688564136957639390032885430481714942748;
mapping of struct stor90909012999857140622417080374671856515688564136957639390032885430481714942749;
array of address stor90909012999857140622417080374671856515688564136957639390032885430481714942750;
address storC8FC;

function _fallback() payable {
    revert
}

function diamondCut(address arg1, uint8 arg2, bytes4[][] arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _426 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_426] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] < 3
        mem[_426 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _461 = mem[64]
        if mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32
        mem[_461] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]
        require calldata.size >= arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 68
        u = 0
        v = arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 68
        w = _461 + 32
        while u < cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]:
            require cd[v] == Mask(32, 224, cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_426 + 64] = _461
        mem[t] = _426
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _425 = mem[64]
    mem[64] = mem[64] + ceil32(arg3.length) + 32
    mem[_425] = arg3.length
    mem[_425 + 32 len arg3.length] = arg3[all]
    mem[_425 + arg3.length + 32] = 0
    _846 = mem[96]
    idx = 0
    while idx < _846:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 32] > 2:
            revert with 0, 33
        if not mem[mem[(32 * idx) + 128] + 32]:
            if idx >= mem[96]:
                revert with 0, 50
            _859 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _865 = mem[mem[(32 * idx) + 128] + 64]
            if mem[mem[mem[(32 * idx) + 128] + 64]] <= 0:
                revert with 0, 'LibDiamondCut: No selectors in facet to cut'
            if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                revert with 0, 'LibDiamondCut: Add facet can't be address(0)'
            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
            _886 = sha3(mem[0], 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
            if Mask(96, 0, storC8FC[mem[0]].field_0):
                _1267 = mem[_865]
                s = 0
                t = uint256(stor[sha3(mem[0 len 64])])
                while s < _1267:
                    if s >= mem[_865]:
                        revert with 0, 50
                    _1287 = mem[(32 * s) + _865 + 32]
                    if address(storC8FC[Mask(32, 224, mem[(32 * s) + _865 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't add function that already exists'
                    Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _865 + 32])].field_160) = Mask(96, 0, t)
                    uint256(storC8FC[address(_859)].field_0)++
                    uint256(storC8FC[address(_859)][Mask(253, 0, storC8FC[address(_859)].field_3)].field_0) = uint256(storC8FC[address(_859)][Mask(253, 0, storC8FC[address(_859)].field_3)].field_0) and !(test266151307() * 256^(4 * storC8FC[address(_859)].field_0 % 8)) or 256^(4 * storC8FC[address(_859)].field_0 % 8) * uint32(mem[(32 * s) + _865 + 32]) >> 224
                    mem[0] = Mask(32, 224, mem[(32 * s) + _865 + 32])
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                    address(storC8FC[Mask(32, 224, _1287)].field_0) = address(_859)
                    if Mask(96, 0, t) == test266151307():
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = Mask(96, 0, t) + 1
                    continue 
            else:
                _895 = mem[64]
                mem[64] = mem[64] + 96
                mem[_895] = 36
                mem[_895 + 32 len 36] = 0x654c69624469616d6f6e644375743a204e657720666163657420686173206e6f20636f64
                if not ext_code.size(_859):
                    _909 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 36
                    idx = 0
                    while idx < 36:
                        mem[idx + _909 + 68] = mem[idx + _895 + 32]
                        idx = idx + 32
                        continue 
                    mem[_909 + 104] = 0
                    revert with memory
                      from mem[64]
                       len _909 + -mem[64] + 132
                mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                uint256(storC8FC[address(_859)].field_256) = storC8FC.length
                storC8FC.length++
                mem[0] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131e
                storC8FC[storC8FC.length] = address(_859)
                _1268 = mem[_865]
                s = 0
                t = uint256(stor[_886])
                while s < _1268:
                    if s >= mem[_865]:
                        revert with 0, 50
                    _1289 = mem[(32 * s) + _865 + 32]
                    if address(storC8FC[Mask(32, 224, mem[(32 * s) + _865 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't add function that already exists'
                    Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _865 + 32])].field_160) = Mask(96, 0, t)
                    uint256(storC8FC[address(_859)].field_0)++
                    uint256(storC8FC[address(_859)][Mask(253, 0, storC8FC[address(_859)].field_3)].field_0) = uint256(storC8FC[address(_859)][Mask(253, 0, storC8FC[address(_859)].field_3)].field_0) and !(test266151307() * 256^(4 * storC8FC[address(_859)].field_0 % 8)) or 256^(4 * storC8FC[address(_859)].field_0 % 8) * uint32(mem[(32 * s) + _865 + 32]) >> 224
                    mem[0] = Mask(32, 224, mem[(32 * s) + _865 + 32])
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                    address(storC8FC[Mask(32, 224, _1289)].field_0) = address(_859)
                    if Mask(96, 0, t) == test266151307():
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = Mask(96, 0, t) + 1
                    continue 
        else:
            if mem[mem[(32 * idx) + 128] + 32] > 2:
                revert with 0, 33
            if mem[mem[(32 * idx) + 128] + 32] != 1:
                if mem[mem[(32 * idx) + 128] + 32] > 2:
                    revert with 0, 33
                if mem[mem[(32 * idx) + 128] + 32] != 2:
                    revert with 0, 'LibDiamondCut: Incorrect FacetCutAction'
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _882 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[mem[(32 * idx) + 128] + 64]] <= 0:
                    revert with 0, 'LibDiamondCut: No selectors in facet to cut'
                if mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'LibDiamondCut: Remove facet address must be address(0)'
                _1264 = mem[mem[mem[(32 * idx) + 128] + 64]]
                s = 0
                while s < _1264:
                    if s >= mem[_882]:
                        revert with 0, 50
                    _1281 = mem[(32 * s) + _882 + 32]
                    _1282 = sha3(Mask(32, 224, mem[(32 * s) + _882 + 32]), 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c)
                    if not address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't remove function that doesn't exist'
                    if this.address == address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't remove immutable function'
                    _1305 = sha3(address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0), 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
                    if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) < 1:
                        revert with 0, 17
                    if Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_160) != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1:
                        if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1 >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0):
                            revert with 0, 50
                        if Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_160) >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0):
                            revert with 0, 50
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)][Mask(93, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_163)].field_0) = !(test266151307() * 256^(4 * storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_160 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)][Mask(93, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_163)].field_0)
                        Mask(96, 0, storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1].field_0) / 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1 % 8) << 224].field_160) = Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_160)
                    if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0):
                        revert with 0, 49
                    uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1].field_0) = !(test266151307() * 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0) - 1].field_0)
                    uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _882 + 32])].field_0)].field_0)--
                    mem[0] = Mask(32, 224, mem[(32 * s) + _882 + 32])
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                    uint256(storC8FC[Mask(32, 224, _1281)].field_0) = 0
                    if not uint256(stor[_1305]) - 1:
                        if storC8FC.length < 1:
                            revert with 0, 17
                        if storC8FC.length - 1 != uint256(storC8FC[address(stor[_1282])].field_256):
                            if storC8FC.length - 1 >= storC8FC.length:
                                revert with 0, 50
                            if uint256(storC8FC[address(stor[_1282])].field_256) >= storC8FC.length:
                                revert with 0, 50
                            storC8FC[uint256(storC8FC[address(stor[_1282])].field_256)] = storC8FC[storC8FC.length]
                            uint256(storC8FC[storC8FC[storC8FC.length]].field_256) = uint256(storC8FC[address(stor[_1282])].field_256)
                        if not storC8FC.length:
                            revert with 0, 49
                        storC8FC[storC8FC.length] = 0
                        storC8FC.length--
                        mem[0] = address(stor[_1282])
                        mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                        uint256(storC8FC[address(stor[_1282])].field_256) = 0
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                _867 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 0, 50
                _873 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[mem[(32 * idx) + 128] + 64]] <= 0:
                    revert with 0, 'LibDiamondCut: No selectors in facet to cut'
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'LibDiamondCut: Add facet can't be address(0)'
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                _892 = sha3(mem[0], 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
                if Mask(96, 0, storC8FC[mem[0]].field_0):
                    _1265 = mem[_873]
                    s = 0
                    t = uint256(stor[sha3(mem[0 len 64])])
                    while s < _1265:
                        if s >= mem[_873]:
                            revert with 0, 50
                        _1283 = mem[(32 * s) + _873 + 32]
                        if address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0) == address(_867):
                            revert with 0, 'LibDiamondCut: Can't replace function with same function'
                        if not address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove function that doesn't exist'
                        if this.address == address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove immutable function'
                        if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) < 1:
                            revert with 0, 17
                        if Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160) != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1:
                            if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1 >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0):
                                revert with 0, 50
                            if Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160) >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0):
                                revert with 0, 50
                            uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][Mask(93, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_163)].field_0) = !(test266151307() * 256^(4 * storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][Mask(93, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_163)].field_0)
                            Mask(96, 0, storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1].field_0) / 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1 % 8) << 224].field_160) = Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160)
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0):
                            revert with 0, 49
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1].field_0) = !(test266151307() * 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1].field_0)
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0)--
                        uint256(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0) = 0
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1:
                            if storC8FC.length < 1:
                                revert with 0, 17
                            if storC8FC.length - 1 != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256):
                                if storC8FC.length - 1 >= storC8FC.length:
                                    revert with 0, 50
                                if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256) >= storC8FC.length:
                                    revert with 0, 50
                                storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256)] = storC8FC[storC8FC.length]
                                uint256(storC8FC[storC8FC[storC8FC.length]].field_256) = uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256)
                            if not storC8FC.length:
                                revert with 0, 49
                            storC8FC[storC8FC.length] = 0
                            storC8FC.length--
                            uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256) = 0
                        Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160) = Mask(96, 0, t)
                        uint256(storC8FC[address(_867)].field_0)++
                        uint256(storC8FC[address(_867)][Mask(253, 0, storC8FC[address(_867)].field_3)].field_0) = uint256(storC8FC[address(_867)][Mask(253, 0, storC8FC[address(_867)].field_3)].field_0) and !(test266151307() * 256^(4 * storC8FC[address(_867)].field_0 % 8)) or 256^(4 * storC8FC[address(_867)].field_0 % 8) * uint32(mem[(32 * s) + _873 + 32]) >> 224
                        mem[0] = Mask(32, 224, mem[(32 * s) + _873 + 32])
                        mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                        address(storC8FC[Mask(32, 224, _1283)].field_0) = address(_867)
                        if Mask(96, 0, t) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = Mask(96, 0, t) + 1
                        continue 
                else:
                    _905 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_905] = 36
                    mem[_905 + 32 len 36] = 0x654c69624469616d6f6e644375743a204e657720666163657420686173206e6f20636f64
                    if not ext_code.size(_867):
                        _927 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 36
                        idx = 0
                        while idx < 36:
                            mem[idx + _927 + 68] = mem[idx + _905 + 32]
                            idx = idx + 32
                            continue 
                        mem[_927 + 104] = 0
                        revert with memory
                          from mem[64]
                           len _927 + -mem[64] + 132
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                    uint256(storC8FC[address(_867)].field_256) = storC8FC.length
                    storC8FC.length++
                    mem[0] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131e
                    storC8FC[storC8FC.length] = address(_867)
                    _1266 = mem[_873]
                    s = 0
                    t = uint256(stor[_892])
                    while s < _1266:
                        if s >= mem[_873]:
                            revert with 0, 50
                        _1285 = mem[(32 * s) + _873 + 32]
                        if address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0) == address(_867):
                            revert with 0, 'LibDiamondCut: Can't replace function with same function'
                        if not address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove function that doesn't exist'
                        if this.address == address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove immutable function'
                        if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) < 1:
                            revert with 0, 17
                        if Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160) != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1:
                            if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1 >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0):
                                revert with 0, 50
                            if Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160) >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0):
                                revert with 0, 50
                            uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][Mask(93, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_163)].field_0) = !(test266151307() * 256^(4 * storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][Mask(93, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_163)].field_0)
                            Mask(96, 0, storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1].field_0) / 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1 % 8) << 224].field_160) = Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160)
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0):
                            revert with 0, 49
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1].field_0) = !(test266151307() * 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1].field_0)
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0)--
                        uint256(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0) = 0
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_0) - 1:
                            if storC8FC.length < 1:
                                revert with 0, 17
                            if storC8FC.length - 1 != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256):
                                if storC8FC.length - 1 >= storC8FC.length:
                                    revert with 0, 50
                                if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256) >= storC8FC.length:
                                    revert with 0, 50
                                storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256)] = storC8FC[storC8FC.length]
                                uint256(storC8FC[storC8FC[storC8FC.length]].field_256) = uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256)
                            if not storC8FC.length:
                                revert with 0, 49
                            storC8FC[storC8FC.length] = 0
                            storC8FC.length--
                            uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_0)].field_256) = 0
                        Mask(96, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _873 + 32])].field_160) = Mask(96, 0, t)
                        uint256(storC8FC[address(_867)].field_0)++
                        uint256(storC8FC[address(_867)][Mask(253, 0, storC8FC[address(_867)].field_3)].field_0) = uint256(storC8FC[address(_867)][Mask(253, 0, storC8FC[address(_867)].field_3)].field_0) and !(test266151307() * 256^(4 * storC8FC[address(_867)].field_0 % 8)) or 256^(4 * storC8FC[address(_867)].field_0 % 8) * uint32(mem[(32 * s) + _873 + 32]) >> 224
                        mem[0] = Mask(32, 224, mem[(32 * s) + _873 + 32])
                        mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                        address(storC8FC[Mask(32, 224, _1285)].field_0) = address(_867)
                        if Mask(96, 0, t) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = Mask(96, 0, t) + 1
                        continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _847 = mem[64]
    mem[mem[64]] = 96
    _849 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 128
    u = mem[64] + 128
    while idx < _849:
        mem[u] = t + -_847 - 128
        _1269 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        if mem[_1269 + 32] >= 3:
            revert with 0, 33
        mem[t + 32] = mem[_1269 + 32]
        _1279 = mem[_1269 + 64]
        mem[t + 64] = 96
        _1280 = mem[_1279]
        mem[t + 96] = mem[_1279]
        w = t + 128
        v = 0
        x = _1279 + 32
        while v < _1280:
            mem[w] = Mask(32, 224, mem[x])
            w = w + 32
            v = v + 1
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _1280) + 128
        u = u + 32
        continue 
    mem[_847 + 32] = address(arg2)
    mem[_847 + 64] = t - _847
    _1295 = mem[_425]
    mem[t] = mem[_425]
    mem[t + 32 len ceil32(_1295)] = mem[_425 + 32 len ceil32(_1295)]
    if ceil32(_1295) <= _1295:
        emit DiamondCut(address rg1, uint8 rg2, bytes4[][] rg3, address rg4, bytes rg5):
                        mem[mem[64] len ceil32(_1295) + t + -mem[64] + 32],
        if not address(arg2):
            if mem[_425]:
                revert with 0, 'LibDiamondCut: _init is address(0) but_calldata is not empty'
        if mem[_425] <= 0:
            revert with 0, 'LibDiamondCut: _calldata is empty but _init is not address(0)'
        if this.address == address(arg2):
            _1645 = mem[_425]
            mem[mem[64] len ceil32(mem[_425])] = mem[_425 + 32 len ceil32(mem[_425])]
            if ceil32(_1645) <= _1645:
                delegate address(arg2).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1645 - 4]
                if not return_data.size:
                    if delegate.return_code:
                    if not mem[96]:
                        revert with 0, 'LibDiamondCut: _init function reverted'
                    _1856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1888 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                    mem[mem[96] + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1888) + _1856 + -mem[64] + 68
                _1827 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1827] = return_data.size
                mem[_1827 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if not return_data.size:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _1858 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1827 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                if ceil32(return_data.size) <= return_data.size:
                    revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
                mem[return_data.size + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _1858 + -mem[64] + 68
            mem[_1645 + mem[64]] = 0
            delegate address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1645 - 4]
            if not return_data.size:
                if delegate.return_code:
                if not mem[96]:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _1860 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1892 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1892) + _1860 + -mem[64] + 68
            _1828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1828] = return_data.size
            mem[_1828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
            if not return_data.size:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _1862 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1828 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[return_data.size + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _1862 + -mem[64] + 68
        _1642 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1642] = 40
        mem[_1642 + 32 len 40] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64
        if not ext_code.size(arg2):
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 40
            mem[mem[64] + 68 len 64] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64, mem[_1642 + 72 len 24]
            revert with 0, 32, 40, mem[mem[64] + 68 len 40], 0
        _1653 = mem[64]
        _1656 = mem[_425]
        mem[mem[64] len ceil32(mem[_425])] = mem[_425 + 32 len ceil32(mem[_425])]
        if ceil32(_1656) <= _1656:
            delegate address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1656 - 4]
            if not return_data.size:
                if delegate.return_code:
                if not mem[96]:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _1864 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1896 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1896) + _1864 + -mem[64] + 68
            _1829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1829] = return_data.size
            mem[_1829 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
            if not return_data.size:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _1866 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1829 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[return_data.size + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _1866 + -mem[64] + 68
        mem[_1656 + mem[64]] = 0
        delegate address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1656 + _1653 + -mem[64] - 4]
        if not return_data.size:
            if delegate.return_code:
            if not mem[96]:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _1868 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1900 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1900) + _1868 + -mem[64] + 68
        _1830 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1830] = return_data.size
        mem[_1830 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if not return_data.size:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _1870 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1830 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[return_data.size + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _1870 + -mem[64] + 68
    mem[_1295 + t + 32] = 0
    emit DiamondCut(address rg1, uint8 rg2, bytes4[][] rg3, address rg4, bytes rg5):
                    mem[mem[64] len ceil32(_1295) + t + -mem[64] + 32],
    if not address(arg2):
        if mem[_425]:
            revert with 0, 'LibDiamondCut: _init is address(0) but_calldata is not empty'
    if mem[_425] <= 0:
        revert with 0, 'LibDiamondCut: _calldata is empty but _init is not address(0)'
    if this.address == address(arg2):
        _1643 = mem[64]
        _1648 = mem[_425]
        mem[mem[64] len ceil32(mem[_425])] = mem[_425 + 32 len ceil32(mem[_425])]
        if ceil32(_1648) <= _1648:
            delegate address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1648 - 4]
            if not return_data.size:
                if delegate.return_code:
                if not mem[96]:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _1872 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1904 = mem[96]
                mem[mem[64] + 36] = mem[96]
                mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
                mem[mem[96] + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1904) + _1872 + -mem[64] + 68
            _1833 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1833] = return_data.size
            mem[_1833 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
            if not return_data.size:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _1874 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1833 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) <= return_data.size:
                revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
            mem[return_data.size + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _1874 + -mem[64] + 68
        mem[_1648 + mem[64]] = 0
        delegate address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1648 + _1643 + -mem[64] - 4]
        if not return_data.size:
            if delegate.return_code:
            if not mem[96]:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _1876 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1908 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1908) + _1876 + -mem[64] + 68
        _1834 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1834] = return_data.size
        mem[_1834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if not return_data.size:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _1878 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1834 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[return_data.size + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _1878 + -mem[64] + 68
    _1644 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1644] = 40
    mem[_1644 + 32 len 40] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64
    if not ext_code.size(arg2):
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 40
        mem[mem[64] + 68 len 64] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64, mem[_1644 + 72 len 24]
        revert with 0, 32, 40, mem[mem[64] + 68 len 40], 0
    _1654 = mem[64]
    _1659 = mem[_425]
    mem[mem[64] len ceil32(mem[_425])] = mem[_425 + 32 len ceil32(mem[_425])]
    if ceil32(_1659) <= _1659:
        delegate address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1659 - 4]
        if not return_data.size:
            if delegate.return_code:
            if not mem[96]:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _1880 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1912 = mem[96]
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1912) + _1880 + -mem[64] + 68
        _1835 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1835] = return_data.size
        mem[_1835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if not return_data.size:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _1882 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1835 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) <= return_data.size:
            revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
        mem[return_data.size + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _1882 + -mem[64] + 68
    mem[_1659 + mem[64]] = 0
    delegate address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _1659 + _1654 + -mem[64] - 4]
    if not return_data.size:
        if delegate.return_code:
        if not mem[96]:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _1884 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1916 = mem[96]
        mem[mem[64] + 36] = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1916) + _1884 + -mem[64] + 68
    _1836 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_1836] = return_data.size
    mem[_1836 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
    if not return_data.size:
        revert with 0, 'LibDiamondCut: _init function reverted'
    _1886 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = return_data.size
    mem[mem[64] + 68 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_1836 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) <= return_data.size:
        revert with 0, 32, return_data.size, mem[mem[64] + 68 len ceil32(return_data.size)]
    mem[return_data.size + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(return_data.size) + _1886 + -mem[64] + 68
}



}

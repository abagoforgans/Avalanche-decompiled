contract main {




// =====================  Runtime code  =====================


#
#  - sub_b40b03d2(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
mapping of address sub_94edf9d4;
mapping of struct sub_771f2476;
array of struct pack;
mapping of uint256 packIndices;
mapping of uint8 stor7;
address sub_85c15c28Address;
address sub_b1494df2Address;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor12;
uint256 sub_7bde72dc;
uint256 sub_000d07ce;
uint256 MINIMUM_TO_EXIT;
uint128 stor15;
uint256 startTimestamp;
uint256 multiplier;
uint8 stor17;
uint8 canClaim; offset 8
address stor17; offset 16
uint256 stor17; offset 8
address swapperAddress;

function sub_000d07ce(?) payable {
    return sub_000d07ce
}

function multiplier() payable {
    return multiplier
}

function swapper() payable {
    return swapperAddress
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function canClaim() payable {
    return bool(canClaim)
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function sub_771f2476(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_771f2476[arg1].field_0, sub_771f2476[arg1].field_0, sub_771f2476[arg1].field_96
}

function sub_7bde72dc(?) payable {
    return uint256(sub_7bde72dc)
}

function sub_85c15c28(?) payable {
    return sub_85c15c28Address
}

function owner() payable {
    return owner
}

function sub_94edf9d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_94edf9d4[arg1]
}

function sub_b1494df2(?) payable {
    return sub_b1494df2Address
}

function sub_b6de3230(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < pack[arg1].field_0
    return pack[arg1][arg2].field_0, pack[arg1][arg2].field_0, pack[arg1][arg2].field_96
}

function startTimestamp() payable {
    return uint256(startTimestamp)
}

function _fallback() payable {
    revert
}

function sub_07333d12(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalAlphaStaked = arg1
}

function setMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multiplier = arg1
}

function setSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapperAddress = arg1
}

function sub_aaaa19c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor17.field_16) = address(arg1)
}

function sub_9d34b691(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor17.field_8) = Mask(248, 0, bool(arg1))
}

function setSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg2
    sub_000d07ce = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not uint8(stor0.field_160):
            revert with 0, 'Pauseable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        if uint8(stor0.field_160):
            revert with 0, 'Pauseable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
}

function sub_0db7af53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor1.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 384 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    return bool(ext_call.return_data[0])
}

function sub_d5128535(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'owner'
    if arg2:
        sub_771f2476[arg1].field_0 = uint16(arg1)
        sub_771f2476[arg1].field_16 = Mask(80, 0, arg4)
        sub_771f2476[arg1].field_96 = address(arg3)
        emit TokenStaked(address(arg3), arg1, arg4);
    else:
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not bool(ceil32(return_data.size) + 384 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[32] == ext_call.return_data[63 len 1]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        require ext_call.return_data[96] == ext_call.return_data[127 len 1]
        require ext_call.return_data[128] == ext_call.return_data[159 len 1]
        require ext_call.return_data[160] == ext_call.return_data[191 len 1]
        require ext_call.return_data[192] == ext_call.return_data[223 len 1]
        require ext_call.return_data[224] == ext_call.return_data[255 len 1]
        require ext_call.return_data[256] == ext_call.return_data[287 len 1]
        if 8 < ext_call.return_data[287 len 1]:
            revert with 'NH{q', 17
        if totalAlphaStaked > -uint8(-ext_call.return_data[287 len 1] + 8) - 1:
            revert with 'NH{q', 17
        totalAlphaStaked += uint8(-ext_call.return_data[287 len 1] + 8)
        packIndices[arg1] = pack[uint8(-ext_call.return_data[287 len 1] + 8)].field_0
        pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0++
        pack[-ext_call.return_data[287 len 1] + 8 << 248][pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0].field_0 = uint16(arg1)
        pack[-ext_call.return_data[287 len 1] + 8 << 248][pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
        pack[-ext_call.return_data[287 len 1] + 8 << 248][pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0].field_16 = 0
        pack[-ext_call.return_data[287 len 1] + 8 << 248][pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0].field_96 = address(arg3)
        emit TokenStaked(address(arg3), arg1, uint256(sub_7bde72dc));
    sub_94edf9d4[arg1] = address(arg3)
}

function sub_a9bbf89d(?) payable {
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
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(stor17.field_0):
        revert with 0, 'No reentrancy'
    uint8(stor17.field_0) = 1
    if uint8(stor0.field_160):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _198 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _198
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == mem[_204 + 12 len 20]
            if mem[_204 + 12 len 20] == sub_b1494df2Address:
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args _198
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _214 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_212] == bool(mem[_212])
                mem[_214] = mem[_212]
                require mem[_212 + 32] == mem[_212 + 63 len 1]
                mem[_214 + 32] = mem[_212 + 32]
                require mem[_212 + 64] == mem[_212 + 95 len 1]
                mem[_214 + 64] = mem[_212 + 64]
                require mem[_212 + 96] == mem[_212 + 127 len 1]
                mem[_214 + 96] = mem[_212 + 96]
                require mem[_212 + 128] == mem[_212 + 159 len 1]
                mem[_214 + 128] = mem[_212 + 128]
                require mem[_212 + 160] == mem[_212 + 191 len 1]
                mem[_214 + 160] = mem[_212 + 160]
                require mem[_212 + 192] == mem[_212 + 223 len 1]
                mem[_214 + 192] = mem[_212 + 192]
                require mem[_212 + 224] == mem[_212 + 255 len 1]
                mem[_214 + 224] = mem[_212 + 224]
                require mem[_212 + 256] == mem[_212 + 287 len 1]
                mem[_214 + 256] = mem[_212 + 256]
                if mem[_214]:
                    staticcall sub_b1494df2Address.0x771f2476 with:
                            gas gas_remaining wei
                           args _198
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_245] == mem[_245 + 30 len 2]
                    require mem[_245 + 32] == mem[_245 + 54 len 10]
                    _257 = mem[_245 + 64]
                    require mem[_245 + 64] == mem[_245 + 76 len 20]
                    if mem[_245 + 76 len 20] != msg.sender:
                        revert with 0, 'Not your tokens'
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_b1494df2Address, address(mem[_245 + 64]), _198
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_257)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _198
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(_257), address(this.address), _198
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_214]:
                        _286 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_286] = uint16(_198)
                        mem[_286 + 32] = Mask(80, 0, stor15)
                        mem[_286 + 64] = address(_257)
                        mem[32] = 4
                        sub_771f2476[_198].field_0 = uint16(_198)
                        sub_771f2476[_198].field_0 = Mask(80, 0, stor15)
                        sub_771f2476[_198].field_16 = 0
                        sub_771f2476[_198].field_96 = address(_257)
                        mem[mem[64]] = address(_257)
                        mem[mem[64] + 32] = _198
                        mem[mem[64] + 64] = uint256(startTimestamp)
                        emit TokenStaked(address(_257), _198, uint256(startTimestamp));
                    else:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args _198
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _312 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_308] == bool(mem[_308])
                        mem[_312] = mem[_308]
                        require mem[_308 + 32] == mem[_308 + 63 len 1]
                        mem[_312 + 32] = mem[_308 + 32]
                        require mem[_308 + 64] == mem[_308 + 95 len 1]
                        mem[_312 + 64] = mem[_308 + 64]
                        require mem[_308 + 96] == mem[_308 + 127 len 1]
                        mem[_312 + 96] = mem[_308 + 96]
                        require mem[_308 + 128] == mem[_308 + 159 len 1]
                        mem[_312 + 128] = mem[_308 + 128]
                        require mem[_308 + 160] == mem[_308 + 191 len 1]
                        mem[_312 + 160] = mem[_308 + 160]
                        require mem[_308 + 192] == mem[_308 + 223 len 1]
                        mem[_312 + 192] = mem[_308 + 192]
                        require mem[_308 + 224] == mem[_308 + 255 len 1]
                        mem[_312 + 224] = mem[_308 + 224]
                        require mem[_308 + 256] == mem[_308 + 287 len 1]
                        mem[_312 + 256] = mem[_308 + 256]
                        _374 = mem[_312 + 256]
                        if 8 < mem[_312 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_312 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_312 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_312 + 287 len 1] + 8)
                        packIndices[_198] = pack[mem[0]].field_0
                        mem[0] = uint8(-uint8(_374) + 8)
                        mem[32] = 5
                        _383 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_383] = uint16(_198)
                        mem[_383 + 32] = Mask(80, 0, stor12)
                        mem[_383 + 64] = address(_257)
                        pack[-uint8(_374) + 8 << 248].field_0++
                        pack[-uint8(_374) + 8 << 248][pack[-uint8(_374) + 8 << 248].field_0].field_0 = uint16(_198)
                        pack[-uint8(_374) + 8 << 248][pack[-uint8(_374) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                        pack[-uint8(_374) + 8 << 248][pack[-uint8(_374) + 8 << 248].field_0].field_16 = 0
                        pack[-uint8(_374) + 8 << 248][pack[-uint8(_374) + 8 << 248].field_0].field_96 = address(_257)
                        mem[mem[64]] = address(_257)
                        mem[mem[64] + 32] = _198
                        mem[mem[64] + 64] = uint256(sub_7bde72dc)
                        emit TokenStaked(address(_257), _198, uint256(sub_7bde72dc));
                    mem[0] = _198
                    mem[32] = 3
                    sub_94edf9d4[_198] = address(_257)
                else:
                    mem[mem[64] + 4] = _198
                    staticcall sub_b1494df2Address.0x6f234fb5 with:
                            gas gas_remaining wei
                           args _198
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _248 = mem[_244]
                    require mem[_244] == mem[_244]
                    if 8 < mem[_214 + 287 len 1]:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = uint8(-mem[_214 + 287 len 1] + 8)
                    staticcall sub_b1494df2Address.0xdd55fcb3 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _248
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _270 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_266] == mem[_266 + 30 len 2]
                    mem[_270] = mem[_266]
                    require mem[_266 + 32] == mem[_266 + 54 len 10]
                    mem[_270 + 32] = mem[_266 + 32]
                    require mem[_266 + 64] == mem[_266 + 76 len 20]
                    mem[_270 + 64] = mem[_266 + 64]
                    _298 = mem[_270 + 64]
                    if mem[_270 + 76 len 20] != msg.sender:
                        revert with 0, 'Not your tokens'
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_b1494df2Address, address(mem[_270 + 64]), _198
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_298)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _198
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(_298), address(this.address), _198
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_214]:
                        _334 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_334] = uint16(_198)
                        mem[_334 + 32] = Mask(80, 0, stor15)
                        mem[_334 + 64] = address(_298)
                        mem[32] = 4
                        sub_771f2476[_198].field_0 = uint16(_198)
                        sub_771f2476[_198].field_0 = Mask(80, 0, stor15)
                        sub_771f2476[_198].field_16 = 0
                        sub_771f2476[_198].field_96 = address(_298)
                        mem[mem[64]] = address(_298)
                        mem[mem[64] + 32] = _198
                        mem[mem[64] + 64] = uint256(startTimestamp)
                        emit TokenStaked(address(_298), _198, uint256(startTimestamp));
                    else:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args _198
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _352 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _356 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_352] == bool(mem[_352])
                        mem[_356] = mem[_352]
                        require mem[_352 + 32] == mem[_352 + 63 len 1]
                        mem[_356 + 32] = mem[_352 + 32]
                        require mem[_352 + 64] == mem[_352 + 95 len 1]
                        mem[_356 + 64] = mem[_352 + 64]
                        require mem[_352 + 96] == mem[_352 + 127 len 1]
                        mem[_356 + 96] = mem[_352 + 96]
                        require mem[_352 + 128] == mem[_352 + 159 len 1]
                        mem[_356 + 128] = mem[_352 + 128]
                        require mem[_352 + 160] == mem[_352 + 191 len 1]
                        mem[_356 + 160] = mem[_352 + 160]
                        require mem[_352 + 192] == mem[_352 + 223 len 1]
                        mem[_356 + 192] = mem[_352 + 192]
                        require mem[_352 + 224] == mem[_352 + 255 len 1]
                        mem[_356 + 224] = mem[_352 + 224]
                        require mem[_352 + 256] == mem[_352 + 287 len 1]
                        mem[_356 + 256] = mem[_352 + 256]
                        _410 = mem[_356 + 256]
                        if 8 < mem[_356 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_356 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_356 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_356 + 287 len 1] + 8)
                        packIndices[_198] = pack[mem[0]].field_0
                        mem[0] = uint8(-uint8(_410) + 8)
                        mem[32] = 5
                        _415 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_415] = uint16(_198)
                        mem[_415 + 32] = Mask(80, 0, stor12)
                        mem[_415 + 64] = address(_298)
                        pack[-uint8(_410) + 8 << 248].field_0++
                        pack[-uint8(_410) + 8 << 248][pack[-uint8(_410) + 8 << 248].field_0].field_0 = uint16(_198)
                        pack[-uint8(_410) + 8 << 248][pack[-uint8(_410) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                        pack[-uint8(_410) + 8 << 248][pack[-uint8(_410) + 8 << 248].field_0].field_16 = 0
                        pack[-uint8(_410) + 8 << 248][pack[-uint8(_410) + 8 << 248].field_0].field_96 = address(_298)
                        mem[mem[64]] = address(_298)
                        mem[mem[64] + 32] = _198
                        mem[mem[64] + 64] = uint256(sub_7bde72dc)
                        emit TokenStaked(address(_298), _198, uint256(sub_7bde72dc));
                    mem[0] = _198
                    mem[32] = 3
                    sub_94edf9d4[_198] = address(_298)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Paused'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _200 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _200
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_205] == mem[_205 + 12 len 20]
            if mem[_205 + 12 len 20] == sub_b1494df2Address:
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args _200
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _215 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_213] == bool(mem[_213])
                mem[_215] = mem[_213]
                require mem[_213 + 32] == mem[_213 + 63 len 1]
                mem[_215 + 32] = mem[_213 + 32]
                require mem[_213 + 64] == mem[_213 + 95 len 1]
                mem[_215 + 64] = mem[_213 + 64]
                require mem[_213 + 96] == mem[_213 + 127 len 1]
                mem[_215 + 96] = mem[_213 + 96]
                require mem[_213 + 128] == mem[_213 + 159 len 1]
                mem[_215 + 128] = mem[_213 + 128]
                require mem[_213 + 160] == mem[_213 + 191 len 1]
                mem[_215 + 160] = mem[_213 + 160]
                require mem[_213 + 192] == mem[_213 + 223 len 1]
                mem[_215 + 192] = mem[_213 + 192]
                require mem[_213 + 224] == mem[_213 + 255 len 1]
                mem[_215 + 224] = mem[_213 + 224]
                require mem[_213 + 256] == mem[_213 + 287 len 1]
                mem[_215 + 256] = mem[_213 + 256]
                if mem[_215]:
                    staticcall sub_b1494df2Address.0x771f2476 with:
                            gas gas_remaining wei
                           args _200
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_247] == mem[_247 + 30 len 2]
                    require mem[_247 + 32] == mem[_247 + 54 len 10]
                    _259 = mem[_247 + 64]
                    require mem[_247 + 64] == mem[_247 + 76 len 20]
                    if mem[_247 + 76 len 20] != msg.sender:
                        revert with 0, 'Not your tokens'
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_b1494df2Address, address(mem[_247 + 64]), _200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_259)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _200
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(_259), address(this.address), _200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_215]:
                        _292 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_292] = uint16(_200)
                        mem[_292 + 32] = Mask(80, 0, stor15)
                        mem[_292 + 64] = address(_259)
                        mem[32] = 4
                        sub_771f2476[_200].field_0 = uint16(_200)
                        sub_771f2476[_200].field_0 = Mask(80, 0, stor15)
                        sub_771f2476[_200].field_16 = 0
                        sub_771f2476[_200].field_96 = address(_259)
                        mem[mem[64]] = address(_259)
                        mem[mem[64] + 32] = _200
                        mem[mem[64] + 64] = uint256(startTimestamp)
                        emit TokenStaked(address(_259), _200, uint256(startTimestamp));
                    else:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args _200
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _313 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_309] == bool(mem[_309])
                        mem[_313] = mem[_309]
                        require mem[_309 + 32] == mem[_309 + 63 len 1]
                        mem[_313 + 32] = mem[_309 + 32]
                        require mem[_309 + 64] == mem[_309 + 95 len 1]
                        mem[_313 + 64] = mem[_309 + 64]
                        require mem[_309 + 96] == mem[_309 + 127 len 1]
                        mem[_313 + 96] = mem[_309 + 96]
                        require mem[_309 + 128] == mem[_309 + 159 len 1]
                        mem[_313 + 128] = mem[_309 + 128]
                        require mem[_309 + 160] == mem[_309 + 191 len 1]
                        mem[_313 + 160] = mem[_309 + 160]
                        require mem[_309 + 192] == mem[_309 + 223 len 1]
                        mem[_313 + 192] = mem[_309 + 192]
                        require mem[_309 + 224] == mem[_309 + 255 len 1]
                        mem[_313 + 224] = mem[_309 + 224]
                        require mem[_309 + 256] == mem[_309 + 287 len 1]
                        mem[_313 + 256] = mem[_309 + 256]
                        _375 = mem[_313 + 256]
                        if 8 < mem[_313 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_313 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_313 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_313 + 287 len 1] + 8)
                        packIndices[_200] = pack[mem[0]].field_0
                        mem[0] = uint8(-uint8(_375) + 8)
                        mem[32] = 5
                        _392 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_392] = uint16(_200)
                        mem[_392 + 32] = Mask(80, 0, stor12)
                        mem[_392 + 64] = address(_259)
                        pack[-uint8(_375) + 8 << 248].field_0++
                        pack[-uint8(_375) + 8 << 248][pack[-uint8(_375) + 8 << 248].field_0].field_0 = uint16(_200)
                        pack[-uint8(_375) + 8 << 248][pack[-uint8(_375) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                        pack[-uint8(_375) + 8 << 248][pack[-uint8(_375) + 8 << 248].field_0].field_16 = 0
                        pack[-uint8(_375) + 8 << 248][pack[-uint8(_375) + 8 << 248].field_0].field_96 = address(_259)
                        mem[mem[64]] = address(_259)
                        mem[mem[64] + 32] = _200
                        mem[mem[64] + 64] = uint256(sub_7bde72dc)
                        emit TokenStaked(address(_259), _200, uint256(sub_7bde72dc));
                    mem[0] = _200
                    mem[32] = 3
                    sub_94edf9d4[_200] = address(_259)
                else:
                    mem[mem[64] + 4] = _200
                    staticcall sub_b1494df2Address.0x6f234fb5 with:
                            gas gas_remaining wei
                           args _200
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _246 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _250 = mem[_246]
                    require mem[_246] == mem[_246]
                    if 8 < mem[_215 + 287 len 1]:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = uint8(-mem[_215 + 287 len 1] + 8)
                    staticcall sub_b1494df2Address.0xdd55fcb3 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _250
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _267 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _271 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_267] == mem[_267 + 30 len 2]
                    mem[_271] = mem[_267]
                    require mem[_267 + 32] == mem[_267 + 54 len 10]
                    mem[_271 + 32] = mem[_267 + 32]
                    require mem[_267 + 64] == mem[_267 + 76 len 20]
                    mem[_271 + 64] = mem[_267 + 64]
                    _300 = mem[_271 + 64]
                    if mem[_271 + 76 len 20] != msg.sender:
                        revert with 0, 'Not your tokens'
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_b1494df2Address, address(mem[_271 + 64]), _200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_300)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _200
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(_300), address(this.address), _200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_215]:
                        _340 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_340] = uint16(_200)
                        mem[_340 + 32] = Mask(80, 0, stor15)
                        mem[_340 + 64] = address(_300)
                        mem[32] = 4
                        sub_771f2476[_200].field_0 = uint16(_200)
                        sub_771f2476[_200].field_0 = Mask(80, 0, stor15)
                        sub_771f2476[_200].field_16 = 0
                        sub_771f2476[_200].field_96 = address(_300)
                        mem[mem[64]] = address(_300)
                        mem[mem[64] + 32] = _200
                        mem[mem[64] + 64] = uint256(startTimestamp)
                        emit TokenStaked(address(_300), _200, uint256(startTimestamp));
                    else:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args _200
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _357 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_353] == bool(mem[_353])
                        mem[_357] = mem[_353]
                        require mem[_353 + 32] == mem[_353 + 63 len 1]
                        mem[_357 + 32] = mem[_353 + 32]
                        require mem[_353 + 64] == mem[_353 + 95 len 1]
                        mem[_357 + 64] = mem[_353 + 64]
                        require mem[_353 + 96] == mem[_353 + 127 len 1]
                        mem[_357 + 96] = mem[_353 + 96]
                        require mem[_353 + 128] == mem[_353 + 159 len 1]
                        mem[_357 + 128] = mem[_353 + 128]
                        require mem[_353 + 160] == mem[_353 + 191 len 1]
                        mem[_357 + 160] = mem[_353 + 160]
                        require mem[_353 + 192] == mem[_353 + 223 len 1]
                        mem[_357 + 192] = mem[_353 + 192]
                        require mem[_353 + 224] == mem[_353 + 255 len 1]
                        mem[_357 + 224] = mem[_353 + 224]
                        require mem[_353 + 256] == mem[_353 + 287 len 1]
                        mem[_357 + 256] = mem[_353 + 256]
                        _411 = mem[_357 + 256]
                        if 8 < mem[_357 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_357 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_357 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_357 + 287 len 1] + 8)
                        packIndices[_200] = pack[mem[0]].field_0
                        mem[0] = uint8(-uint8(_411) + 8)
                        mem[32] = 5
                        _424 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_424] = uint16(_200)
                        mem[_424 + 32] = Mask(80, 0, stor12)
                        mem[_424 + 64] = address(_300)
                        pack[-uint8(_411) + 8 << 248].field_0++
                        pack[-uint8(_411) + 8 << 248][pack[-uint8(_411) + 8 << 248].field_0].field_0 = uint16(_200)
                        pack[-uint8(_411) + 8 << 248][pack[-uint8(_411) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                        pack[-uint8(_411) + 8 << 248][pack[-uint8(_411) + 8 << 248].field_0].field_16 = 0
                        pack[-uint8(_411) + 8 << 248][pack[-uint8(_411) + 8 << 248].field_0].field_96 = address(_300)
                        mem[mem[64]] = address(_300)
                        mem[mem[64] + 32] = _200
                        mem[mem[64] + 64] = uint256(sub_7bde72dc)
                        emit TokenStaked(address(_300), _200, uint256(sub_7bde72dc));
                    mem[0] = _200
                    mem[32] = 3
                    sub_94edf9d4[_200] = address(_300)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    uint8(stor17.field_0) = 0
}

function sub_5b519142(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if uint8(stor17.field_0):
        revert with 0, 'No reentrancy'
    uint8(stor17.field_0) = 1
    if address(cd[4]) != msg.sender:
        if swapperAddress != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        if not uint8(stor0.field_160):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == swapperAddress:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _317 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_311] == bool(mem[_311])
                        mem[_317] = mem[_311]
                        require mem[_311 + 32] == mem[_311 + 63 len 1]
                        mem[_317 + 32] = mem[_311 + 32]
                        require mem[_311 + 64] == mem[_311 + 95 len 1]
                        mem[_317 + 64] = mem[_311 + 64]
                        require mem[_311 + 96] == mem[_311 + 127 len 1]
                        mem[_317 + 96] = mem[_311 + 96]
                        require mem[_311 + 128] == mem[_311 + 159 len 1]
                        mem[_317 + 128] = mem[_311 + 128]
                        require mem[_311 + 160] == mem[_311 + 191 len 1]
                        mem[_317 + 160] = mem[_311 + 160]
                        require mem[_311 + 192] == mem[_311 + 223 len 1]
                        mem[_317 + 192] = mem[_311 + 192]
                        require mem[_311 + 224] == mem[_311 + 255 len 1]
                        mem[_317 + 224] = mem[_311 + 224]
                        require mem[_311 + 256] == mem[_311 + 287 len 1]
                        mem[_317 + 256] = mem[_311 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_317]:
                            _449 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_449] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_449 + 32] = Mask(80, 0, block.timestamp)
                            mem[_449 + 64] = address(cd[4])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _515 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_503] == bool(mem[_503])
                            mem[_515] = mem[_503]
                            require mem[_503 + 32] == mem[_503 + 63 len 1]
                            mem[_515 + 32] = mem[_503 + 32]
                            require mem[_503 + 64] == mem[_503 + 95 len 1]
                            mem[_515 + 64] = mem[_503 + 64]
                            require mem[_503 + 96] == mem[_503 + 127 len 1]
                            mem[_515 + 96] = mem[_503 + 96]
                            require mem[_503 + 128] == mem[_503 + 159 len 1]
                            mem[_515 + 128] = mem[_503 + 128]
                            require mem[_503 + 160] == mem[_503 + 191 len 1]
                            mem[_515 + 160] = mem[_503 + 160]
                            require mem[_503 + 192] == mem[_503 + 223 len 1]
                            mem[_515 + 192] = mem[_503 + 192]
                            require mem[_503 + 224] == mem[_503 + 255 len 1]
                            mem[_515 + 224] = mem[_503 + 224]
                            require mem[_503 + 256] == mem[_503 + 287 len 1]
                            mem[_515 + 256] = mem[_503 + 256]
                            _677 = mem[_515 + 256]
                            if 8 < mem[_515 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_515 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_515 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_515 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                            mem[0] = uint8(-uint8(_677) + 8)
                            mem[32] = 5
                            _710 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_710] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_710 + 32] = Mask(80, 0, stor12)
                            mem[_710 + 64] = address(cd[4])
                            pack[-uint8(_677) + 8 << 248].field_0++
                            pack[-uint8(_677) + 8 << 248][pack[-uint8(_677) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[-uint8(_677) + 8 << 248][pack[-uint8(_677) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                            pack[-uint8(_677) + 8 << 248][pack[-uint8(_677) + 8 << 248].field_0].field_16 = 0
                            pack[-uint8(_677) + 8 << 248][pack[-uint8(_677) + 8 << 248].field_0].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_329] == mem[_329 + 12 len 20]
                        if mem[_329 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _437 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _443 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_437] == bool(mem[_437])
                        mem[_443] = mem[_437]
                        require mem[_437 + 32] == mem[_437 + 63 len 1]
                        mem[_443 + 32] = mem[_437 + 32]
                        require mem[_437 + 64] == mem[_437 + 95 len 1]
                        mem[_443 + 64] = mem[_437 + 64]
                        require mem[_437 + 96] == mem[_437 + 127 len 1]
                        mem[_443 + 96] = mem[_437 + 96]
                        require mem[_437 + 128] == mem[_437 + 159 len 1]
                        mem[_443 + 128] = mem[_437 + 128]
                        require mem[_437 + 160] == mem[_437 + 191 len 1]
                        mem[_443 + 160] = mem[_437 + 160]
                        require mem[_437 + 192] == mem[_437 + 223 len 1]
                        mem[_443 + 192] = mem[_437 + 192]
                        require mem[_437 + 224] == mem[_437 + 255 len 1]
                        mem[_443 + 224] = mem[_437 + 224]
                        require mem[_437 + 256] == mem[_437 + 287 len 1]
                        mem[_443 + 256] = mem[_437 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_443]:
                            _635 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_635] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_635 + 32] = Mask(80, 0, block.timestamp)
                            mem[_635 + 64] = address(cd[4])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _695 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_689] == bool(mem[_689])
                            mem[_695] = mem[_689]
                            require mem[_689 + 32] == mem[_689 + 63 len 1]
                            mem[_695 + 32] = mem[_689 + 32]
                            require mem[_689 + 64] == mem[_689 + 95 len 1]
                            mem[_695 + 64] = mem[_689 + 64]
                            require mem[_689 + 96] == mem[_689 + 127 len 1]
                            mem[_695 + 96] = mem[_689 + 96]
                            require mem[_689 + 128] == mem[_689 + 159 len 1]
                            mem[_695 + 128] = mem[_689 + 128]
                            require mem[_689 + 160] == mem[_689 + 191 len 1]
                            mem[_695 + 160] = mem[_689 + 160]
                            require mem[_689 + 192] == mem[_689 + 223 len 1]
                            mem[_695 + 192] = mem[_689 + 192]
                            require mem[_689 + 224] == mem[_689 + 255 len 1]
                            mem[_695 + 224] = mem[_689 + 224]
                            require mem[_689 + 256] == mem[_689 + 287 len 1]
                            mem[_695 + 256] = mem[_689 + 256]
                            _833 = mem[_695 + 256]
                            if 8 < mem[_695 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_695 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_695 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_695 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                            mem[0] = uint8(-uint8(_833) + 8)
                            mem[32] = 5
                            _842 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_842] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_842 + 32] = Mask(80, 0, stor12)
                            mem[_842 + 64] = address(cd[4])
                            pack[-uint8(_833) + 8 << 248].field_0++
                            pack[-uint8(_833) + 8 << 248][pack[-uint8(_833) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[-uint8(_833) + 8 << 248][pack[-uint8(_833) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                            pack[-uint8(_833) + 8 << 248][pack[-uint8(_833) + 8 << 248].field_0].field_16 = 0
                            pack[-uint8(_833) + 8 << 248][pack[-uint8(_833) + 8 << 248].field_0].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'Paused'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == swapperAddress:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _319 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_312] == bool(mem[_312])
                        mem[_319] = mem[_312]
                        require mem[_312 + 32] == mem[_312 + 63 len 1]
                        mem[_319 + 32] = mem[_312 + 32]
                        require mem[_312 + 64] == mem[_312 + 95 len 1]
                        mem[_319 + 64] = mem[_312 + 64]
                        require mem[_312 + 96] == mem[_312 + 127 len 1]
                        mem[_319 + 96] = mem[_312 + 96]
                        require mem[_312 + 128] == mem[_312 + 159 len 1]
                        mem[_319 + 128] = mem[_312 + 128]
                        require mem[_312 + 160] == mem[_312 + 191 len 1]
                        mem[_319 + 160] = mem[_312 + 160]
                        require mem[_312 + 192] == mem[_312 + 223 len 1]
                        mem[_319 + 192] = mem[_312 + 192]
                        require mem[_312 + 224] == mem[_312 + 255 len 1]
                        mem[_319 + 224] = mem[_312 + 224]
                        require mem[_312 + 256] == mem[_312 + 287 len 1]
                        mem[_319 + 256] = mem[_312 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_319]:
                            _455 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_455] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_455 + 32] = Mask(80, 0, block.timestamp)
                            mem[_455 + 64] = address(cd[4])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _516 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_505] == bool(mem[_505])
                            mem[_516] = mem[_505]
                            require mem[_505 + 32] == mem[_505 + 63 len 1]
                            mem[_516 + 32] = mem[_505 + 32]
                            require mem[_505 + 64] == mem[_505 + 95 len 1]
                            mem[_516 + 64] = mem[_505 + 64]
                            require mem[_505 + 96] == mem[_505 + 127 len 1]
                            mem[_516 + 96] = mem[_505 + 96]
                            require mem[_505 + 128] == mem[_505 + 159 len 1]
                            mem[_516 + 128] = mem[_505 + 128]
                            require mem[_505 + 160] == mem[_505 + 191 len 1]
                            mem[_516 + 160] = mem[_505 + 160]
                            require mem[_505 + 192] == mem[_505 + 223 len 1]
                            mem[_516 + 192] = mem[_505 + 192]
                            require mem[_505 + 224] == mem[_505 + 255 len 1]
                            mem[_516 + 224] = mem[_505 + 224]
                            require mem[_505 + 256] == mem[_505 + 287 len 1]
                            mem[_516 + 256] = mem[_505 + 256]
                            _679 = mem[_516 + 256]
                            if 8 < mem[_516 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_516 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_516 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_516 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                            mem[0] = uint8(-uint8(_679) + 8)
                            mem[32] = 5
                            _720 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_720] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_720 + 32] = Mask(80, 0, stor12)
                            mem[_720 + 64] = address(cd[4])
                            pack[-uint8(_679) + 8 << 248].field_0++
                            pack[-uint8(_679) + 8 << 248][pack[-uint8(_679) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[-uint8(_679) + 8 << 248][pack[-uint8(_679) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                            pack[-uint8(_679) + 8 << 248][pack[-uint8(_679) + 8 << 248].field_0].field_16 = 0
                            pack[-uint8(_679) + 8 << 248][pack[-uint8(_679) + 8 << 248].field_0].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_330] == mem[_330 + 12 len 20]
                        if mem[_330 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _444 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_438] == bool(mem[_438])
                        mem[_444] = mem[_438]
                        require mem[_438 + 32] == mem[_438 + 63 len 1]
                        mem[_444 + 32] = mem[_438 + 32]
                        require mem[_438 + 64] == mem[_438 + 95 len 1]
                        mem[_444 + 64] = mem[_438 + 64]
                        require mem[_438 + 96] == mem[_438 + 127 len 1]
                        mem[_444 + 96] = mem[_438 + 96]
                        require mem[_438 + 128] == mem[_438 + 159 len 1]
                        mem[_444 + 128] = mem[_438 + 128]
                        require mem[_438 + 160] == mem[_438 + 191 len 1]
                        mem[_444 + 160] = mem[_438 + 160]
                        require mem[_438 + 192] == mem[_438 + 223 len 1]
                        mem[_444 + 192] = mem[_438 + 192]
                        require mem[_438 + 224] == mem[_438 + 255 len 1]
                        mem[_444 + 224] = mem[_438 + 224]
                        require mem[_438 + 256] == mem[_438 + 287 len 1]
                        mem[_444 + 256] = mem[_438 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_444]:
                            _641 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_641] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_641 + 32] = Mask(80, 0, block.timestamp)
                            mem[_641 + 64] = address(cd[4])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _690 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _696 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_690] == bool(mem[_690])
                            mem[_696] = mem[_690]
                            require mem[_690 + 32] == mem[_690 + 63 len 1]
                            mem[_696 + 32] = mem[_690 + 32]
                            require mem[_690 + 64] == mem[_690 + 95 len 1]
                            mem[_696 + 64] = mem[_690 + 64]
                            require mem[_690 + 96] == mem[_690 + 127 len 1]
                            mem[_696 + 96] = mem[_690 + 96]
                            require mem[_690 + 128] == mem[_690 + 159 len 1]
                            mem[_696 + 128] = mem[_690 + 128]
                            require mem[_690 + 160] == mem[_690 + 191 len 1]
                            mem[_696 + 160] = mem[_690 + 160]
                            require mem[_690 + 192] == mem[_690 + 223 len 1]
                            mem[_696 + 192] = mem[_690 + 192]
                            require mem[_690 + 224] == mem[_690 + 255 len 1]
                            mem[_696 + 224] = mem[_690 + 224]
                            require mem[_690 + 256] == mem[_690 + 287 len 1]
                            mem[_696 + 256] = mem[_690 + 256]
                            _834 = mem[_696 + 256]
                            if 8 < mem[_696 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_696 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_696 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_696 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                            mem[0] = uint8(-uint8(_834) + 8)
                            mem[32] = 5
                            _851 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_851] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_851 + 32] = Mask(80, 0, stor12)
                            mem[_851 + 64] = address(cd[4])
                            pack[-uint8(_834) + 8 << 248].field_0++
                            pack[-uint8(_834) + 8 << 248][pack[-uint8(_834) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[-uint8(_834) + 8 << 248][pack[-uint8(_834) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                            pack[-uint8(_834) + 8 << 248][pack[-uint8(_834) + 8 << 248].field_0].field_16 = 0
                            pack[-uint8(_834) + 8 << 248][pack[-uint8(_834) + 8 << 248].field_0].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if address(cd[4]) == tx.origin:
            if not uint8(stor0.field_160):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _321 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_313] == bool(mem[_313])
                            mem[_321] = mem[_313]
                            require mem[_313 + 32] == mem[_313 + 63 len 1]
                            mem[_321 + 32] = mem[_313 + 32]
                            require mem[_313 + 64] == mem[_313 + 95 len 1]
                            mem[_321 + 64] = mem[_313 + 64]
                            require mem[_313 + 96] == mem[_313 + 127 len 1]
                            mem[_321 + 96] = mem[_313 + 96]
                            require mem[_313 + 128] == mem[_313 + 159 len 1]
                            mem[_321 + 128] = mem[_313 + 128]
                            require mem[_313 + 160] == mem[_313 + 191 len 1]
                            mem[_321 + 160] = mem[_313 + 160]
                            require mem[_313 + 192] == mem[_313 + 223 len 1]
                            mem[_321 + 192] = mem[_313 + 192]
                            require mem[_313 + 224] == mem[_313 + 255 len 1]
                            mem[_321 + 224] = mem[_313 + 224]
                            require mem[_313 + 256] == mem[_313 + 287 len 1]
                            mem[_321 + 256] = mem[_313 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_321]:
                                _461 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_461] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_461 + 32] = Mask(80, 0, block.timestamp)
                                mem[_461 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _507 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _517 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_507] == bool(mem[_507])
                                mem[_517] = mem[_507]
                                require mem[_507 + 32] == mem[_507 + 63 len 1]
                                mem[_517 + 32] = mem[_507 + 32]
                                require mem[_507 + 64] == mem[_507 + 95 len 1]
                                mem[_517 + 64] = mem[_507 + 64]
                                require mem[_507 + 96] == mem[_507 + 127 len 1]
                                mem[_517 + 96] = mem[_507 + 96]
                                require mem[_507 + 128] == mem[_507 + 159 len 1]
                                mem[_517 + 128] = mem[_507 + 128]
                                require mem[_507 + 160] == mem[_507 + 191 len 1]
                                mem[_517 + 160] = mem[_507 + 160]
                                require mem[_507 + 192] == mem[_507 + 223 len 1]
                                mem[_517 + 192] = mem[_507 + 192]
                                require mem[_507 + 224] == mem[_507 + 255 len 1]
                                mem[_517 + 224] = mem[_507 + 224]
                                require mem[_507 + 256] == mem[_507 + 287 len 1]
                                mem[_517 + 256] = mem[_507 + 256]
                                _681 = mem[_517 + 256]
                                if 8 < mem[_517 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_517 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_517 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_517 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_681) + 8)
                                mem[32] = 5
                                _730 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_730] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_730 + 32] = Mask(80, 0, stor12)
                                mem[_730 + 64] = address(cd[4])
                                pack[-uint8(_681) + 8 << 248].field_0++
                                pack[-uint8(_681) + 8 << 248][pack[-uint8(_681) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_681) + 8 << 248][pack[-uint8(_681) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_681) + 8 << 248][pack[-uint8(_681) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_681) + 8 << 248][pack[-uint8(_681) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.0x6352211e with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_331] == mem[_331 + 12 len 20]
                            if mem[_331 + 12 len 20] != msg.sender:
                                revert with 0, 'AINT YO TOKEN'
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _445 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_439] == bool(mem[_439])
                            mem[_445] = mem[_439]
                            require mem[_439 + 32] == mem[_439 + 63 len 1]
                            mem[_445 + 32] = mem[_439 + 32]
                            require mem[_439 + 64] == mem[_439 + 95 len 1]
                            mem[_445 + 64] = mem[_439 + 64]
                            require mem[_439 + 96] == mem[_439 + 127 len 1]
                            mem[_445 + 96] = mem[_439 + 96]
                            require mem[_439 + 128] == mem[_439 + 159 len 1]
                            mem[_445 + 128] = mem[_439 + 128]
                            require mem[_439 + 160] == mem[_439 + 191 len 1]
                            mem[_445 + 160] = mem[_439 + 160]
                            require mem[_439 + 192] == mem[_439 + 223 len 1]
                            mem[_445 + 192] = mem[_439 + 192]
                            require mem[_439 + 224] == mem[_439 + 255 len 1]
                            mem[_445 + 224] = mem[_439 + 224]
                            require mem[_439 + 256] == mem[_439 + 287 len 1]
                            mem[_445 + 256] = mem[_439 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_445]:
                                _647 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_647] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_647 + 32] = Mask(80, 0, block.timestamp)
                                mem[_647 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _691 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _697 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_691] == bool(mem[_691])
                                mem[_697] = mem[_691]
                                require mem[_691 + 32] == mem[_691 + 63 len 1]
                                mem[_697 + 32] = mem[_691 + 32]
                                require mem[_691 + 64] == mem[_691 + 95 len 1]
                                mem[_697 + 64] = mem[_691 + 64]
                                require mem[_691 + 96] == mem[_691 + 127 len 1]
                                mem[_697 + 96] = mem[_691 + 96]
                                require mem[_691 + 128] == mem[_691 + 159 len 1]
                                mem[_697 + 128] = mem[_691 + 128]
                                require mem[_691 + 160] == mem[_691 + 191 len 1]
                                mem[_697 + 160] = mem[_691 + 160]
                                require mem[_691 + 192] == mem[_691 + 223 len 1]
                                mem[_697 + 192] = mem[_691 + 192]
                                require mem[_691 + 224] == mem[_691 + 255 len 1]
                                mem[_697 + 224] = mem[_691 + 224]
                                require mem[_691 + 256] == mem[_691 + 287 len 1]
                                mem[_697 + 256] = mem[_691 + 256]
                                _835 = mem[_697 + 256]
                                if 8 < mem[_697 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_697 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_697 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_697 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_835) + 8)
                                mem[32] = 5
                                _860 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_860] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_860 + 32] = Mask(80, 0, stor12)
                                mem[_860 + 64] = address(cd[4])
                                pack[-uint8(_835) + 8 << 248].field_0++
                                pack[-uint8(_835) + 8 << 248][pack[-uint8(_835) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_835) + 8 << 248][pack[-uint8(_835) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_835) + 8 << 248][pack[-uint8(_835) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_835) + 8 << 248][pack[-uint8(_835) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Paused'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _323 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_314] == bool(mem[_314])
                            mem[_323] = mem[_314]
                            require mem[_314 + 32] == mem[_314 + 63 len 1]
                            mem[_323 + 32] = mem[_314 + 32]
                            require mem[_314 + 64] == mem[_314 + 95 len 1]
                            mem[_323 + 64] = mem[_314 + 64]
                            require mem[_314 + 96] == mem[_314 + 127 len 1]
                            mem[_323 + 96] = mem[_314 + 96]
                            require mem[_314 + 128] == mem[_314 + 159 len 1]
                            mem[_323 + 128] = mem[_314 + 128]
                            require mem[_314 + 160] == mem[_314 + 191 len 1]
                            mem[_323 + 160] = mem[_314 + 160]
                            require mem[_314 + 192] == mem[_314 + 223 len 1]
                            mem[_323 + 192] = mem[_314 + 192]
                            require mem[_314 + 224] == mem[_314 + 255 len 1]
                            mem[_323 + 224] = mem[_314 + 224]
                            require mem[_314 + 256] == mem[_314 + 287 len 1]
                            mem[_323 + 256] = mem[_314 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_323]:
                                _467 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_467] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_467 + 32] = Mask(80, 0, block.timestamp)
                                mem[_467 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _509 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _518 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_509] == bool(mem[_509])
                                mem[_518] = mem[_509]
                                require mem[_509 + 32] == mem[_509 + 63 len 1]
                                mem[_518 + 32] = mem[_509 + 32]
                                require mem[_509 + 64] == mem[_509 + 95 len 1]
                                mem[_518 + 64] = mem[_509 + 64]
                                require mem[_509 + 96] == mem[_509 + 127 len 1]
                                mem[_518 + 96] = mem[_509 + 96]
                                require mem[_509 + 128] == mem[_509 + 159 len 1]
                                mem[_518 + 128] = mem[_509 + 128]
                                require mem[_509 + 160] == mem[_509 + 191 len 1]
                                mem[_518 + 160] = mem[_509 + 160]
                                require mem[_509 + 192] == mem[_509 + 223 len 1]
                                mem[_518 + 192] = mem[_509 + 192]
                                require mem[_509 + 224] == mem[_509 + 255 len 1]
                                mem[_518 + 224] = mem[_509 + 224]
                                require mem[_509 + 256] == mem[_509 + 287 len 1]
                                mem[_518 + 256] = mem[_509 + 256]
                                _683 = mem[_518 + 256]
                                if 8 < mem[_518 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_518 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_518 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_518 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_683) + 8)
                                mem[32] = 5
                                _740 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_740] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_740 + 32] = Mask(80, 0, stor12)
                                mem[_740 + 64] = address(cd[4])
                                pack[-uint8(_683) + 8 << 248].field_0++
                                pack[-uint8(_683) + 8 << 248][pack[-uint8(_683) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_683) + 8 << 248][pack[-uint8(_683) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_683) + 8 << 248][pack[-uint8(_683) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_683) + 8 << 248][pack[-uint8(_683) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.0x6352211e with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_332] == mem[_332 + 12 len 20]
                            if mem[_332 + 12 len 20] != msg.sender:
                                revert with 0, 'AINT YO TOKEN'
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _446 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_440] == bool(mem[_440])
                            mem[_446] = mem[_440]
                            require mem[_440 + 32] == mem[_440 + 63 len 1]
                            mem[_446 + 32] = mem[_440 + 32]
                            require mem[_440 + 64] == mem[_440 + 95 len 1]
                            mem[_446 + 64] = mem[_440 + 64]
                            require mem[_440 + 96] == mem[_440 + 127 len 1]
                            mem[_446 + 96] = mem[_440 + 96]
                            require mem[_440 + 128] == mem[_440 + 159 len 1]
                            mem[_446 + 128] = mem[_440 + 128]
                            require mem[_440 + 160] == mem[_440 + 191 len 1]
                            mem[_446 + 160] = mem[_440 + 160]
                            require mem[_440 + 192] == mem[_440 + 223 len 1]
                            mem[_446 + 192] = mem[_440 + 192]
                            require mem[_440 + 224] == mem[_440 + 255 len 1]
                            mem[_446 + 224] = mem[_440 + 224]
                            require mem[_440 + 256] == mem[_440 + 287 len 1]
                            mem[_446 + 256] = mem[_440 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_446]:
                                _653 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_653] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_653 + 32] = Mask(80, 0, block.timestamp)
                                mem[_653 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _692 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _698 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_692] == bool(mem[_692])
                                mem[_698] = mem[_692]
                                require mem[_692 + 32] == mem[_692 + 63 len 1]
                                mem[_698 + 32] = mem[_692 + 32]
                                require mem[_692 + 64] == mem[_692 + 95 len 1]
                                mem[_698 + 64] = mem[_692 + 64]
                                require mem[_692 + 96] == mem[_692 + 127 len 1]
                                mem[_698 + 96] = mem[_692 + 96]
                                require mem[_692 + 128] == mem[_692 + 159 len 1]
                                mem[_698 + 128] = mem[_692 + 128]
                                require mem[_692 + 160] == mem[_692 + 191 len 1]
                                mem[_698 + 160] = mem[_692 + 160]
                                require mem[_692 + 192] == mem[_692 + 223 len 1]
                                mem[_698 + 192] = mem[_692 + 192]
                                require mem[_692 + 224] == mem[_692 + 255 len 1]
                                mem[_698 + 224] = mem[_692 + 224]
                                require mem[_692 + 256] == mem[_692 + 287 len 1]
                                mem[_698 + 256] = mem[_692 + 256]
                                _836 = mem[_698 + 256]
                                if 8 < mem[_698 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_698 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_698 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_698 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_836) + 8)
                                mem[32] = 5
                                _869 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_869] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_869 + 32] = Mask(80, 0, stor12)
                                mem[_869 + 64] = address(cd[4])
                                pack[-uint8(_836) + 8 << 248].field_0++
                                pack[-uint8(_836) + 8 << 248][pack[-uint8(_836) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_836) + 8 << 248][pack[-uint8(_836) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_836) + 8 << 248][pack[-uint8(_836) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_836) + 8 << 248][pack[-uint8(_836) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if swapperAddress != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            if not uint8(stor0.field_160):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _325 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_315] == bool(mem[_315])
                            mem[_325] = mem[_315]
                            require mem[_315 + 32] == mem[_315 + 63 len 1]
                            mem[_325 + 32] = mem[_315 + 32]
                            require mem[_315 + 64] == mem[_315 + 95 len 1]
                            mem[_325 + 64] = mem[_315 + 64]
                            require mem[_315 + 96] == mem[_315 + 127 len 1]
                            mem[_325 + 96] = mem[_315 + 96]
                            require mem[_315 + 128] == mem[_315 + 159 len 1]
                            mem[_325 + 128] = mem[_315 + 128]
                            require mem[_315 + 160] == mem[_315 + 191 len 1]
                            mem[_325 + 160] = mem[_315 + 160]
                            require mem[_315 + 192] == mem[_315 + 223 len 1]
                            mem[_325 + 192] = mem[_315 + 192]
                            require mem[_315 + 224] == mem[_315 + 255 len 1]
                            mem[_325 + 224] = mem[_315 + 224]
                            require mem[_315 + 256] == mem[_315 + 287 len 1]
                            mem[_325 + 256] = mem[_315 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_325]:
                                _473 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_473] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_473 + 32] = Mask(80, 0, block.timestamp)
                                mem[_473 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _519 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_511] == bool(mem[_511])
                                mem[_519] = mem[_511]
                                require mem[_511 + 32] == mem[_511 + 63 len 1]
                                mem[_519 + 32] = mem[_511 + 32]
                                require mem[_511 + 64] == mem[_511 + 95 len 1]
                                mem[_519 + 64] = mem[_511 + 64]
                                require mem[_511 + 96] == mem[_511 + 127 len 1]
                                mem[_519 + 96] = mem[_511 + 96]
                                require mem[_511 + 128] == mem[_511 + 159 len 1]
                                mem[_519 + 128] = mem[_511 + 128]
                                require mem[_511 + 160] == mem[_511 + 191 len 1]
                                mem[_519 + 160] = mem[_511 + 160]
                                require mem[_511 + 192] == mem[_511 + 223 len 1]
                                mem[_519 + 192] = mem[_511 + 192]
                                require mem[_511 + 224] == mem[_511 + 255 len 1]
                                mem[_519 + 224] = mem[_511 + 224]
                                require mem[_511 + 256] == mem[_511 + 287 len 1]
                                mem[_519 + 256] = mem[_511 + 256]
                                _685 = mem[_519 + 256]
                                if 8 < mem[_519 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_519 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_519 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_519 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_685) + 8)
                                mem[32] = 5
                                _750 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_750] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_750 + 32] = Mask(80, 0, stor12)
                                mem[_750 + 64] = address(cd[4])
                                pack[-uint8(_685) + 8 << 248].field_0++
                                pack[-uint8(_685) + 8 << 248][pack[-uint8(_685) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_685) + 8 << 248][pack[-uint8(_685) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_685) + 8 << 248][pack[-uint8(_685) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_685) + 8 << 248][pack[-uint8(_685) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.0x6352211e with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_333] == mem[_333 + 12 len 20]
                            if mem[_333 + 12 len 20] != msg.sender:
                                revert with 0, 'AINT YO TOKEN'
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _447 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_441] == bool(mem[_441])
                            mem[_447] = mem[_441]
                            require mem[_441 + 32] == mem[_441 + 63 len 1]
                            mem[_447 + 32] = mem[_441 + 32]
                            require mem[_441 + 64] == mem[_441 + 95 len 1]
                            mem[_447 + 64] = mem[_441 + 64]
                            require mem[_441 + 96] == mem[_441 + 127 len 1]
                            mem[_447 + 96] = mem[_441 + 96]
                            require mem[_441 + 128] == mem[_441 + 159 len 1]
                            mem[_447 + 128] = mem[_441 + 128]
                            require mem[_441 + 160] == mem[_441 + 191 len 1]
                            mem[_447 + 160] = mem[_441 + 160]
                            require mem[_441 + 192] == mem[_441 + 223 len 1]
                            mem[_447 + 192] = mem[_441 + 192]
                            require mem[_441 + 224] == mem[_441 + 255 len 1]
                            mem[_447 + 224] = mem[_441 + 224]
                            require mem[_441 + 256] == mem[_441 + 287 len 1]
                            mem[_447 + 256] = mem[_441 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_447]:
                                _659 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_659] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_659 + 32] = Mask(80, 0, block.timestamp)
                                mem[_659 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _693 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _699 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_693] == bool(mem[_693])
                                mem[_699] = mem[_693]
                                require mem[_693 + 32] == mem[_693 + 63 len 1]
                                mem[_699 + 32] = mem[_693 + 32]
                                require mem[_693 + 64] == mem[_693 + 95 len 1]
                                mem[_699 + 64] = mem[_693 + 64]
                                require mem[_693 + 96] == mem[_693 + 127 len 1]
                                mem[_699 + 96] = mem[_693 + 96]
                                require mem[_693 + 128] == mem[_693 + 159 len 1]
                                mem[_699 + 128] = mem[_693 + 128]
                                require mem[_693 + 160] == mem[_693 + 191 len 1]
                                mem[_699 + 160] = mem[_693 + 160]
                                require mem[_693 + 192] == mem[_693 + 223 len 1]
                                mem[_699 + 192] = mem[_693 + 192]
                                require mem[_693 + 224] == mem[_693 + 255 len 1]
                                mem[_699 + 224] = mem[_693 + 224]
                                require mem[_693 + 256] == mem[_693 + 287 len 1]
                                mem[_699 + 256] = mem[_693 + 256]
                                _837 = mem[_699 + 256]
                                if 8 < mem[_699 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_699 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_699 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_699 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_837) + 8)
                                mem[32] = 5
                                _878 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_878] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_878 + 32] = Mask(80, 0, stor12)
                                mem[_878 + 64] = address(cd[4])
                                pack[-uint8(_837) + 8 << 248].field_0++
                                pack[-uint8(_837) + 8 << 248][pack[-uint8(_837) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_837) + 8 << 248][pack[-uint8(_837) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_837) + 8 << 248][pack[-uint8(_837) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_837) + 8 << 248][pack[-uint8(_837) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Paused'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _327 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_316] == bool(mem[_316])
                            mem[_327] = mem[_316]
                            require mem[_316 + 32] == mem[_316 + 63 len 1]
                            mem[_327 + 32] = mem[_316 + 32]
                            require mem[_316 + 64] == mem[_316 + 95 len 1]
                            mem[_327 + 64] = mem[_316 + 64]
                            require mem[_316 + 96] == mem[_316 + 127 len 1]
                            mem[_327 + 96] = mem[_316 + 96]
                            require mem[_316 + 128] == mem[_316 + 159 len 1]
                            mem[_327 + 128] = mem[_316 + 128]
                            require mem[_316 + 160] == mem[_316 + 191 len 1]
                            mem[_327 + 160] = mem[_316 + 160]
                            require mem[_316 + 192] == mem[_316 + 223 len 1]
                            mem[_327 + 192] = mem[_316 + 192]
                            require mem[_316 + 224] == mem[_316 + 255 len 1]
                            mem[_327 + 224] = mem[_316 + 224]
                            require mem[_316 + 256] == mem[_316 + 287 len 1]
                            mem[_327 + 256] = mem[_316 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_327]:
                                _479 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_479] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_479 + 32] = Mask(80, 0, block.timestamp)
                                mem[_479 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _513 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _520 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_513] == bool(mem[_513])
                                mem[_520] = mem[_513]
                                require mem[_513 + 32] == mem[_513 + 63 len 1]
                                mem[_520 + 32] = mem[_513 + 32]
                                require mem[_513 + 64] == mem[_513 + 95 len 1]
                                mem[_520 + 64] = mem[_513 + 64]
                                require mem[_513 + 96] == mem[_513 + 127 len 1]
                                mem[_520 + 96] = mem[_513 + 96]
                                require mem[_513 + 128] == mem[_513 + 159 len 1]
                                mem[_520 + 128] = mem[_513 + 128]
                                require mem[_513 + 160] == mem[_513 + 191 len 1]
                                mem[_520 + 160] = mem[_513 + 160]
                                require mem[_513 + 192] == mem[_513 + 223 len 1]
                                mem[_520 + 192] = mem[_513 + 192]
                                require mem[_513 + 224] == mem[_513 + 255 len 1]
                                mem[_520 + 224] = mem[_513 + 224]
                                require mem[_513 + 256] == mem[_513 + 287 len 1]
                                mem[_520 + 256] = mem[_513 + 256]
                                _687 = mem[_520 + 256]
                                if 8 < mem[_520 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_520 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_520 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_520 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_687) + 8)
                                mem[32] = 5
                                _760 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_760] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_760 + 32] = Mask(80, 0, stor12)
                                mem[_760 + 64] = address(cd[4])
                                pack[-uint8(_687) + 8 << 248].field_0++
                                pack[-uint8(_687) + 8 << 248][pack[-uint8(_687) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_687) + 8 << 248][pack[-uint8(_687) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_687) + 8 << 248][pack[-uint8(_687) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_687) + 8 << 248][pack[-uint8(_687) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.0x6352211e with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_334] == mem[_334 + 12 len 20]
                            if mem[_334 + 12 len 20] != msg.sender:
                                revert with 0, 'AINT YO TOKEN'
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _448 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_442] == bool(mem[_442])
                            mem[_448] = mem[_442]
                            require mem[_442 + 32] == mem[_442 + 63 len 1]
                            mem[_448 + 32] = mem[_442 + 32]
                            require mem[_442 + 64] == mem[_442 + 95 len 1]
                            mem[_448 + 64] = mem[_442 + 64]
                            require mem[_442 + 96] == mem[_442 + 127 len 1]
                            mem[_448 + 96] = mem[_442 + 96]
                            require mem[_442 + 128] == mem[_442 + 159 len 1]
                            mem[_448 + 128] = mem[_442 + 128]
                            require mem[_442 + 160] == mem[_442 + 191 len 1]
                            mem[_448 + 160] = mem[_442 + 160]
                            require mem[_442 + 192] == mem[_442 + 223 len 1]
                            mem[_448 + 192] = mem[_442 + 192]
                            require mem[_442 + 224] == mem[_442 + 255 len 1]
                            mem[_448 + 224] = mem[_442 + 224]
                            require mem[_442 + 256] == mem[_442 + 287 len 1]
                            mem[_448 + 256] = mem[_442 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_448]:
                                _665 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_665] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_665 + 32] = Mask(80, 0, block.timestamp)
                                mem[_665 + 64] = address(cd[4])
                                mem[32] = 4
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _694 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _700 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_694] == bool(mem[_694])
                                mem[_700] = mem[_694]
                                require mem[_694 + 32] == mem[_694 + 63 len 1]
                                mem[_700 + 32] = mem[_694 + 32]
                                require mem[_694 + 64] == mem[_694 + 95 len 1]
                                mem[_700 + 64] = mem[_694 + 64]
                                require mem[_694 + 96] == mem[_694 + 127 len 1]
                                mem[_700 + 96] = mem[_694 + 96]
                                require mem[_694 + 128] == mem[_694 + 159 len 1]
                                mem[_700 + 128] = mem[_694 + 128]
                                require mem[_694 + 160] == mem[_694 + 191 len 1]
                                mem[_700 + 160] = mem[_694 + 160]
                                require mem[_694 + 192] == mem[_694 + 223 len 1]
                                mem[_700 + 192] = mem[_694 + 192]
                                require mem[_694 + 224] == mem[_694 + 255 len 1]
                                mem[_700 + 224] = mem[_694 + 224]
                                require mem[_694 + 256] == mem[_694 + 287 len 1]
                                mem[_700 + 256] = mem[_694 + 256]
                                _838 = mem[_700 + 256]
                                if 8 < mem[_700 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_700 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_700 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_700 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_838) + 8)
                                mem[32] = 5
                                _887 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_887] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_887 + 32] = Mask(80, 0, stor12)
                                mem[_887 + 64] = address(cd[4])
                                pack[-uint8(_838) + 8 << 248].field_0++
                                pack[-uint8(_838) + 8 << 248][pack[-uint8(_838) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                                pack[-uint8(_838) + 8 << 248][pack[-uint8(_838) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_838) + 8 << 248][pack[-uint8(_838) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_838) + 8 << 248][pack[-uint8(_838) + 8 << 248].field_0].field_96 = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    uint8(stor17.field_0) = 0
}

function sub_9b05e6b2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if uint8(stor17.field_0):
        revert with 0, 'No reentrancy'
    uint8(stor17.field_0) = 1
    if address(stor17.field_16) != msg.sender:
        revert with 0, 'Only Claim'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        _55 = mem[64]
        mem[64] = mem[64] + 288
        mem[_55] = 0
        mem[_55 + 32] = 0
        mem[_55 + 64] = 0
        mem[_55 + 96] = 0
        mem[_55 + 128] = 0
        mem[_55 + 160] = 0
        mem[_55 + 192] = 0
        mem[_55 + 224] = 0
        mem[_55 + 256] = 0
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _59 = mem[64]
        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 288
        require mem[_58] == bool(mem[_58])
        mem[_59] = mem[_58]
        require mem[_58 + 32] == mem[_58 + 63 len 1]
        mem[_59 + 32] = mem[_58 + 32]
        require mem[_58 + 64] == mem[_58 + 95 len 1]
        mem[_59 + 64] = mem[_58 + 64]
        require mem[_58 + 96] == mem[_58 + 127 len 1]
        mem[_59 + 96] = mem[_58 + 96]
        require mem[_58 + 128] == mem[_58 + 159 len 1]
        mem[_59 + 128] = mem[_58 + 128]
        require mem[_58 + 160] == mem[_58 + 191 len 1]
        mem[_59 + 160] = mem[_58 + 160]
        require mem[_58 + 192] == mem[_58 + 223 len 1]
        mem[_59 + 192] = mem[_58 + 192]
        require mem[_58 + 224] == mem[_58 + 255 len 1]
        mem[_59 + 224] = mem[_58 + 224]
        require mem[_58 + 256] == mem[_58 + 287 len 1]
        mem[_59 + 256] = mem[_58 + 256]
        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
        staticcall stor1.0x6352211e with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_71]
        require mem[_71] == mem[_71 + 12 len 20]
        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        if stor7[cd[((32 * idx) + cd[4] + 36)] << 240]:
            if address(_72) == sub_85c15c28Address:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _96 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _101 = mem[64]
                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 288
                    require mem[_96] == bool(mem[_96])
                    mem[_101] = mem[_96]
                    require mem[_96 + 32] == mem[_96 + 63 len 1]
                    mem[_101 + 32] = mem[_96 + 32]
                    require mem[_96 + 64] == mem[_96 + 95 len 1]
                    mem[_101 + 64] = mem[_96 + 64]
                    require mem[_96 + 96] == mem[_96 + 127 len 1]
                    mem[_101 + 96] = mem[_96 + 96]
                    require mem[_96 + 128] == mem[_96 + 159 len 1]
                    mem[_101 + 128] = mem[_96 + 128]
                    require mem[_96 + 160] == mem[_96 + 191 len 1]
                    mem[_101 + 160] = mem[_96 + 160]
                    require mem[_96 + 192] == mem[_96 + 223 len 1]
                    mem[_101 + 192] = mem[_96 + 192]
                    require mem[_96 + 224] == mem[_96 + 255 len 1]
                    mem[_101 + 224] = mem[_96 + 224]
                    require mem[_96 + 256] == mem[_96 + 287 len 1]
                    mem[_101 + 256] = mem[_96 + 256]
                    if mem[_101]:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 4
                        _272 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_272] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                        mem[_272 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                        mem[_272 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _333 = mem[_318]
                            require mem[_318] == mem[_318 + 31 len 1]
                            if multiplier and mem[_318 + 31 len 1] > -1 / multiplier:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-1 * multiplier * mem[_318 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_318 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _555 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_555] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_555 + 32] = Mask(80, 0, block.timestamp)
                                mem[_555 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_318 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_318 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _702 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_702] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_702 + 32] = Mask(80, 0, block.timestamp)
                                mem[_702 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_333) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_333) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_333) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_333) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_333) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_333) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            if address(stor17.field_16) != msg.sender:
                                revert with 0, 'SWIPER, NO SWIPING'
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _344 = mem[_334]
                            require mem[_334] == mem[_334 + 31 len 1]
                            if multiplier and mem[_334 + 31 len 1] > -1 / multiplier:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-1 * multiplier * mem[_334 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_334 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _596 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_596] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_596 + 32] = Mask(80, 0, block.timestamp)
                                mem[_596 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_334 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_334 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _746 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_746] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_746 + 32] = Mask(80, 0, block.timestamp)
                                mem[_746 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_344) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_344) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_344) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_344) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_344) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_344) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
            else:
                stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _98 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _102 = mem[64]
                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 288
                    require mem[_98] == bool(mem[_98])
                    mem[_102] = mem[_98]
                    require mem[_98 + 32] == mem[_98 + 63 len 1]
                    mem[_102 + 32] = mem[_98 + 32]
                    require mem[_98 + 64] == mem[_98 + 95 len 1]
                    mem[_102 + 64] = mem[_98 + 64]
                    require mem[_98 + 96] == mem[_98 + 127 len 1]
                    mem[_102 + 96] = mem[_98 + 96]
                    require mem[_98 + 128] == mem[_98 + 159 len 1]
                    mem[_102 + 128] = mem[_98 + 128]
                    require mem[_98 + 160] == mem[_98 + 191 len 1]
                    mem[_102 + 160] = mem[_98 + 160]
                    require mem[_98 + 192] == mem[_98 + 223 len 1]
                    mem[_102 + 192] = mem[_98 + 192]
                    require mem[_98 + 224] == mem[_98 + 255 len 1]
                    mem[_102 + 224] = mem[_98 + 224]
                    require mem[_98 + 256] == mem[_98 + 287 len 1]
                    mem[_102 + 256] = mem[_98 + 256]
                    if mem[_102]:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 4
                        _274 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_274] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                        mem[_274 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                        mem[_274 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _337 = mem[_326]
                            require mem[_326] == mem[_326 + 31 len 1]
                            if multiplier and mem[_326 + 31 len 1] > -1 / multiplier:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-1 * multiplier * mem[_326 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_326 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _570 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_570] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_570 + 32] = Mask(80, 0, block.timestamp)
                                mem[_570 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_326 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_326 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _722 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_722] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_722 + 32] = Mask(80, 0, block.timestamp)
                                mem[_722 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_337) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_337) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_337) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_337) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_337) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_337) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            if address(stor17.field_16) != msg.sender:
                                revert with 0, 'SWIPER, NO SWIPING'
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _347 = mem[_338]
                            require mem[_338] == mem[_338 + 31 len 1]
                            if multiplier and mem[_338 + 31 len 1] > -1 / multiplier:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-1 * multiplier * mem[_338 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_338 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _608 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_608] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_608 + 32] = Mask(80, 0, block.timestamp)
                                mem[_608 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_338 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_338 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _759 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_759] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_759 + 32] = Mask(80, 0, block.timestamp)
                                mem[_759 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_347) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_347) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_347) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_347) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_347) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_347) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
        else:
            if address(_72) != sub_85c15c28Address:
                stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _103 = mem[64]
                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 288
                    require mem[_100] == bool(mem[_100])
                    mem[_103] = mem[_100]
                    require mem[_100 + 32] == mem[_100 + 63 len 1]
                    mem[_103 + 32] = mem[_100 + 32]
                    require mem[_100 + 64] == mem[_100 + 95 len 1]
                    mem[_103 + 64] = mem[_100 + 64]
                    require mem[_100 + 96] == mem[_100 + 127 len 1]
                    mem[_103 + 96] = mem[_100 + 96]
                    require mem[_100 + 128] == mem[_100 + 159 len 1]
                    mem[_103 + 128] = mem[_100 + 128]
                    require mem[_100 + 160] == mem[_100 + 191 len 1]
                    mem[_103 + 160] = mem[_100 + 160]
                    require mem[_100 + 192] == mem[_100 + 223 len 1]
                    mem[_103 + 192] = mem[_100 + 192]
                    require mem[_100 + 224] == mem[_100 + 255 len 1]
                    mem[_103 + 224] = mem[_100 + 224]
                    require mem[_100 + 256] == mem[_100 + 287 len 1]
                    mem[_103 + 256] = mem[_100 + 256]
                    if mem[_103]:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 4
                        _279 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_279] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                        mem[_279 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                        mem[_279 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _342 = mem[_331]
                            require mem[_331] == mem[_331 + 31 len 1]
                            if multiplier and mem[_331 + 31 len 1] > -1 / multiplier:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-1 * multiplier * mem[_331 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_331 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _584 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_584] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_584 + 32] = Mask(80, 0, block.timestamp)
                                mem[_584 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_331 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_331 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _736 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_736] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_736 + 32] = Mask(80, 0, block.timestamp)
                                mem[_736 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_342) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_342) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_342) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_342) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_342) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_342) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            if address(stor17.field_16) != msg.sender:
                                revert with 0, 'SWIPER, NO SWIPING'
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _350 = mem[_343]
                            require mem[_343] == mem[_343 + 31 len 1]
                            if multiplier and mem[_343 + 31 len 1] > -1 / multiplier:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-1 * multiplier * mem[_343 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_343 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _620 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_620] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_620 + 32] = Mask(80, 0, block.timestamp)
                                mem[_620 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_343 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_343 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _768 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_768] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_768 + 32] = Mask(80, 0, block.timestamp)
                                mem[_768 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_350) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_350) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_350) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_350) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_350) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_350) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
            else:
                if mem[_59]:
                    staticcall sub_85c15c28Address.0x771f2476 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _85 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_85] == mem[_85 + 30 len 2]
                    _89 = mem[_85 + 32]
                    require mem[_85 + 32] == mem[_85 + 54 len 10]
                    _95 = mem[_85 + 64]
                    require mem[_85 + 64] == mem[_85 + 76 len 20]
                    if mem[_85 + 54 len 10] == 1644192600:
                        if mem[_59]:
                            _108 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_108] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_108 + 32] = Mask(80, 0, stor15)
                            mem[_108 + 64] = address(_95)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = Mask(80, 0, stor15)
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = 0
                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = address(_95)
                            emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(startTimestamp));
                            sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_85c15c28Address
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                            if address(_72) == sub_85c15c28Address:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _283 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 288
                                    _313 = mem[64]
                                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 288
                                    require mem[_283] == bool(mem[_283])
                                    mem[_313] = mem[_283]
                                    require mem[_283 + 32] == mem[_283 + 63 len 1]
                                    mem[_313 + 32] = mem[_283 + 32]
                                    require mem[_283 + 64] == mem[_283 + 95 len 1]
                                    mem[_313 + 64] = mem[_283 + 64]
                                    require mem[_283 + 96] == mem[_283 + 127 len 1]
                                    mem[_313 + 96] = mem[_283 + 96]
                                    require mem[_283 + 128] == mem[_283 + 159 len 1]
                                    mem[_313 + 128] = mem[_283 + 128]
                                    require mem[_283 + 160] == mem[_283 + 191 len 1]
                                    mem[_313 + 160] = mem[_283 + 160]
                                    require mem[_283 + 192] == mem[_283 + 223 len 1]
                                    mem[_313 + 192] = mem[_283 + 192]
                                    require mem[_283 + 224] == mem[_283 + 255 len 1]
                                    mem[_313 + 224] = mem[_283 + 224]
                                    require mem[_283 + 256] == mem[_283 + 287 len 1]
                                    mem[_313 + 256] = mem[_283 + 256]
                                    if mem[_313]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        _542 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_542] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                        mem[_542 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                        mem[_542 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _651 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _674 = mem[_651]
                                            require mem[_651] == mem[_651 + 31 len 1]
                                            if multiplier and mem[_651 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_651 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_651 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _930 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_930] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_930 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_930 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_651 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_651 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1097 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1097] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1097 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1097 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_674) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_674) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_674) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_674) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_674) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_674) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if address(stor17.field_16) != msg.sender:
                                                revert with 0, 'SWIPER, NO SWIPING'
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _675 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _709 = mem[_675]
                                            require mem[_675] == mem[_675 + 31 len 1]
                                            if multiplier and mem[_675 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_675 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_675 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _973 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_973] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_973 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_973 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_675 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_675 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1156 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1156] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1156 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1156 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_709) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_709) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_709) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_709) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_709) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_709) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                            else:
                                stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _290 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 288
                                    _315 = mem[64]
                                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 288
                                    require mem[_290] == bool(mem[_290])
                                    mem[_315] = mem[_290]
                                    require mem[_290 + 32] == mem[_290 + 63 len 1]
                                    mem[_315 + 32] = mem[_290 + 32]
                                    require mem[_290 + 64] == mem[_290 + 95 len 1]
                                    mem[_315 + 64] = mem[_290 + 64]
                                    require mem[_290 + 96] == mem[_290 + 127 len 1]
                                    mem[_315 + 96] = mem[_290 + 96]
                                    require mem[_290 + 128] == mem[_290 + 159 len 1]
                                    mem[_315 + 128] = mem[_290 + 128]
                                    require mem[_290 + 160] == mem[_290 + 191 len 1]
                                    mem[_315 + 160] = mem[_290 + 160]
                                    require mem[_290 + 192] == mem[_290 + 223 len 1]
                                    mem[_315 + 192] = mem[_290 + 192]
                                    require mem[_290 + 224] == mem[_290 + 255 len 1]
                                    mem[_315 + 224] = mem[_290 + 224]
                                    require mem[_290 + 256] == mem[_290 + 287 len 1]
                                    mem[_315 + 256] = mem[_290 + 256]
                                    if mem[_315]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        _544 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_544] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                        mem[_544 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                        mem[_544 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _659 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _683 = mem[_659]
                                            require mem[_659] == mem[_659 + 31 len 1]
                                            if multiplier and mem[_659 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_659 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_659 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _937 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_937] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_937 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_937 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_659 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_659 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1107 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1107] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1107 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1107 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_683) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_683) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_683) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_683) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_683) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_683) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if address(stor17.field_16) != msg.sender:
                                                revert with 0, 'SWIPER, NO SWIPING'
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _684 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _728 = mem[_684]
                                            require mem[_684] == mem[_684 + 31 len 1]
                                            if multiplier and mem[_684 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_684 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_684 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _997 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_997] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_997 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_997 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_684 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_684 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1188 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1188] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1188 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1188 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_728) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_728) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_728) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_728) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_728) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_728) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _143 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _152 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_143] == bool(mem[_143])
                            mem[_152] = mem[_143]
                            require mem[_143 + 32] == mem[_143 + 63 len 1]
                            mem[_152 + 32] = mem[_143 + 32]
                            require mem[_143 + 64] == mem[_143 + 95 len 1]
                            mem[_152 + 64] = mem[_143 + 64]
                            require mem[_143 + 96] == mem[_143 + 127 len 1]
                            mem[_152 + 96] = mem[_143 + 96]
                            require mem[_143 + 128] == mem[_143 + 159 len 1]
                            mem[_152 + 128] = mem[_143 + 128]
                            require mem[_143 + 160] == mem[_143 + 191 len 1]
                            mem[_152 + 160] = mem[_143 + 160]
                            require mem[_143 + 192] == mem[_143 + 223 len 1]
                            mem[_152 + 192] = mem[_143 + 192]
                            require mem[_143 + 224] == mem[_143 + 255 len 1]
                            mem[_152 + 224] = mem[_143 + 224]
                            require mem[_143 + 256] == mem[_143 + 287 len 1]
                            mem[_152 + 256] = mem[_143 + 256]
                            _312 = mem[_152 + 256]
                            if 8 < mem[_152 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_152 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_152 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_152 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = pack[mem[0]].field_0
                            mem[0] = uint8(-uint8(_312) + 8)
                            mem[32] = 5
                            _360 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_360] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[_360 + 32] = Mask(80, 0, stor12)
                            mem[_360 + 64] = address(_95)
                            pack[-uint8(_312) + 8 << 248].field_0++
                            pack[-uint8(_312) + 8 << 248][pack[-uint8(_312) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            pack[-uint8(_312) + 8 << 248][pack[-uint8(_312) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                            pack[-uint8(_312) + 8 << 248][pack[-uint8(_312) + 8 << 248].field_0].field_16 = 0
                            pack[-uint8(_312) + 8 << 248][pack[-uint8(_312) + 8 << 248].field_0].field_96 = address(_95)
                            emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_7bde72dc));
                            sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_85c15c28Address
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            require ext_code.size(stor1)
                            call stor1.0x23b872dd with:
                                 gas gas_remaining wei
                                args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                            if address(_72) == sub_85c15c28Address:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _632 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 288
                                    _681 = mem[64]
                                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 288
                                    require mem[_632] == bool(mem[_632])
                                    mem[_681] = mem[_632]
                                    require mem[_632 + 32] == mem[_632 + 63 len 1]
                                    mem[_681 + 32] = mem[_632 + 32]
                                    require mem[_632 + 64] == mem[_632 + 95 len 1]
                                    mem[_681 + 64] = mem[_632 + 64]
                                    require mem[_632 + 96] == mem[_632 + 127 len 1]
                                    mem[_681 + 96] = mem[_632 + 96]
                                    require mem[_632 + 128] == mem[_632 + 159 len 1]
                                    mem[_681 + 128] = mem[_632 + 128]
                                    require mem[_632 + 160] == mem[_632 + 191 len 1]
                                    mem[_681 + 160] = mem[_632 + 160]
                                    require mem[_632 + 192] == mem[_632 + 223 len 1]
                                    mem[_681 + 192] = mem[_632 + 192]
                                    require mem[_632 + 224] == mem[_632 + 255 len 1]
                                    mem[_681 + 224] = mem[_632 + 224]
                                    require mem[_632 + 256] == mem[_632 + 287 len 1]
                                    mem[_681 + 256] = mem[_632 + 256]
                                    if mem[_681]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        _972 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_972] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                        mem[_972 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                        mem[_972 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1095 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1153 = mem[_1095]
                                            require mem[_1095] == mem[_1095 + 31 len 1]
                                            if multiplier and mem[_1095 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_1095 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1095 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1410 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1410] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1410 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1410 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1095 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1095 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1522 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1522] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1522 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1522 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1153) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1153) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1153) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1153) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1153) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1153) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if address(stor17.field_16) != msg.sender:
                                                revert with 0, 'SWIPER, NO SWIPING'
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1154 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1241 = mem[_1154]
                                            require mem[_1154] == mem[_1154 + 31 len 1]
                                            if multiplier and mem[_1154 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_1154 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1154 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1449 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1449] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1449 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1449 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1154 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1154 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1564 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1564] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1564 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1564 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1241) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1241) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1241) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1241) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1241) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1241) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                            else:
                                stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _641 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 288
                                    _690 = mem[64]
                                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 288
                                    require mem[_641] == bool(mem[_641])
                                    mem[_690] = mem[_641]
                                    require mem[_641 + 32] == mem[_641 + 63 len 1]
                                    mem[_690 + 32] = mem[_641 + 32]
                                    require mem[_641 + 64] == mem[_641 + 95 len 1]
                                    mem[_690 + 64] = mem[_641 + 64]
                                    require mem[_641 + 96] == mem[_641 + 127 len 1]
                                    mem[_690 + 96] = mem[_641 + 96]
                                    require mem[_641 + 128] == mem[_641 + 159 len 1]
                                    mem[_690 + 128] = mem[_641 + 128]
                                    require mem[_641 + 160] == mem[_641 + 191 len 1]
                                    mem[_690 + 160] = mem[_641 + 160]
                                    require mem[_641 + 192] == mem[_641 + 223 len 1]
                                    mem[_690 + 192] = mem[_641 + 192]
                                    require mem[_641 + 224] == mem[_641 + 255 len 1]
                                    mem[_690 + 224] = mem[_641 + 224]
                                    require mem[_641 + 256] == mem[_641 + 287 len 1]
                                    mem[_690 + 256] = mem[_641 + 256]
                                    if mem[_690]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        _995 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_995] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                        mem[_995 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                        mem[_995 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1104 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1184 = mem[_1104]
                                            require mem[_1104] == mem[_1104 + 31 len 1]
                                            if multiplier and mem[_1104 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_1104 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1104 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1417 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1417] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1417 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1417 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1104 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1104 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1530 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1530] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1530 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1530 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1184) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1184) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1184) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1184) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1184) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1184) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if address(stor17.field_16) != msg.sender:
                                                revert with 0, 'SWIPER, NO SWIPING'
                                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1185 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1267 = mem[_1185]
                                            require mem[_1185] == mem[_1185 + 31 len 1]
                                            if multiplier and mem[_1185 + 31 len 1] > -1 / multiplier:
                                                revert with 'NH{q', 17
                                            if sub_000d07ce > (-1 * multiplier * mem[_1185 + 31 len 1]) - 1:
                                                revert with 'NH{q', 17
                                            if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1185 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                revert with 'NH{q', 17
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1471 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1471] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1471 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1471 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            else:
                                                if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    revert with 'NH{q', 18
                                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                unaccountedRewards = 0
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1185 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1185 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                _1590 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1590] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_1590 + 32] = Mask(80, 0, block.timestamp)
                                                mem[_1590 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                            sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1267) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1267) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            mem[mem[64] + 64] = 0
                                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1267) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1267) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1267) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1267) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                    else:
                        if mem[_85 + 54 len 10] == 1644228600:
                            if mem[_59]:
                                _117 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_117] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_117 + 32] = Mask(80, 0, stor15)
                                mem[_117 + 64] = address(_95)
                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = Mask(80, 0, stor15)
                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = 0
                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = address(_95)
                                emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(startTimestamp));
                                sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_85c15c28Address
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                if address(_72) == sub_85c15c28Address:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _291 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 288
                                        _317 = mem[64]
                                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + 288
                                        require mem[_291] == bool(mem[_291])
                                        mem[_317] = mem[_291]
                                        require mem[_291 + 32] == mem[_291 + 63 len 1]
                                        mem[_317 + 32] = mem[_291 + 32]
                                        require mem[_291 + 64] == mem[_291 + 95 len 1]
                                        mem[_317 + 64] = mem[_291 + 64]
                                        require mem[_291 + 96] == mem[_291 + 127 len 1]
                                        mem[_317 + 96] = mem[_291 + 96]
                                        require mem[_291 + 128] == mem[_291 + 159 len 1]
                                        mem[_317 + 128] = mem[_291 + 128]
                                        require mem[_291 + 160] == mem[_291 + 191 len 1]
                                        mem[_317 + 160] = mem[_291 + 160]
                                        require mem[_291 + 192] == mem[_291 + 223 len 1]
                                        mem[_317 + 192] = mem[_291 + 192]
                                        require mem[_291 + 224] == mem[_291 + 255 len 1]
                                        mem[_317 + 224] = mem[_291 + 224]
                                        require mem[_291 + 256] == mem[_291 + 287 len 1]
                                        mem[_317 + 256] = mem[_291 + 256]
                                        if mem[_317]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            _546 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_546] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                            mem[_546 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                            mem[_546 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _660 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _685 = mem[_660]
                                                require mem[_660] == mem[_660 + 31 len 1]
                                                if multiplier and mem[_660 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_660 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_660 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _943 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_943] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_943 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_943 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_660 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_660 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1115 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1115] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1115 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1115 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_685) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_685) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_685) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_685) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_685) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_685) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if address(stor17.field_16) != msg.sender:
                                                    revert with 0, 'SWIPER, NO SWIPING'
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _686 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _729 = mem[_686]
                                                require mem[_686] == mem[_686 + 31 len 1]
                                                if multiplier and mem[_686 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_686 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_686 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1005 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1005] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1005 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1005 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_686 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_686 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1197 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1197] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1197 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1197 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_729) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_729) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_729) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_729) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_729) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_729) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                else:
                                    stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _296 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 288
                                        _321 = mem[64]
                                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + 288
                                        require mem[_296] == bool(mem[_296])
                                        mem[_321] = mem[_296]
                                        require mem[_296 + 32] == mem[_296 + 63 len 1]
                                        mem[_321 + 32] = mem[_296 + 32]
                                        require mem[_296 + 64] == mem[_296 + 95 len 1]
                                        mem[_321 + 64] = mem[_296 + 64]
                                        require mem[_296 + 96] == mem[_296 + 127 len 1]
                                        mem[_321 + 96] = mem[_296 + 96]
                                        require mem[_296 + 128] == mem[_296 + 159 len 1]
                                        mem[_321 + 128] = mem[_296 + 128]
                                        require mem[_296 + 160] == mem[_296 + 191 len 1]
                                        mem[_321 + 160] = mem[_296 + 160]
                                        require mem[_296 + 192] == mem[_296 + 223 len 1]
                                        mem[_321 + 192] = mem[_296 + 192]
                                        require mem[_296 + 224] == mem[_296 + 255 len 1]
                                        mem[_321 + 224] = mem[_296 + 224]
                                        require mem[_296 + 256] == mem[_296 + 287 len 1]
                                        mem[_321 + 256] = mem[_296 + 256]
                                        if mem[_321]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            _550 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_550] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                            mem[_550 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                            mem[_550 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _668 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _694 = mem[_668]
                                                require mem[_668] == mem[_668 + 31 len 1]
                                                if multiplier and mem[_668 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_668 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_668 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _952 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_952] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_952 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_952 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_668 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_668 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1130 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1130] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1130 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1130 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_694) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_694) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_694) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_694) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_694) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_694) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if address(stor17.field_16) != msg.sender:
                                                    revert with 0, 'SWIPER, NO SWIPING'
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _695 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _743 = mem[_695]
                                                require mem[_695] == mem[_695 + 31 len 1]
                                                if multiplier and mem[_695 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_695 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_695 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1018 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1018] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1018 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1018 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_695 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_695 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1217 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1217] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1217 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1217 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_743) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_743) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_743) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_743) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_743) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_743) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _155 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_145] == bool(mem[_145])
                                mem[_155] = mem[_145]
                                require mem[_145 + 32] == mem[_145 + 63 len 1]
                                mem[_155 + 32] = mem[_145 + 32]
                                require mem[_145 + 64] == mem[_145 + 95 len 1]
                                mem[_155 + 64] = mem[_145 + 64]
                                require mem[_145 + 96] == mem[_145 + 127 len 1]
                                mem[_155 + 96] = mem[_145 + 96]
                                require mem[_145 + 128] == mem[_145 + 159 len 1]
                                mem[_155 + 128] = mem[_145 + 128]
                                require mem[_145 + 160] == mem[_145 + 191 len 1]
                                mem[_155 + 160] = mem[_145 + 160]
                                require mem[_145 + 192] == mem[_145 + 223 len 1]
                                mem[_155 + 192] = mem[_145 + 192]
                                require mem[_145 + 224] == mem[_145 + 255 len 1]
                                mem[_155 + 224] = mem[_145 + 224]
                                require mem[_145 + 256] == mem[_145 + 287 len 1]
                                mem[_155 + 256] = mem[_145 + 256]
                                _316 = mem[_155 + 256]
                                if 8 < mem[_155 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_155 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_155 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_155 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = pack[mem[0]].field_0
                                mem[0] = uint8(-uint8(_316) + 8)
                                mem[32] = 5
                                _372 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_372] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_372 + 32] = Mask(80, 0, stor12)
                                mem[_372 + 64] = address(_95)
                                pack[-uint8(_316) + 8 << 248].field_0++
                                pack[-uint8(_316) + 8 << 248][pack[-uint8(_316) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                pack[-uint8(_316) + 8 << 248][pack[-uint8(_316) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                pack[-uint8(_316) + 8 << 248][pack[-uint8(_316) + 8 << 248].field_0].field_16 = 0
                                pack[-uint8(_316) + 8 << 248][pack[-uint8(_316) + 8 << 248].field_0].field_96 = address(_95)
                                emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_7bde72dc));
                                sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = sub_85c15c28Address
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                if address(_72) == sub_85c15c28Address:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _643 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 288
                                        _692 = mem[64]
                                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + 288
                                        require mem[_643] == bool(mem[_643])
                                        mem[_692] = mem[_643]
                                        require mem[_643 + 32] == mem[_643 + 63 len 1]
                                        mem[_692 + 32] = mem[_643 + 32]
                                        require mem[_643 + 64] == mem[_643 + 95 len 1]
                                        mem[_692 + 64] = mem[_643 + 64]
                                        require mem[_643 + 96] == mem[_643 + 127 len 1]
                                        mem[_692 + 96] = mem[_643 + 96]
                                        require mem[_643 + 128] == mem[_643 + 159 len 1]
                                        mem[_692 + 128] = mem[_643 + 128]
                                        require mem[_643 + 160] == mem[_643 + 191 len 1]
                                        mem[_692 + 160] = mem[_643 + 160]
                                        require mem[_643 + 192] == mem[_643 + 223 len 1]
                                        mem[_692 + 192] = mem[_643 + 192]
                                        require mem[_643 + 224] == mem[_643 + 255 len 1]
                                        mem[_692 + 224] = mem[_643 + 224]
                                        require mem[_643 + 256] == mem[_643 + 287 len 1]
                                        mem[_692 + 256] = mem[_643 + 256]
                                        if mem[_692]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            _1004 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1004] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                            mem[_1004 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                            mem[_1004 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1113 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1194 = mem[_1113]
                                                require mem[_1113] == mem[_1113 + 31 len 1]
                                                if multiplier and mem[_1113 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_1113 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1113 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1423 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1423] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1423 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1423 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1113 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1113 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1536 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1536] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1536 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1536 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1194) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1194) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1194) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1194) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1194) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1194) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if address(stor17.field_16) != msg.sender:
                                                    revert with 0, 'SWIPER, NO SWIPING'
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1195 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1268 = mem[_1195]
                                                require mem[_1195] == mem[_1195 + 31 len 1]
                                                if multiplier and mem[_1195 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_1195 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1195 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1477 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1477] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1477 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1477 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1195 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1195 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1596 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1596] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1596 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1596 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1268) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1268) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1268) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1268) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1268) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1268) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                else:
                                    stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _653 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 288
                                        _710 = mem[64]
                                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + 288
                                        require mem[_653] == bool(mem[_653])
                                        mem[_710] = mem[_653]
                                        require mem[_653 + 32] == mem[_653 + 63 len 1]
                                        mem[_710 + 32] = mem[_653 + 32]
                                        require mem[_653 + 64] == mem[_653 + 95 len 1]
                                        mem[_710 + 64] = mem[_653 + 64]
                                        require mem[_653 + 96] == mem[_653 + 127 len 1]
                                        mem[_710 + 96] = mem[_653 + 96]
                                        require mem[_653 + 128] == mem[_653 + 159 len 1]
                                        mem[_710 + 128] = mem[_653 + 128]
                                        require mem[_653 + 160] == mem[_653 + 191 len 1]
                                        mem[_710 + 160] = mem[_653 + 160]
                                        require mem[_653 + 192] == mem[_653 + 223 len 1]
                                        mem[_710 + 192] = mem[_653 + 192]
                                        require mem[_653 + 224] == mem[_653 + 255 len 1]
                                        mem[_710 + 224] = mem[_653 + 224]
                                        require mem[_653 + 256] == mem[_653 + 287 len 1]
                                        mem[_710 + 256] = mem[_653 + 256]
                                        if mem[_710]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[32] = 4
                                            _1016 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1016] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                            mem[_1016 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                            mem[_1016 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                            if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1127 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1213 = mem[_1127]
                                                require mem[_1127] == mem[_1127 + 31 len 1]
                                                if multiplier and mem[_1127 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_1127 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1127 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1431 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1431] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1431 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1431 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1127 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1127 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1546 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1546] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1546 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1546 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1213) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1213) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1213) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1213) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1213) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1213) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if address(stor17.field_16) != msg.sender:
                                                    revert with 0, 'SWIPER, NO SWIPING'
                                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1214 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1275 = mem[_1214]
                                                require mem[_1214] == mem[_1214 + 31 len 1]
                                                if multiplier and mem[_1214 + 31 len 1] > -1 / multiplier:
                                                    revert with 'NH{q', 17
                                                if sub_000d07ce > (-1 * multiplier * mem[_1214 + 31 len 1]) - 1:
                                                    revert with 'NH{q', 17
                                                if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1214 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                    revert with 'NH{q', 17
                                                if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                    revert with 'NH{q', 17
                                                if not totalAlphaStaked:
                                                    if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1487 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1487] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1487 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1487 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                else:
                                                    if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        revert with 'NH{q', 18
                                                    if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                        revert with 'NH{q', 17
                                                    uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                    unaccountedRewards = 0
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1214 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1214 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    _1610 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1610] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_1610 + 32] = Mask(80, 0, block.timestamp)
                                                    mem[_1610 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1275) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1275) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                mem[mem[64] + 64] = 0
                                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1275) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1275) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1275) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1275) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                    revert with 'NH{q', 17
                        else:
                            if mem[_85 + 54 len 10] == 456742 * 3600:
                                if mem[_59]:
                                    _124 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_124] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_124 + 32] = Mask(80, 0, stor15)
                                    mem[_124 + 64] = address(_95)
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = Mask(80, 0, stor15)
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = 0
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = address(_95)
                                    emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(startTimestamp));
                                    sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_85c15c28Address
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                    if address(_72) == sub_85c15c28Address:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _297 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _323 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_297] == bool(mem[_297])
                                            mem[_323] = mem[_297]
                                            require mem[_297 + 32] == mem[_297 + 63 len 1]
                                            mem[_323 + 32] = mem[_297 + 32]
                                            require mem[_297 + 64] == mem[_297 + 95 len 1]
                                            mem[_323 + 64] = mem[_297 + 64]
                                            require mem[_297 + 96] == mem[_297 + 127 len 1]
                                            mem[_323 + 96] = mem[_297 + 96]
                                            require mem[_297 + 128] == mem[_297 + 159 len 1]
                                            mem[_323 + 128] = mem[_297 + 128]
                                            require mem[_297 + 160] == mem[_297 + 191 len 1]
                                            mem[_323 + 160] = mem[_297 + 160]
                                            require mem[_297 + 192] == mem[_297 + 223 len 1]
                                            mem[_323 + 192] = mem[_297 + 192]
                                            require mem[_297 + 224] == mem[_297 + 255 len 1]
                                            mem[_323 + 224] = mem[_297 + 224]
                                            require mem[_297 + 256] == mem[_297 + 287 len 1]
                                            mem[_323 + 256] = mem[_297 + 256]
                                            if mem[_323]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _552 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_552] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_552 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_552 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _669 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _696 = mem[_669]
                                                    require mem[_669] == mem[_669 + 31 len 1]
                                                    if multiplier and mem[_669 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_669 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_669 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _958 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_958] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_958 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_958 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_669 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_669 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1138 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1138] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1138 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1138 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_696) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_696) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_696) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_696) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_696) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_696) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _697 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _744 = mem[_697]
                                                    require mem[_697] == mem[_697 + 31 len 1]
                                                    if multiplier and mem[_697 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_697 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_697 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1026 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1026] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1026 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1026 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_697 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_697 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1226 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1226] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1226 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1226 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_744) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_744) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_744) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_744) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_744) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_744) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                    else:
                                        stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _302 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _328 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_302] == bool(mem[_302])
                                            mem[_328] = mem[_302]
                                            require mem[_302 + 32] == mem[_302 + 63 len 1]
                                            mem[_328 + 32] = mem[_302 + 32]
                                            require mem[_302 + 64] == mem[_302 + 95 len 1]
                                            mem[_328 + 64] = mem[_302 + 64]
                                            require mem[_302 + 96] == mem[_302 + 127 len 1]
                                            mem[_328 + 96] = mem[_302 + 96]
                                            require mem[_302 + 128] == mem[_302 + 159 len 1]
                                            mem[_328 + 128] = mem[_302 + 128]
                                            require mem[_302 + 160] == mem[_302 + 191 len 1]
                                            mem[_328 + 160] = mem[_302 + 160]
                                            require mem[_302 + 192] == mem[_302 + 223 len 1]
                                            mem[_328 + 192] = mem[_302 + 192]
                                            require mem[_302 + 224] == mem[_302 + 255 len 1]
                                            mem[_328 + 224] = mem[_302 + 224]
                                            require mem[_302 + 256] == mem[_302 + 287 len 1]
                                            mem[_328 + 256] = mem[_302 + 256]
                                            if mem[_328]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _566 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_566] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_566 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_566 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _678 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _714 = mem[_678]
                                                    require mem[_678] == mem[_678 + 31 len 1]
                                                    if multiplier and mem[_678 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_678 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_678 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _981 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_981] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_981 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_981 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_678 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_678 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1168 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1168] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1168 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1168 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_714) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_714) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_714) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_714) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_714) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_714) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _715 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _755 = mem[_715]
                                                    require mem[_715] == mem[_715 + 31 len 1]
                                                    if multiplier and mem[_715 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_715 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_715 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1046 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1046] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1046 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1046 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_715 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_715 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1250 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1250] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1250 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1250 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_755) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_755) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_755) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_755) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_755) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_755) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                else:
                                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _148 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 288
                                    _157 = mem[64]
                                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 288
                                    require mem[_148] == bool(mem[_148])
                                    mem[_157] = mem[_148]
                                    require mem[_148 + 32] == mem[_148 + 63 len 1]
                                    mem[_157 + 32] = mem[_148 + 32]
                                    require mem[_148 + 64] == mem[_148 + 95 len 1]
                                    mem[_157 + 64] = mem[_148 + 64]
                                    require mem[_148 + 96] == mem[_148 + 127 len 1]
                                    mem[_157 + 96] = mem[_148 + 96]
                                    require mem[_148 + 128] == mem[_148 + 159 len 1]
                                    mem[_157 + 128] = mem[_148 + 128]
                                    require mem[_148 + 160] == mem[_148 + 191 len 1]
                                    mem[_157 + 160] = mem[_148 + 160]
                                    require mem[_148 + 192] == mem[_148 + 223 len 1]
                                    mem[_157 + 192] = mem[_148 + 192]
                                    require mem[_148 + 224] == mem[_148 + 255 len 1]
                                    mem[_157 + 224] = mem[_148 + 224]
                                    require mem[_148 + 256] == mem[_148 + 287 len 1]
                                    mem[_157 + 256] = mem[_148 + 256]
                                    _322 = mem[_157 + 256]
                                    if 8 < mem[_157 + 287 len 1]:
                                        revert with 'NH{q', 17
                                    if totalAlphaStaked > -uint8(-mem[_157 + 287 len 1] + 8) - 1:
                                        revert with 'NH{q', 17
                                    totalAlphaStaked += uint8(-mem[_157 + 287 len 1] + 8)
                                    mem[0] = uint8(-mem[_157 + 287 len 1] + 8)
                                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = pack[mem[0]].field_0
                                    mem[0] = uint8(-uint8(_322) + 8)
                                    mem[32] = 5
                                    _384 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_384] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_384 + 32] = Mask(80, 0, stor12)
                                    mem[_384 + 64] = address(_95)
                                    pack[-uint8(_322) + 8 << 248].field_0++
                                    pack[-uint8(_322) + 8 << 248][pack[-uint8(_322) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    pack[-uint8(_322) + 8 << 248][pack[-uint8(_322) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                    pack[-uint8(_322) + 8 << 248][pack[-uint8(_322) + 8 << 248].field_0].field_16 = 0
                                    pack[-uint8(_322) + 8 << 248][pack[-uint8(_322) + 8 << 248].field_0].field_96 = address(_95)
                                    emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_7bde72dc));
                                    sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_85c15c28Address
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                    if address(_72) == sub_85c15c28Address:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _655 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _712 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_655] == bool(mem[_655])
                                            mem[_712] = mem[_655]
                                            require mem[_655 + 32] == mem[_655 + 63 len 1]
                                            mem[_712 + 32] = mem[_655 + 32]
                                            require mem[_655 + 64] == mem[_655 + 95 len 1]
                                            mem[_712 + 64] = mem[_655 + 64]
                                            require mem[_655 + 96] == mem[_655 + 127 len 1]
                                            mem[_712 + 96] = mem[_655 + 96]
                                            require mem[_655 + 128] == mem[_655 + 159 len 1]
                                            mem[_712 + 128] = mem[_655 + 128]
                                            require mem[_655 + 160] == mem[_655 + 191 len 1]
                                            mem[_712 + 160] = mem[_655 + 160]
                                            require mem[_655 + 192] == mem[_655 + 223 len 1]
                                            mem[_712 + 192] = mem[_655 + 192]
                                            require mem[_655 + 224] == mem[_655 + 255 len 1]
                                            mem[_712 + 224] = mem[_655 + 224]
                                            require mem[_655 + 256] == mem[_655 + 287 len 1]
                                            mem[_712 + 256] = mem[_655 + 256]
                                            if mem[_712]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _1025 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1025] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_1025 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_1025 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1136 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1223 = mem[_1136]
                                                    require mem[_1136] == mem[_1136 + 31 len 1]
                                                    if multiplier and mem[_1136 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1136 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1136 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1437 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1437] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1437 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1437 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1136 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1136 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1552 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1552] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1552 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1552 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1223) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1223) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1223) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1223) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1223) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1223) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1224 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1276 = mem[_1224]
                                                    require mem[_1224] == mem[_1224 + 31 len 1]
                                                    if multiplier and mem[_1224 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1224 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1224 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1493 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1493] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1493 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1493 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1224 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1224 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1616 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1616] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1616 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1616 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1276) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1276) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1276) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1276) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1276) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1276) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                    else:
                                        stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _662 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _730 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_662] == bool(mem[_662])
                                            mem[_730] = mem[_662]
                                            require mem[_662 + 32] == mem[_662 + 63 len 1]
                                            mem[_730 + 32] = mem[_662 + 32]
                                            require mem[_662 + 64] == mem[_662 + 95 len 1]
                                            mem[_730 + 64] = mem[_662 + 64]
                                            require mem[_662 + 96] == mem[_662 + 127 len 1]
                                            mem[_730 + 96] = mem[_662 + 96]
                                            require mem[_662 + 128] == mem[_662 + 159 len 1]
                                            mem[_730 + 128] = mem[_662 + 128]
                                            require mem[_662 + 160] == mem[_662 + 191 len 1]
                                            mem[_730 + 160] = mem[_662 + 160]
                                            require mem[_662 + 192] == mem[_662 + 223 len 1]
                                            mem[_730 + 192] = mem[_662 + 192]
                                            require mem[_662 + 224] == mem[_662 + 255 len 1]
                                            mem[_730 + 224] = mem[_662 + 224]
                                            require mem[_662 + 256] == mem[_662 + 287 len 1]
                                            mem[_730 + 256] = mem[_662 + 256]
                                            if mem[_730]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _1044 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1044] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_1044 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_1044 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1165 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1246 = mem[_1165]
                                                    require mem[_1165] == mem[_1165 + 31 len 1]
                                                    if multiplier and mem[_1165 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1165 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1165 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1457 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1457] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1457 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1457 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1165 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1165 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1574 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1574] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1574 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1574 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1246) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1246) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1246) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1246) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1246) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1246) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1247 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1279 = mem[_1247]
                                                    require mem[_1247] == mem[_1247 + 31 len 1]
                                                    if multiplier and mem[_1247 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1247 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1247 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1507 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1507] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1507 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1507 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1247 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1247 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1632 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1632] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1632 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1632 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1279) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1279) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1279) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1279) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1279) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1279) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                            else:
                                if mem[_59]:
                                    _130 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_130] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_130 + 32] = Mask(80, 0, _89)
                                    mem[_130 + 64] = address(_95)
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, _89)
                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = address(_95)
                                    emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, Mask(80, 0, _89));
                                    sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_85c15c28Address
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                    if address(_72) == sub_85c15c28Address:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _299 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _325 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_299] == bool(mem[_299])
                                            mem[_325] = mem[_299]
                                            require mem[_299 + 32] == mem[_299 + 63 len 1]
                                            mem[_325 + 32] = mem[_299 + 32]
                                            require mem[_299 + 64] == mem[_299 + 95 len 1]
                                            mem[_325 + 64] = mem[_299 + 64]
                                            require mem[_299 + 96] == mem[_299 + 127 len 1]
                                            mem[_325 + 96] = mem[_299 + 96]
                                            require mem[_299 + 128] == mem[_299 + 159 len 1]
                                            mem[_325 + 128] = mem[_299 + 128]
                                            require mem[_299 + 160] == mem[_299 + 191 len 1]
                                            mem[_325 + 160] = mem[_299 + 160]
                                            require mem[_299 + 192] == mem[_299 + 223 len 1]
                                            mem[_325 + 192] = mem[_299 + 192]
                                            require mem[_299 + 224] == mem[_299 + 255 len 1]
                                            mem[_325 + 224] = mem[_299 + 224]
                                            require mem[_299 + 256] == mem[_299 + 287 len 1]
                                            mem[_325 + 256] = mem[_299 + 256]
                                            if mem[_325]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _554 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_554] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_554 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_554 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _671 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _699 = mem[_671]
                                                    require mem[_671] == mem[_671 + 31 len 1]
                                                    if multiplier and mem[_671 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_671 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_671 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _964 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_964] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_964 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_964 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_671 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_671 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1146 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1146] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1146 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1146 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_699) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_699) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_699) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_699) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_699) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_699) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _700 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _745 = mem[_700]
                                                    require mem[_700] == mem[_700 + 31 len 1]
                                                    if multiplier and mem[_700 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_700 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_700 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1034 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1034] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1034 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1034 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_700 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_700 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1235 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1235] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1235 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1235 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_745) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_745) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_745) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_745) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_745) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_745) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                    else:
                                        stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _303 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _329 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_303] == bool(mem[_303])
                                            mem[_329] = mem[_303]
                                            require mem[_303 + 32] == mem[_303 + 63 len 1]
                                            mem[_329 + 32] = mem[_303 + 32]
                                            require mem[_303 + 64] == mem[_303 + 95 len 1]
                                            mem[_329 + 64] = mem[_303 + 64]
                                            require mem[_303 + 96] == mem[_303 + 127 len 1]
                                            mem[_329 + 96] = mem[_303 + 96]
                                            require mem[_303 + 128] == mem[_303 + 159 len 1]
                                            mem[_329 + 128] = mem[_303 + 128]
                                            require mem[_303 + 160] == mem[_303 + 191 len 1]
                                            mem[_329 + 160] = mem[_303 + 160]
                                            require mem[_303 + 192] == mem[_303 + 223 len 1]
                                            mem[_329 + 192] = mem[_303 + 192]
                                            require mem[_303 + 224] == mem[_303 + 255 len 1]
                                            mem[_329 + 224] = mem[_303 + 224]
                                            require mem[_303 + 256] == mem[_303 + 287 len 1]
                                            mem[_329 + 256] = mem[_303 + 256]
                                            if mem[_329]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _568 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_568] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_568 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_568 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _679 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _718 = mem[_679]
                                                    require mem[_679] == mem[_679 + 31 len 1]
                                                    if multiplier and mem[_679 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_679 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_679 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _988 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_988] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_988 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_988 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_679 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_679 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1177 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1177] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1177 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1177 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_718) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_718) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_718) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_718) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_718) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_718) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _719 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _756 = mem[_719]
                                                    require mem[_719] == mem[_719 + 31 len 1]
                                                    if multiplier and mem[_719 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_719 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_719 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1055 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1055] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1055 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1055 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_719 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_719 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1261 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1261] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1261 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1261 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_756) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_756) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_756) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_756) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_756) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_756) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                else:
                                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _149 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 288
                                    _158 = mem[64]
                                    if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 288
                                    require mem[_149] == bool(mem[_149])
                                    mem[_158] = mem[_149]
                                    require mem[_149 + 32] == mem[_149 + 63 len 1]
                                    mem[_158 + 32] = mem[_149 + 32]
                                    require mem[_149 + 64] == mem[_149 + 95 len 1]
                                    mem[_158 + 64] = mem[_149 + 64]
                                    require mem[_149 + 96] == mem[_149 + 127 len 1]
                                    mem[_158 + 96] = mem[_149 + 96]
                                    require mem[_149 + 128] == mem[_149 + 159 len 1]
                                    mem[_158 + 128] = mem[_149 + 128]
                                    require mem[_149 + 160] == mem[_149 + 191 len 1]
                                    mem[_158 + 160] = mem[_149 + 160]
                                    require mem[_149 + 192] == mem[_149 + 223 len 1]
                                    mem[_158 + 192] = mem[_149 + 192]
                                    require mem[_149 + 224] == mem[_149 + 255 len 1]
                                    mem[_158 + 224] = mem[_149 + 224]
                                    require mem[_149 + 256] == mem[_149 + 287 len 1]
                                    mem[_158 + 256] = mem[_149 + 256]
                                    _324 = mem[_158 + 256]
                                    if 8 < mem[_158 + 287 len 1]:
                                        revert with 'NH{q', 17
                                    if totalAlphaStaked > -uint8(-mem[_158 + 287 len 1] + 8) - 1:
                                        revert with 'NH{q', 17
                                    totalAlphaStaked += uint8(-mem[_158 + 287 len 1] + 8)
                                    mem[0] = uint8(-mem[_158 + 287 len 1] + 8)
                                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = pack[mem[0]].field_0
                                    mem[0] = uint8(-uint8(_324) + 8)
                                    mem[32] = 5
                                    _394 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_394] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_394 + 32] = Mask(80, 0, stor12)
                                    mem[_394 + 64] = address(_95)
                                    pack[-uint8(_324) + 8 << 248].field_0++
                                    pack[-uint8(_324) + 8 << 248][pack[-uint8(_324) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    pack[-uint8(_324) + 8 << 248][pack[-uint8(_324) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                                    pack[-uint8(_324) + 8 << 248][pack[-uint8(_324) + 8 << 248].field_0].field_16 = 0
                                    pack[-uint8(_324) + 8 << 248][pack[-uint8(_324) + 8 << 248].field_0].field_96 = address(_95)
                                    emit TokenStaked(address(_95), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_7bde72dc));
                                    sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_95)
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = sub_85c15c28Address
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                    if address(_72) == sub_85c15c28Address:
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _657 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _716 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_657] == bool(mem[_657])
                                            mem[_716] = mem[_657]
                                            require mem[_657 + 32] == mem[_657 + 63 len 1]
                                            mem[_716 + 32] = mem[_657 + 32]
                                            require mem[_657 + 64] == mem[_657 + 95 len 1]
                                            mem[_716 + 64] = mem[_657 + 64]
                                            require mem[_657 + 96] == mem[_657 + 127 len 1]
                                            mem[_716 + 96] = mem[_657 + 96]
                                            require mem[_657 + 128] == mem[_657 + 159 len 1]
                                            mem[_716 + 128] = mem[_657 + 128]
                                            require mem[_657 + 160] == mem[_657 + 191 len 1]
                                            mem[_716 + 160] = mem[_657 + 160]
                                            require mem[_657 + 192] == mem[_657 + 223 len 1]
                                            mem[_716 + 192] = mem[_657 + 192]
                                            require mem[_657 + 224] == mem[_657 + 255 len 1]
                                            mem[_716 + 224] = mem[_657 + 224]
                                            require mem[_657 + 256] == mem[_657 + 287 len 1]
                                            mem[_716 + 256] = mem[_657 + 256]
                                            if mem[_716]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _1033 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1033] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_1033 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_1033 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1144 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1232 = mem[_1144]
                                                    require mem[_1144] == mem[_1144 + 31 len 1]
                                                    if multiplier and mem[_1144 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1144 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1144 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1443 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1443] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1443 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1443 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1144 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1144 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1558 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1558] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1558 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1558 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1232) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1232) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1232) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1232) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1232) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1232) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1233 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1277 = mem[_1233]
                                                    require mem[_1233] == mem[_1233 + 31 len 1]
                                                    if multiplier and mem[_1233 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1233 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1233 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1499 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1499] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1499 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1499 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1233 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1233 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1622 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1622] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1622 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1622 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1277) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1277) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1277) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1277) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1277) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1277) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                    else:
                                        stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 3
                                        if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _664 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 288
                                            _732 = mem[64]
                                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + 288
                                            require mem[_664] == bool(mem[_664])
                                            mem[_732] = mem[_664]
                                            require mem[_664 + 32] == mem[_664 + 63 len 1]
                                            mem[_732 + 32] = mem[_664 + 32]
                                            require mem[_664 + 64] == mem[_664 + 95 len 1]
                                            mem[_732 + 64] = mem[_664 + 64]
                                            require mem[_664 + 96] == mem[_664 + 127 len 1]
                                            mem[_732 + 96] = mem[_664 + 96]
                                            require mem[_664 + 128] == mem[_664 + 159 len 1]
                                            mem[_732 + 128] = mem[_664 + 128]
                                            require mem[_664 + 160] == mem[_664 + 191 len 1]
                                            mem[_732 + 160] = mem[_664 + 160]
                                            require mem[_664 + 192] == mem[_664 + 223 len 1]
                                            mem[_732 + 192] = mem[_664 + 192]
                                            require mem[_664 + 224] == mem[_664 + 255 len 1]
                                            mem[_732 + 224] = mem[_664 + 224]
                                            require mem[_664 + 256] == mem[_664 + 287 len 1]
                                            mem[_732 + 256] = mem[_664 + 256]
                                            if mem[_732]:
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                mem[32] = 4
                                                _1053 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1053] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                                mem[_1053 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                                mem[_1053 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1174 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1257 = mem[_1174]
                                                    require mem[_1174] == mem[_1174 + 31 len 1]
                                                    if multiplier and mem[_1174 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1174 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1174 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1464 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1464] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1464 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1464 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1174 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1174 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1582 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1582] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1582 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1582 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1257) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1257) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1257) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1257) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1257) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1257) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if address(stor17.field_16) != msg.sender:
                                                        revert with 0, 'SWIPER, NO SWIPING'
                                                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1258 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _1280 = mem[_1258]
                                                    require mem[_1258] == mem[_1258 + 31 len 1]
                                                    if multiplier and mem[_1258 + 31 len 1] > -1 / multiplier:
                                                        revert with 'NH{q', 17
                                                    if sub_000d07ce > (-1 * multiplier * mem[_1258 + 31 len 1]) - 1:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1258 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                                        revert with 'NH{q', 17
                                                    if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                        revert with 'NH{q', 17
                                                    if not totalAlphaStaked:
                                                        if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1514 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1514] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1514 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1514 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    else:
                                                        if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                            revert with 'NH{q', 17
                                                        if not totalAlphaStaked:
                                                            revert with 'NH{q', 18
                                                        if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                            revert with 'NH{q', 17
                                                        uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                                        unaccountedRewards = 0
                                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1258 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1258 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                            revert with 'NH{q', 17
                                                        _1640 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1640] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                        mem[_1640 + 32] = Mask(80, 0, block.timestamp)
                                                        mem[_1640 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[32] = 4
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                                    sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                                    mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1280) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1280) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                                    mem[mem[64] + 64] = 0
                                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1280) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1280) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                                    if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1280) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1280) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                        revert with 'NH{q', 17
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_b1494df2Address.0x6f234fb5 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _84 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _86 = mem[_84]
                    require mem[_84] == mem[_84]
                    if 8 < mem[_59 + 287 len 1]:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = uint8(-mem[_59 + 287 len 1] + 8)
                    staticcall sub_b1494df2Address.0xdd55fcb3 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], _86
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _140 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 96
                    require mem[_115] == mem[_115 + 30 len 2]
                    mem[_140] = mem[_115]
                    require mem[_115 + 32] == mem[_115 + 54 len 10]
                    mem[_140 + 32] = mem[_115 + 32]
                    require mem[_115 + 64] == mem[_115 + 76 len 20]
                    mem[_140 + 64] = mem[_115 + 64]
                    _194 = mem[_140 + 64]
                    _195 = mem[_140 + 32]
                    if mem[_59]:
                        _198 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_198] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_198 + 32] = Mask(80, 0, _195)
                        mem[_198 + 64] = address(_194)
                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, _195)
                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = address(_194)
                        emit TokenStaked(address(_194), cd[((32 * idx) + cd[4] + 36)] << 240, Mask(80, 0, _195));
                        sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_194)
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_85c15c28Address
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                        if address(_72) == sub_85c15c28Address:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _440 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _455 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_440] == bool(mem[_440])
                                mem[_455] = mem[_440]
                                require mem[_440 + 32] == mem[_440 + 63 len 1]
                                mem[_455 + 32] = mem[_440 + 32]
                                require mem[_440 + 64] == mem[_440 + 95 len 1]
                                mem[_455 + 64] = mem[_440 + 64]
                                require mem[_440 + 96] == mem[_440 + 127 len 1]
                                mem[_455 + 96] = mem[_440 + 96]
                                require mem[_440 + 128] == mem[_440 + 159 len 1]
                                mem[_455 + 128] = mem[_440 + 128]
                                require mem[_440 + 160] == mem[_440 + 191 len 1]
                                mem[_455 + 160] = mem[_440 + 160]
                                require mem[_440 + 192] == mem[_440 + 223 len 1]
                                mem[_455 + 192] = mem[_440 + 192]
                                require mem[_440 + 224] == mem[_440 + 255 len 1]
                                mem[_455 + 224] = mem[_440 + 224]
                                require mem[_440 + 256] == mem[_440 + 287 len 1]
                                mem[_455 + 256] = mem[_440 + 256]
                                if mem[_455]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 4
                                    _827 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_827] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                    mem[_827 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                    mem[_827 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                    if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _856 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _865 = mem[_856]
                                        require mem[_856] == mem[_856 + 31 len 1]
                                        if multiplier and mem[_856 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_856 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_856 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1309 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1309] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1309 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1309 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_856 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_856 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1359 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1359] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1359 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1359 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_865) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_865) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_865) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_865) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_865) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_865) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if address(stor17.field_16) != msg.sender:
                                            revert with 0, 'SWIPER, NO SWIPING'
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _866 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _875 = mem[_866]
                                        require mem[_866] == mem[_866 + 31 len 1]
                                        if multiplier and mem[_866 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_866 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_866 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1332 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1332] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1332 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1332 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_866 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_866 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1380 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1380] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1380 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1380 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_875) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_875) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_875) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_875) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_875) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_875) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                        else:
                            stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _444 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _456 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_444] == bool(mem[_444])
                                mem[_456] = mem[_444]
                                require mem[_444 + 32] == mem[_444 + 63 len 1]
                                mem[_456 + 32] = mem[_444 + 32]
                                require mem[_444 + 64] == mem[_444 + 95 len 1]
                                mem[_456 + 64] = mem[_444 + 64]
                                require mem[_444 + 96] == mem[_444 + 127 len 1]
                                mem[_456 + 96] = mem[_444 + 96]
                                require mem[_444 + 128] == mem[_444 + 159 len 1]
                                mem[_456 + 128] = mem[_444 + 128]
                                require mem[_444 + 160] == mem[_444 + 191 len 1]
                                mem[_456 + 160] = mem[_444 + 160]
                                require mem[_444 + 192] == mem[_444 + 223 len 1]
                                mem[_456 + 192] = mem[_444 + 192]
                                require mem[_444 + 224] == mem[_444 + 255 len 1]
                                mem[_456 + 224] = mem[_444 + 224]
                                require mem[_444 + 256] == mem[_444 + 287 len 1]
                                mem[_456 + 256] = mem[_444 + 256]
                                if mem[_456]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 4
                                    _829 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_829] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                    mem[_829 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                    mem[_829 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                    if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _861 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _870 = mem[_861]
                                        require mem[_861] == mem[_861 + 31 len 1]
                                        if multiplier and mem[_861 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_861 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_861 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1318 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1318] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1318 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1318 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_861 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_861 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1368 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1368] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1368 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1368 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_870) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_870) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_870) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_870) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_870) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_870) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if address(stor17.field_16) != msg.sender:
                                            revert with 0, 'SWIPER, NO SWIPING'
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _871 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _878 = mem[_871]
                                        require mem[_871] == mem[_871 + 31 len 1]
                                        if multiplier and mem[_871 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_871 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_871 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1341 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1341] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1341 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1341 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_871 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_871 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1391 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1391] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1391 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1391 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_878) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_878) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_878) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_878) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_878) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_878) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                    else:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _224 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _233 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_224] == bool(mem[_224])
                        mem[_233] = mem[_224]
                        require mem[_224 + 32] == mem[_224 + 63 len 1]
                        mem[_233 + 32] = mem[_224 + 32]
                        require mem[_224 + 64] == mem[_224 + 95 len 1]
                        mem[_233 + 64] = mem[_224 + 64]
                        require mem[_224 + 96] == mem[_224 + 127 len 1]
                        mem[_233 + 96] = mem[_224 + 96]
                        require mem[_224 + 128] == mem[_224 + 159 len 1]
                        mem[_233 + 128] = mem[_224 + 128]
                        require mem[_224 + 160] == mem[_224 + 191 len 1]
                        mem[_233 + 160] = mem[_224 + 160]
                        require mem[_224 + 192] == mem[_224 + 223 len 1]
                        mem[_233 + 192] = mem[_224 + 192]
                        require mem[_224 + 224] == mem[_224 + 255 len 1]
                        mem[_233 + 224] = mem[_224 + 224]
                        require mem[_224 + 256] == mem[_224 + 287 len 1]
                        mem[_233 + 256] = mem[_224 + 256]
                        _454 = mem[_233 + 256]
                        if 8 < mem[_233 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_233 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_233 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_233 + 287 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = pack[mem[0]].field_0
                        mem[0] = uint8(-uint8(_454) + 8)
                        mem[32] = 5
                        _478 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_478] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_478 + 32] = Mask(80, 0, stor12)
                        mem[_478 + 64] = address(_194)
                        pack[-uint8(_454) + 8 << 248].field_0++
                        pack[-uint8(_454) + 8 << 248][pack[-uint8(_454) + 8 << 248].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        pack[-uint8(_454) + 8 << 248][pack[-uint8(_454) + 8 << 248].field_0].field_0 = Mask(80, 0, stor12)
                        pack[-uint8(_454) + 8 << 248][pack[-uint8(_454) + 8 << 248].field_0].field_16 = 0
                        pack[-uint8(_454) + 8 << 248][pack[-uint8(_454) + 8 << 248].field_0].field_96 = address(_194)
                        emit TokenStaked(address(_194), cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_7bde72dc));
                        sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240] = address(_194)
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_85c15c28Address
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_85c15c28Address, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                        if address(_72) == sub_85c15c28Address:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _849 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _868 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_849] == bool(mem[_849])
                                mem[_868] = mem[_849]
                                require mem[_849 + 32] == mem[_849 + 63 len 1]
                                mem[_868 + 32] = mem[_849 + 32]
                                require mem[_849 + 64] == mem[_849 + 95 len 1]
                                mem[_868 + 64] = mem[_849 + 64]
                                require mem[_849 + 96] == mem[_849 + 127 len 1]
                                mem[_868 + 96] = mem[_849 + 96]
                                require mem[_849 + 128] == mem[_849 + 159 len 1]
                                mem[_868 + 128] = mem[_849 + 128]
                                require mem[_849 + 160] == mem[_849 + 191 len 1]
                                mem[_868 + 160] = mem[_849 + 160]
                                require mem[_849 + 192] == mem[_849 + 223 len 1]
                                mem[_868 + 192] = mem[_849 + 192]
                                require mem[_849 + 224] == mem[_849 + 255 len 1]
                                mem[_868 + 224] = mem[_849 + 224]
                                require mem[_849 + 256] == mem[_849 + 287 len 1]
                                mem[_868 + 256] = mem[_849 + 256]
                                if mem[_868]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 4
                                    _1331 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1331] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                    mem[_1331 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                    mem[_1331 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                    if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1357 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1377 = mem[_1357]
                                        require mem[_1357] == mem[_1357 + 31 len 1]
                                        if multiplier and mem[_1357 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_1357 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1357 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1666 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1666] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1666 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1666 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1357 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1357 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1694 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1694] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1694 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1694 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1377) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1377) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1377) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1377) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1377) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1377) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if address(stor17.field_16) != msg.sender:
                                            revert with 0, 'SWIPER, NO SWIPING'
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1378 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1400 = mem[_1378]
                                        require mem[_1378] == mem[_1378 + 31 len 1]
                                        if multiplier and mem[_1378 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_1378 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1378 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1680 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1680] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1680 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1680 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1378 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1378 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1710 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1710] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1710 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1710 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1400) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1400) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1400) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1400) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1400) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1400) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                        else:
                            stor7[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _872 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_852] == bool(mem[_852])
                                mem[_872] = mem[_852]
                                require mem[_852 + 32] == mem[_852 + 63 len 1]
                                mem[_872 + 32] = mem[_852 + 32]
                                require mem[_852 + 64] == mem[_852 + 95 len 1]
                                mem[_872 + 64] = mem[_852 + 64]
                                require mem[_852 + 96] == mem[_852 + 127 len 1]
                                mem[_872 + 96] = mem[_852 + 96]
                                require mem[_852 + 128] == mem[_852 + 159 len 1]
                                mem[_872 + 128] = mem[_852 + 128]
                                require mem[_852 + 160] == mem[_852 + 191 len 1]
                                mem[_872 + 160] = mem[_852 + 160]
                                require mem[_852 + 192] == mem[_852 + 223 len 1]
                                mem[_872 + 192] = mem[_852 + 192]
                                require mem[_852 + 224] == mem[_852 + 255 len 1]
                                mem[_872 + 224] = mem[_852 + 224]
                                require mem[_852 + 256] == mem[_852 + 287 len 1]
                                mem[_872 + 256] = mem[_852 + 256]
                                if mem[_872]:
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 4
                                    _1339 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1339] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                                    mem[_1339 + 32] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                                    mem[_1339 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                    if sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 == msg.sender:
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1365 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1387 = mem[_1365]
                                        require mem[_1365] == mem[_1365 + 31 len 1]
                                        if multiplier and mem[_1365 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_1365 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1365 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1673 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1673] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1673 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1673 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1365 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1365 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1702 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1702] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1702 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1702 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1387) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1387) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1387) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1387) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1387) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1387) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if address(stor17.field_16) != msg.sender:
                                            revert with 0, 'SWIPER, NO SWIPING'
                                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        staticcall address(stor17.field_16).levelOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1388 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1401 = mem[_1388]
                                        require mem[_1388] == mem[_1388 + 31 len 1]
                                        if multiplier and mem[_1388 + 31 len 1] > -1 / multiplier:
                                            revert with 'NH{q', 17
                                        if sub_000d07ce > (-1 * multiplier * mem[_1388 + 31 len 1]) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp < sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_000d07ce + (multiplier * mem[_1388 + 31 len 1]) > -1 / block.timestamp - sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                            revert with 'NH{q', 17
                                        if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                                revert with 'NH{q', 17
                                            unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1687 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1687] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1687 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1687 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        else:
                                            if 20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                                revert with 'NH{q', 17
                                            if not totalAlphaStaked:
                                                revert with 'NH{q', 18
                                            if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                                revert with 'NH{q', 17
                                            uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                            unaccountedRewards = 0
                                            if (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (multiplier * mem[_1388 + 31 len 1] * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * mem[_1388 + 31 len 1] * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600:
                                                revert with 'NH{q', 17
                                            _1718 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1718] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_1718 + 32] = Mask(80, 0, block.timestamp)
                                            mem[_1718 + 64] = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[32] = 4
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                        sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                                        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1401) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1401) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100
                                        mem[mem[64] + 64] = 0
                                        emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1401) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1401) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100, 0
                                        if 0 > -(80 * (sub_000d07ce * block.timestamp) + (multiplier * uint8(_1401) * block.timestamp) - (sub_000d07ce * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) - (multiplier * uint8(_1401) * sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) / 24 * 3600 / 100) - 1:
                                            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    uint8(stor17.field_0) = 0
}



}

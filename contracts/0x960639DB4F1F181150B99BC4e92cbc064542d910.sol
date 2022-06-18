contract main {




// =====================  Runtime code  =====================


#
#  - sub_9b05e6b2(?)
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
uint8 stor17; offset 8
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
    return bool(uint8(stor17.field_8))
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
    uint256(sub_7bde72dc) = arg1
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



}
